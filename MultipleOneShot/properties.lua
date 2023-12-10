table.insert(props, {
  Name = "Debug Print",
  Type = "enum",
  Choices = {"None", "Tx/Rx", "Tx", "Rx", "Function Calls", "All"},
  Value = "None"
})

table.insert(props, {
  Name = "NumIO",
  Type = "integer",
  Value = 2,
  Min = 1,
  Max = 100
})
table.insert(props, {
  Name = "Delay",
  Type = "double",
  Value = 0.5,
  Min = 0.1,
  Max = 100
})