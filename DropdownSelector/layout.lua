local NumOfSelections = props.SelectionAmount.Value
local btnHeight = 30
local btnWidth  = 50
local textWidth = 200
local setupVPos = 180


local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then

  table.insert(graphics, {
    Type = "Image",
    Image = DGI_Logo,
    Position = {0,0},
    Size = {160, 30}
  })


  -- Status ----------------------------------------------------------------------------------------
  table.insert(graphics, {
    Type = "Header",
    Text = "Status",
    Size = {300,20},
    Position = {0,40}
  })

  layout["SelectorValue"] = {
  PrettyName = "SelectorValue",
  Style = "text",
  Position = {240,65},
  Size = {50,btnHeight},
  IsReadOnly = true,
  }

  layout["SelectorText"] = {
  PrettyName = "SelectorText",
  Style = "Text",
  Position = {30,65},
  Size = {200, btnHeight},
  IsReadOnly = true
  }

-- Dropdown list ------------------------------------------------------------------------------------

  layout["Selector"] = {
    PrettyName = "Selector",
    Style = "ComboBox",
    Position = {30,145},
    Size = {textWidth,btnHeight},
  }

-- Setup ---------------------------------------------------------------------------------------------
  table.insert(graphics, {
    Type = "GroupBox",
    Text = "Dropdown",
    Size = {300,(NumOfSelections * btnHeight) + 120},
    StrokeWidth = 1,
    Position = {0,110},
    HTextAlign = "Left",
    CornerRadius = 8,
    Zorder = -1
  })

  for i = 1, NumOfSelections do
    table.insert(graphics, {
      Type = "Text",
      Text = tostring(i)..".",
      Size = {20,30},
      Position = {1, (btnHeight * i) + setupVPos},
    })


    layout["SelectionName" .. i] = {
    PrettyName = "SelectionName" .. i,
    Style = "Text",
    Position = {30,(btnHeight * i) + setupVPos},
    Size = {200, btnHeight},
    }

    layout["Selection" .. i] = {
    PrettyName = "Selection" .. i,
    Style = "Button",
    Position = {240,(btnHeight * i) + setupVPos},
    Size = {btnWidth, btnHeight},
    }
  end

end