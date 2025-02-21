-- Add controls here

-- Control and set the timer
-- Start
table.insert(ctrls, {
  Name = "Start",
  Count = 1,
  ControlType = "Button",
  ButtonType = "Trigger",
  UserPin = true,
  PinStyle = "Input",
})

-- Reset
table.insert(ctrls, {
  Name = "Reset",
  Count = 1,
  ControlType = "Button",
  ButtonType = "Trigger",
  UserPin = true,
  PinStyle = "Input",
})

-- time duration in seconds
table.insert(ctrls, {
  Name = "Duration",
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Max = 3600,
  Min = 1,
  DefaultValue = 60,
  UserPin = false,
  PinStyle = "None",
})

-- lets the system know the time has expired
table.insert(ctrls, {
  Name = "TimeExpired",
  Count = 1,
  ControlType = "Button",
  ButtonType = "Trigger",
  UserPin = false,
  PinStyle = "Output",
})



-- Main object that should be used in UCIs
table.insert(ctrls, {
  Name = "ProgressDisplay",
  Count = 1,
  ControlType = "Button",
  ButtonType = "Toggle",
  UserPin = false,
  PinStyle = "None",
})


-- Setup for the progress bar view
table.insert(ctrls, {
  Name = "BackgroundColor",
  Count = 1,
  ControlType = "Text",
  UserPin = false,
  PinStyle = "None",
})

table.insert(ctrls, {
  Name = "ForegroundColor",
  Count = 1,
  ControlType = "Text",
  UserPin = false,
  PinStyle = "None",
})

table.insert(ctrls, {
  Name = "BorderWidth",
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Max = 10,
  Min = 0,
  DefaultValue = 0,
  UserPin = false,
  PinStyle = "None",
})

table.insert(ctrls, {
  Name = "BorderRadius",
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Max = 300,
  Min = 0,
  DefaultValue = 8,
  UserPin = false,
  PinStyle = "None",
})

table.insert(ctrls, {
  Name = "HorizontalSize",
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Max = 1920,
  Min = 1,
  DefaultValue = 700,
  UserPin = false,
  PinStyle = "None",
})

table.insert(ctrls, {
  Name = "VerticalSize",
  Count = 1,
  ControlType = "Knob",
  ControlUnit = "Integer",
  Max = 1280,
  Min = 1,
  DefaultValue = 50,
  UserPin = false,
  PinStyle = "None",
})