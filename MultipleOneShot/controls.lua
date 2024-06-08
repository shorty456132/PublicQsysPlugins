local NumOfIO = props["NumIO"].Value

for i = 1, NumOfIO do
table.insert(ctrls, {
  Name = "Input" .. i,
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "Output" .. i,
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Output"
})
end