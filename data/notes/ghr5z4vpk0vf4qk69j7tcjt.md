
# Handle XML

## Build XML Trees

```py
import xml.etree.ElementTree as xml

root = xml.Element('rss', version='2.0')
channel = xml.Element('channel')
root.append(channel)

xml_string = xml.tostring(root)
```
