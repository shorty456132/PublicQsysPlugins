local holdTime = Properties["HoldTime"].Value
local Press = Controls.Press

local HoldTimer = Timer.New()
local TimerFlag = false

Press.EventHandler = function()
  if Press.Boolean == true then
    if TimerFlag == false then
      TimerFlag = true
      HoldTimer:Start(holdTime)
    end
  else -- release
    if TimerFlag == true then
      TimerFlag = false
      HoldTimer:Stop()
      Controls.ShortPress:Trigger()
    end
  end
end

HoldTimer.EventHandler = function()
  if Controls.Press.Boolean == true then
    TimerFlag = false
    HoldTimer:Stop()
    Controls.LongPress:Trigger()
  end
end