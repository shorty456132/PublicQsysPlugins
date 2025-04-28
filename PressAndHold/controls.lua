-- table.insert(ctrls, {
--   Name = "SendButton",
--   ControlType = "Button",
--   ButtonType = "Momentary",
--   Count = 1,
--   UserPin = true,
--   PinStyle = "Input",
--   Icon = "Power"
-- })

table.insert(ctrls, {
Name = "Press",
Count = 1,
ControlType = "Button",
ButtonType = "Momentary",
UserPin = true,
PinStyle = "Input"
})

table.insert(ctrls, {
Name = "LongPress",
Count = 1,
ControlType = "Button",
ButtonType = "Trigger",
UserPin = true,
PinStyle = "Output"
})

table.insert(ctrls, {
  Name = "ShortPress",
  Count = 1,
  ControlType = "Button",
  ButtonType = "Trigger",
  UserPin = true,
  PinStyle = "Output"
  })