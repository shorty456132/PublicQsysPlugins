local NumOfIO = props["NumIO"].Value
local BtnHeight = 30


local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Controls" then

  table.insert(graphics, {
    Type = "Image",
    Image = DGI_Logo,
    Position = {0,0},
    Size = {90, 20}
  })

  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Inputs",
    HTextAlign = "Left",
    StrokeWidth = 1,
    Position = {5,35},
    Size = {100,(NumOfIO * BtnHeight) + 40}
  })
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Outputs",
    HTextAlign = "Left",
    StrokeWidth = 1,
    Position = {110,35},
    Size = {100,(NumOfIO * BtnHeight) + 40}
  })

for i = 1, NumOfIO do
  layout["Input"..i] = {
    PrettyName = string.format("Input %i", i),
    Style = "Button",
    Position = {25,(BtnHeight * i) + 40},
    Size = {50, BtnHeight}
  }

  layout["Output"..i] = {
    PrettyName = string.format("Output %i",i),
    Style = "Button",
    Position = {135,(BtnHeight * i) + 40},
    Size = {50, BtnHeight}
  }
end


end