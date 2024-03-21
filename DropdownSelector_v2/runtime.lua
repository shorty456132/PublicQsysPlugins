local NumOfSelections = Properties["SelectionAmount"].Value
local defaultSelection = Properties["DefaultSelection"]
local outputList = {}
local routerComponents = {}
local routerNames = {}
SelectedRouter = Component.New(Controls.ControlledRouter.String)
SelectedOutput = {}
local maxOutput = 0




-- Functions ------------------------------------------------------------------------------------------------
-- Sets the selection status value and text as well as dropdown selection
function ProcessZone()
  for i = 1, NumOfSelections do
    if Controls.Selector.String == outputList[i] then
      Controls["Selection" .. i].Boolean = true
      Controls.SelectorText.String  = Controls.Selector.String
      if Controls["SelectionValue" .. i].Value ~= nil then
        Controls.SelectorValue.Value = Controls["SelectionValue" .. i].Value
        -- send to the controlled router
        if SelectedOutput ~= nil then
          SelectedOutput.Value = Controls.SelectorValue.Value
        end
      end
    else
      Controls["Selection" .. i].Boolean = false
    end
  end
end

-- takes the output number property from the selected index
-- of the routerComponents table. Then formats the range of 
-- the user selectable output value to only the max of the router's output
function GetRouterOutputs()
  local result = 0
  for k, v in pairs(routerComponents) do
    if v.Name == Controls.ControlledRouter.String then
      result = v.Properties[2].Value  -- index 2 is the output value      
    end
  end
  return tonumber(result)
end

-- Loads the list for the main drop down selector
function LoadOutputList()
  outputList = {}
  for i = 1, NumOfSelections do
    table.insert(outputList, Controls["SelectionName"..i].String)
  end
  Controls.Selector.Choices = outputList
end

-- Part of the setup. This will find all named router components with script access
-- and puts them in a comboBox to select from
function LoadRouterlist()
  --clear table before adding a fresh list of routers to the table
  for i = 1, #routerComponents do
    routerComponents[i] = nil
    routerNames[i] = nil
  end

  -- Get all components and add a default setting at the first index
  local allComponents = Component.GetComponents()
  routerNames[1] = "None"
  routerComponents[1] = ""
  for _, component in ipairs(allComponents) do

    if string.find(string.lower(tostring(component.Type)), "router") then  
      table.insert(routerComponents, component)
      table.insert(routerNames, component.Name)
    end
  end
  Controls.ControlledRouter.Choices = routerNames
end

-- Updates the controls for the selected router and its output
function UpdateComponent()
  SelectedRouter = Component.New(Controls.ControlledRouter.String)
  
  -- Set the SelectedRouter's output value. 
  -- this holds the selected router's max output number.
  -- used to constrain the user to only what the router can handle
  maxOutput = GetRouterOutputs()

  -- Set the control to max output. then I dont have to do this code below
  if string.lower(Controls.ControlledRouter.String) ~= "none" then
    if Controls.RouterOutput.Value > maxOutput then
      Controls.RouterOutput.Value = maxOutput
    end
  else
    Controls.RouterOutput.Value = 0
  end

   -- assign the selectedRouter's output to the global SelectedOutput variable
  for index, data in pairs(routerComponents) do
    if data.Name == Controls.ControlledRouter.String then
      Controls.SelectedRouterText.String = string.format("Controlling: %s",Controls.ControlledRouter.String)
      if data.Type == "av_router_class" then
        SelectedOutput = SelectedRouter[string.format("output.%d.select",Controls.RouterOutput.Value)]
      elseif data.Type == "usb_router" then
        SelectedOutput = SelectedRouter[string.format("input.$d.route",Controls.RouterOutput.Value)]
      else 
        SelectedOutput = SelectedRouter[string.format("select.%d",Controls.RouterOutput.Value)]
      end
    elseif string.lower(Controls.ControlledRouter.String) == "none" then
      SelectedOutput = nil
    end
    -- if type(data) == "table" then
    --   for key, val in pairs(data) do
    --     print(key, tostring(val))
    --   end
    -- end
  end
end

-- EventHandlers -----------------------------------------------------------------------------------------
-- Update User updated Selection Names
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


-- Setup router selector
Controls.ControlledRouter.EventHandler  = function ()
  if Controls.ControlledRouter.String ~= nil then
    UpdateComponent()
  end
  Controls.SelectedRouterText.String = string.format("Controlling: %s",Controls.ControlledRouter.String)
end

-- Changes to the selected router's output selection
Controls.RouterOutput.EventHandler = function()
    UpdateComponent()
end

-- init
for i = 1, NumOfSelections do
  if Controls["SelectionName"..i].String == "" then
    Controls["SelectionName"..i].String = i
  end
end
LoadOutputList()
Controls.Selector.String = outputList[defaultSelection.Value]
LoadRouterlist()
UpdateComponent()
Controls.SelectedRouterText.String = string.format("Controlling: %s",Controls.ControlledRouter.String)
ProcessZone()