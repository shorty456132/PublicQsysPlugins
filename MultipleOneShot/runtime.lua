local DelayTime = Properties["Delay"].Value
local NumOfIO = Properties["NumIO"].Value

for i = 1, NumOfIO do
  Controls["Input"..i].EventHandler = function()
    Controls["Output"..i].Boolean = true
    Timer.CallAfter(function()
                    Controls["Output"..i].Boolean = false end, DelayTime)
  end
end