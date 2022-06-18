---
id: cqqlyla4z11hpc96l0m2hxt
title: Codeguru Profiler
desc: ''
updated: 1655472082142
created: 1655455040183
---

# Codeguru Profiler

## How to use:
1. Install `pip` package `codeguru_profiler_agent`
2. Create a profiling group
3. (TODO)

## Required Permissions

- IAM Actions:
  - `codeguru-profiler:ConfigureAgent`
  - `codeguru-profiler:CreateProfilingGroup`
  - `codeguru-profiler:PostAgentProfile`
- Resources:
  - `arn:aws:codeguru-profiler:*:*:profilingGroup/*`

See [AmazonCodeGuruProfilerAgentAccess policy](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonCodeGuruProfilerAgentAccess)
