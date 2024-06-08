local NumOfSelections = props.SelectionAmount.Value
local btnHeight = 30
local btnWidth  = 50
local textWidth = 200
local setupVPos = 190


local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Controls" then

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
  Position = {240,95},
  Size = {50,btnHeight},
  IsReadOnly = true,
  }

  layout["SelectorText"] = {
  PrettyName = "SelectorText",
  Style = "Text",
  Position = {30,95},
  Size = {200, btnHeight},
  IsReadOnly = true
  }

  layout["SelectedRouterText"] = {
  PrettyName = "SelectedRouterText",
  Style = "Text",
  Position = {30,65},
  Size = {200, btnHeight},
  IsReadOnly = true,
  TextBoxStyle = "NoBackground",
  Color = {255,255,255},
  HTextAlign = "Left",
  TextSize = 30,
  }

-- Dropdown list ------------------------------------------------------------------------------------

  layout["Selector"] = {
    PrettyName = "Selector",
    Style = "ComboBox",
    Position = {30,165},
    Size = {textWidth,btnHeight},
  }

-- Names And Values ---------------------------------------------------------------------------------------------
  table.insert(graphics, {
    Type = "GroupBox",
    Text = "Dropdown",
    Size = {300,(NumOfSelections * btnHeight) + 100}, --120
    StrokeWidth = 1,
    Position = {0,140},
    HTextAlign = "Left",
    CornerRadius = 8,
    Zorder = -1
  })

  -- Adding the index number to the selection list row
  for i = 1, NumOfSelections do
    table.insert(graphics, {
      Type = "Text",
      Text = tostring(i)..".",
      Size = {20,30},
      Position = {1, (btnHeight * i) + setupVPos}
    })


    layout["SelectionName" .. i] = {
    PrettyName = "Names~SelectionName" .. i,
    Style = "Text",
    Position = {30,(btnHeight * i) + setupVPos},
    Size = {150, btnHeight}
    }

    layout["SelectionValue" .. i] = {
    PrettyName = "SelectionValue" .. i,
    Style = "Text Field",
    Position = {180,(btnHeight * i) + setupVPos},
    Size = {btnWidth, btnHeight}
    }

    layout["Selection" .. i] = {
    PrettyName = "Selection" .. i,
    Style = "Button",
    Position = {240,(btnHeight * i) + setupVPos},
    Size = {btnWidth, btnHeight}
    }
  end
  

  -- SETUP PAGE -----------------------------------------------------------------------------
elseif CurrentPage == "Setup" then

  -- Adding graphics to the Setup page
  table.insert(graphics, {
    Type = "Image",
    Image = DGI_Logo,
    Position = {0,0},
    Size = {160, 30}
  })

  table.insert(graphics, {
    Type = "Header",
    Text = "Select A Router To Controls",
    Size = {300,20},
    Position = {0,40},
  })

  -- Sets the comboBox for displaying the found routers
  layout["ControlledRouter"] = {
  PrettyName = "ControlledRouter",
  Style = "ComboBox",
  Position = {30,65},
  Size = {textWidth,btnHeight},
  }

  layout["RouterOutput"] = {
  PrettyName = "RouterOutput",
  Style = "Text",
  Position = {240,65},
  Size = {50,btnHeight},
  }
end
