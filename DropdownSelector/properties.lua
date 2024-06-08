table.insert(props, {
  Name = "Debug Print",
  Type = "enum",
  Choices = {"None", "Tx/Rx", "Tx", "Rx", "Function Calls", "All"},
  Value = "None"
})


table.insert(props ,{
  Name = "SelectionAmount", 
  Type = "integer",
  Min = 1,
  Max = 256,
  Value = 4
})
table.insert(props, {
Name = "DefaultSelection",
Type = "integer",
Min = 0,
Max = 100,
Value = 1
})