--Project Lazarus Zombie Counter By LuaScape


local counter = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local uistroke = Instance.new("UIStroke")

counter.Name = "counter"
counter.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
counter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
counter.ResetOnSpawn = false

TextLabel.Parent = counter
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(216, 216, 216)
TextLabel.Position = UDim2.new(0.460000008, 0, 0.901081443, 0)
TextLabel.Size = UDim2.new(0.0785386488, 0, 0.0733122677, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "0"
TextLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

uistroke.Parent = TextLabel
uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
uistroke.Color = Color3.new(0,0,0)
uistroke.Thickness = 1.1


local function PQSTOFW_fake_script()
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
		script.Parent.Text = #game.Workspace.Baddies:GetChildren()
	end
end
coroutine.wrap(PQSTOFW_fake_script)()
