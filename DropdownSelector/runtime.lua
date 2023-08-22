local NumOfSelections = Properties["SelectionAmount"].Value
local defaultSelection = Properties["DefaultSelection"]
local outputList = {}



-- Functions
function ProcessZone()
  print("NumOfSelection = ", NumOfSelections)
  for i = 1, NumOfSelections do
    if Controls.Selector.String == outputList[i] then
      Controls["Selection" .. i].Boolean = true
      Controls.SelectorValue.Value = i
      Controls.SelectorText.String  = Controls.Selector.String
    else
      Controls["Selection" .. i].Boolean = false
    end
  end
end

function LoadOutputList() 
  outputList = {}
  for i = 1, NumOfSelections do
    table.insert(outputList, Controls["SelectionName"..i].String)
  end
  Controls.Selector.Choices = outputList
end


-- EventHandlers
for i = 1, NumOfSelections do
  Controls["SelectionName" .. i].EventHandler = function()
    outputList[i] = Controls["SelectionName" .. i].String
    Controls.Selector.Choices = outputList
  end
end

Controls.Selector.EventHandler = function()
  ProcessZone()
end

for i = 1, NumOfSelections do
  Controls["Selection" .. i].EventHandler = function()
    Controls.Selector.String = outputList[i]
    ProcessZone()
  end
end


-- init
for i = 1, NumOfSelections do
  if Controls["SelectionName"..i].String == "" then
    Controls["SelectionName"..i].String = i
  end
end
LoadOutputList()
Controls.Selector.String = outputList[defaultSelection.Value]
ProcessZone()