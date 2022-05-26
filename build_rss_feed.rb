require 'fileutils'
require 'rss'
require 'yaml'

def main
  vault_folder = parse_argv

  publishing_config = read_publishing_config

  FileUtils.cd vault_folder do
    commits = last_commits.reject(&:excluded_from_feed?).take(10)

    puts FeedBuilder.new(commits, publishing_config).build
  end
end

def parse_argv
  if ARGV.empty?
    puts 'Usage: build_rss_feed.rb <vault_folder>'
    exit 1
  end

  ARGV.first
end

def last_commits(n: 20)
  format = '%H %ct %s'
  `git log --pretty=format:"#{format}" -n #{n}`.lines.map(&:chomp).map { |line|
    hash, commit_timestamp, message = line.split(' ', 3)
    Commit.new(hash, Time.at(commit_timestamp.to_i), message)
  }
end

class Commit
  attr_reader :hash, :timestamp

  def initialize(hash, timestamp, message)
    @hash = hash
    @timestamp = timestamp
    @message = message
  end

  def excluded_from_feed?
    %w[refactor: chore:].any? { |prefix| @message.start_with?(prefix) }
  end

  def changed_files
    @changed_files ||= `git show --name-status --pretty=format:"" #{@hash}`.lines.map(&:chomp).map { |line|
      status, file = line.split(' ', 2)
      ChangedFile.new(self, file, status)
    }
  end

  class ChangedFile
    attr_reader :filename

    def initialize(commit, filename, status)
      @commit = commit
      @filename = filename
      @status = status
    end

    def file_content
      @file_content ||= `git show #{@commit.hash}:#{@filename}`
    end

    def added?
      @status == 'A'
    end

    def deleted?
      @status == 'D'
    end

    def modified?
      @status == 'M'
    end

    def renamed?
      @status.include? 'R'
    end

    def to_s
      "#{@status} #{@filename}"
    end
  end
end

def read_publishing_config
  YAML.load_file('dendron.yml')['publishing']
end

class FeedBuilder
  def initialize(commits, publishing_config)
    @commits = commits
    @publishing_config = publishing_config
  end

  def build
    RSS::Maker.make('atom') do |maker|
      site_url = @publishing_config['siteUrl'] + @publishing_config['assetsPrefix']
      feed_url = "#{site_url}/feed.xml"
      seo_config = @publishing_config['seo']
      maker.channel.id = "#{site_url}/feed.xml"
      maker.channel.author = seo_config['author']
      maker.channel.title = seo_config['title']
      maker.channel.subtitle = seo_config['description'] if seo_config.key? 'description'
      maker.channel.updated = @commits.first.timestamp
      maker.channel.links.new_link do |link|
        link.rel = 'alternate'
        link.href = site_url
      end
      maker.channel.links.new_link do |link|
        link.rel = 'self'
        link.href = maker.channel.id
      end

      @commits.each do |commit|
        commit.changed_files.each do |changed_file|
          next unless changed_file.filename.end_with? '.md'
          next if changed_file.deleted? || changed_file.renamed?

          maker.items.new_item do |item|
            _, frontmatter = changed_file.file_content.split("---\n", 3)
            parsed_frontmatter = YAML.safe_load(frontmatter)

            item.id = "#{commit.hash}:#{changed_file.filename}"
            item.title = parsed_frontmatter['title']
            item.updated = commit.timestamp
            item.link = if changed_file.filename == 'root.md'
                          site_url
                        else
                          "#{site_url}/notes/#{parsed_frontmatter['id']}"
                        end
          end
        end
      end
    end
  end
end

main if __FILE__ == $PROGRAM_NAME
