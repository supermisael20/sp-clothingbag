---
description: >-
  Players can access this bag to change their appearance quickly and
  conveniently, without needing to visit an in-game clothing store.
layout:
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: true
---

# Installation Guide

## Installation

Add image for qb-inventory/html/images.

Add this to your qb-core/shared/items.lua:

```
["clothing_bag"]  	= {["name"] = "clothing_bag", 			["label"] = "Clothing Bag", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "clothingbag.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

## Dependencies

qb-core - https://github.com/qbcore-framework/qb-core

qb-clothing - https://github.com/qbcore-framework/qb-core (can be replaced to fivem-appearance)

fivem-appearance - https://github.com/iLLeniumStudios/fivem-appearance (can be replaced to qb-clothing)

## Community

https://discord.gg/hMKYrQBG2P
