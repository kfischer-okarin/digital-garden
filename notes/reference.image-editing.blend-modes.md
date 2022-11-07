---
id: nffi2bf0kne7owy4qo3xloe
title: Blend Modes
desc: ''
updated: 1667563616343
created: 1667563616343
---
# Blend Modes

Source: [Blending Modes - By Dan Hollick](https://typefully.com/DanHollick/KrBa0JP)

## Darkening and Lightening
- Darken / Lighten:
  - Chooses each RGB component's lowest/highest value to create a new color
- Multiply / Screen:
  - Normalize RGB components to 0-1
  - Multiplies values together - which will produce a darker color.
  - Screen inverts the resulting color
- Color Burn / Color Dodge:
  - Normalize RGB components to 0-1
  - Invert the bg color
  - Divide by the fg color
  - Invert the result
  - Color Dodge switches fg and bg color

## Contrast Blending
- Overlay
  - For each RGB component
    - If bg is light (> 127.5) then apply
