
local CurrentPage = PageNames[props["page_index"].Value] -- Get the current pages from the PageNames table in the plugin.lua

if CurrentPage == "Control" then -- must match what is in the PageNames table
  
  -- hidden controls
  layout["TimeExpired"] = {
    PrettyName = "TimeExpired",
    Style = "None",
    Position = {0, 0},
    Size = {0, 0},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Build Version: " .. PluginInfo.BuildVersion,
    Size     = {80, 20},
    Position = {0, 0},
    FontSize = 8
  })



  table.insert(graphics, {
    Type     = "Label",
    Text     = "Start",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 20},
  })

  layout["Start"] = {
    PrettyName = "Start",
    Style = "Button",
    ButtonStyle = "Trigger",
    Position = {110, 20},
    Size = {60,30},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Reset",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 60},
  })

  layout["Reset"] = {
    PrettyName = "Reset",
    Style = "Button",
    ButtonStyle = "Trigger",
    Position = {110, 60},
    Size = {60, 30},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Duration",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 100},
  })

  layout["Duration"] = {
    PrettyName = "Duration",
    Style = "Text",
    Position = {110, 100},
    Size = {60, 30},
  }


  table.insert(graphics, {
    Type     = "Label",
    Text     = "Progress Bar",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 140},
  })

  layout["ProgressDisplay"] = {
    PrettyName = "ProgressDisplay",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {110, 140},
    Size = {150, 30},
  }


  table.insert(graphics, {
    Type     = "Label",
    Text     = "Background Color",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 200},
  })

  layout["BackgroundColor"] = {
    PrettyName = "BackgroundColor",
    Style = "Text",
    Position = {110, 200},
    Size = {80, 30},
  }


  table.insert(graphics, {
    Type     = "Label",
    Text     = "Foreground Color",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 240},
  })

  layout["ForegroundColor"] = {
    PrettyName = "ForegroundColor",
    Style = "Text",
    Position = {110, 240},
    Size = {80, 30},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Border Width",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 280},
  })

  layout["BorderWidth"] = {
    PrettyName = "BorderWidth",
    Style = "Text",
    Position = {110, 280},
    Size = {80, 30},
  }


  table.insert(graphics, {
    Type     = "Label",
    Text     = "Border Radius",
    HTextAlign = "Right",
    Size     = {100, 30},
    Position = {10, 320},
  })

  layout["BorderRadius"] = {
    PrettyName = "BorderRadius",
    Style = "Text",
    Position = {110, 320},
    Size = {80, 30},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Horizontal Size",
    Size     = {100, 30},
    Position = {10, 360},
  })

  layout["HorizontalSize"] = {
    PrettyName = "HorizontalSize",
    Style = "Text",
    Position = {110, 360},
    Size = {80, 30},
  }

  table.insert(graphics, {
    Type     = "Label",
    Text     = "Vertical Size",
    Size     = {100, 30},
    Position = {10, 400},
  })

  layout["VerticalSize"] = {
    PrettyName = "VerticalSize",
    Style = "Text",
    Position = {110, 400},
    Size = {80, 30},
  }
end
