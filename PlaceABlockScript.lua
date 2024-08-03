local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessed then
		placeBlock(mouse.Hit.p)
	end
end)

function placeBlock(position)
	local block = Instance.new("Part")
	block.Size = Vector3.new(4, 4, 4)
	block.Position = Vector3.new(math.floor(position.X / 4) * 4, math.floor(position.Y / 4) * 4, math.floor(position.Z / 4) * 4)
	block.Anchored = false
	block.Parent = workspace
end
