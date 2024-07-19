--!strict

local RunService = game:GetService("RunService")

local DEFAULT_SCROLL_SPEED = 0.4
local DEFAULT_GRAVITY = 0.5

type GameProperties = {
	scrollSpeed: number,
	gravity: number
}

local FlappyBirdGame = {}
FlappyBirdGame.__index = FlappyBirdGame

function FlappyBirdGame.new(gameProperties: GameProperties)

	local self = setmetatable({}, FlappyBirdGame)

	self.scrollSpeed = gameProperties.scrollSpeed or DEFAULT_SCROLL_SPEED
	self.gravity = gameProperties.gravity or DEFAULT_GRAVITY
	self.tickConnection = RunService.PreRender:Connect(function()
		self:tick()
	end)

	return self
end

function FlappyBirdGame:tick()

	-- Do stuff for game tick

end

return FlappyBirdGame