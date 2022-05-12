---
id: ghr5z4vpk0vf4qk69j7tcjt
title: Handle XML
desc: ''
updated: 1652351301887
created: 1652351150017
---

# Handle XML

## Build XML Trees

```py
import xml.etree.ElementTree as xml

root = xml.Element('rss', version='2.0')
channel = xml.Element('channel')
root.append(channel)

xml_string = xml.tostring(root)
```
