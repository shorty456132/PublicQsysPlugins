local NumOfSelections = props.SelectionAmount.Value
local DefaultSelection = props.DefaultSelection.Value


table.insert(ctrls, {
Name = "Selector",
Count = 1,
ControlType = "Text",
})

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
PinStyle = "Output"
})

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
  })
end


