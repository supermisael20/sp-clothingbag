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

**Put the scripts in the resources folder.**&#x20;

**Write to the cfg ensure sp-clothingbag.**

**Add image for qb-inventory/html/images.**

**Add this to your qb-core/shared/items.lua:**

```

["clothing_bag"]  	= {["name"] = "clothing_bag", 			["label"] = "Clothing Bag", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "clothingbag.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```



