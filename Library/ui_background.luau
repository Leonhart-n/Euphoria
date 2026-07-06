local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")

-- Parent the ScreenGui to the Player's GUI
ScreenGui.Name = "MacOSTahoeUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Frame properties
Frame.Name = "LiquidGlassFrame"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.3 -- Semi-transparent for liquid glass effect

-- Rounded corners
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

-- Gradient effect
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
UIGradient.Rotation = 45
UIGradient.Parent = Frame
