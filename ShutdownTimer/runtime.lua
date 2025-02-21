-- Required libraries
rapidjson = require("rapidjson")
EzSVG = require("EzSVG")

-- Controls that need to be created in Q-SYS Designer:
-- 1. ProgressDisplay (Toggle Button) - for displaying the SVG
-- 2. Duration  - for setting countdown duration in seconds
-- 3. Start (Button) - to start the countdown
-- 4. Reset (Button) - to reset to 100%


-- Initialize variables
local timer           = Timer.New()
local startTime       = 0
local duration        = 0
local isRunning       = false
local currentProgress = 100
local horizontalSize  = Controls.HorizontalSize.Value
local VerticalSize    = Controls.VerticalSize.Value


function drawProgressBar(percentage)
  -- Create SVG document (400x50 pixels)
  local doc = EzSVG.Document(horizontalSize, VerticalSize)
  
  -- Background rectangle (gray)
  doc:add(EzSVG.Rect(0, 0, horizontalSize, VerticalSize)
    :setStyle({
      fill = Controls.BackgroundColor.String,
      stroke = "#808080",
      stroke_width = Controls.BorderWidth.Value,
      rx = Controls.BorderRadius.Value,
      ry = Controls.BorderRadius.Value
    }))
  
  -- Progress rectangle (blue)
  local width = (percentage / 100) * horizontalSize
  doc:add(EzSVG.Rect(0, 0, width, VerticalSize)
    :setStyle({
      fill = Controls.ForegroundColor.String,
      fill_opacity = "1", -- "0.6",
      stroke = "none",
      rx = Controls.BorderRadius.Value,
      ry = Controls.BorderRadius.Value
    }))
  
  return doc:toString()
end

-- Update the progress display
function updateDisplay()
  Controls.ProgressDisplay.Legend = rapidjson.encode({
    DrawChrome = false,
    IconData = Crypto.Base64Encode(drawProgressBar(currentProgress))
  })
  -- Controls.CurrentProgress.String = string.format("%.1f%%", currentProgress)
end

-- Timer event handler
timer.EventHandler = function()
  if not isRunning then return end
  
  local elapsed = Timer.Now() - startTime
  currentProgress = 100 * (1 - (elapsed / duration))
  
  if currentProgress <= 0 then
    currentProgress = 100
    isRunning = false
    timer:Stop()
    Controls.TimeExpired:Trigger()
  end
  
  updateDisplay()
end

-- Start button handler
Controls.Start.EventHandler = function()
  if Controls.Duration.Value <= 0 then return end
  
  duration = Controls.Duration.Value
  startTime = Timer.Now()
  isRunning = true
  timer:Start(0.1) -- Update every 100ms
end

-- Reset button handler
Controls.Reset.EventHandler = function()
  isRunning = false
  timer:Stop()
  currentProgress = 100
  updateDisplay()
end




-- Initialize the display
function Initialize()
  -- Controls.Duration.Value = Controls.Duration.Value ~= nil and Controls.Duration.Value or 60 -- Default 10 seconds
  if Controls.BackgroundColor.String == nil or Controls.BackgroundColor.String == "" then Controls.BackgroundColor.String = "transparent" end
  if Controls.ForegroundColor.String == nil or Controls.ForegroundColor.String == "" then Controls.ForegroundColor.String = "#214edc" end

  updateDisplay()
end

Initialize()