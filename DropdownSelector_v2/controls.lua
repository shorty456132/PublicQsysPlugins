local NumOfSelections = props.SelectionAmount.Value
local DefaultSelection = props.DefaultSelection.Value

-- ComboBox that holds all the source names
table.insert(ctrls, {
Name = "Selector",
Count = 1,
ControlType = "Text",
})

-- Status -----------------------------------------------------------------------------
-- Current selected value - readonly
table.insert(ctrls, {
Name = "SelectorValue",
Count = 1,
ControlType = "Knob",
ControlUnit = "Integer",
Min = 0,
Max = 254,
UserPin = true,
PinStyle = "Output"
})

table.insert(ctrls, {
Name = "SelectorText",
Count = 1, 
ControlType = "Text",
UserPin = true,
PinStyle = "Both"
})

table.insert(ctrls, {
Name = "SelectedRouterText",
Count = 1,
ControlType = "Text",
UserPin = false,
PinStyle = "Output",
})
-- DropDown Controls ---------------------------------------
for i = 1, NumOfSelections do
  table.insert(ctrls, {
  Name = "Selection" .. i,
  Count = 1,
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both"
  })

  table.insert(ctrls, {
  Name = "SelectionName" .. i,
  Count = 1,
  ControlType = "Text",
  UserPin = true,
  PinStyle = "Both"
  })

  table.insert(ctrls, {
  Name = "SelectionValue" .. i,
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 0,
  Max = 254,
  UserPin = false
  })
end

-- SETUP PAGE -------------------------------------------
table.insert(ctrls, {
Name = "ControlledRouter",
Count = 1,
ControlType = "Text",
UserPin = true,
PinStyle = "Both",
})

table.insert(ctrls, {
Name = "RouterOutput",
Count = 1,
ControlType = "Knob",
ControlUnit = "Integer",
Min = 1,
Max = 45,
Value = 1,
UserPin = false,
PinStyle = "Input",
})


