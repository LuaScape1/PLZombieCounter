
local counter = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UiStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")

counter.Name = "counter"
counter.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
counter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
counter.ResetOnSpawn = false

TextLabel.Parent = counter
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.500
TextLabel.Position = UDim2.new(0.41548124, 0, 0.0178325977, 0)
TextLabel.Size = UDim2.new(0.168298453, 0, 0.0406091399, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Zombies Left:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true


TextLabel.RichText = true



UiStroke.Parent = TextLabel
UiStroke.Color = Color3.new(255,255,255)
UiStroke.Thickness = 2.2
UiStroke.Transparency = 0.5
UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.Parent = TextLabel


local function PGMN_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local uis = game:GetService("UserInputService")
	
	
	uis.InputBegan:Connect(function(key, gps)
		if key.KeyCode == Enum.KeyCode.C and not gps then
			if script.Parent.Visible == true then
				script.Parent.Visible = false
			else
				script.Parent.Visible = true
			end
		end
	end)
	
	
	while wait() do
		script.Parent.Text=[[Zombies Left: <font color="rgb(255, 0, 0)">]]..#game.Workspace.Baddies:GetChildren()..[[</font>]]
	end
end
coroutine.wrap(PGMN_fake_script)()
