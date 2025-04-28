local CurrentPage = PageNames[props["page_index"].Value]

layout["Press"] = {
PrettyName = "Press",
Style = "Button",
Position = {0,0},
Size = {50, 50}
}

layout["LongPress"] = {
PrettyName = "LongPress",
Style = "None",
Position = {0,100},
Size = {10, 10}
}

layout["ShortPress"] = {
  PrettyName = "ShortPress",
  Style = "None",
  Position = {0,120},
  Size = {10, 10}
  }