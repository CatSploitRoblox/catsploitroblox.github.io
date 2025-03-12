local uwu = Instance.new("ScreenGui")
uwu.Name = "uwu"
uwu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
uwu.ResetOnSpawn = false
uwu.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
uwu.IgnoreGuiInset = true

local GuiName = Instance.new("StringValue")
GuiName.Name = "GuiName"
GuiName.Parent = uwu

local poop = Instance.new("LocalScript")
poop.Name = "poop"
poop.Source = "local guiname = math.random(0, 9999.9999)\n\nscript.Parent.Value = guiname\n\nscript.Parent.Parent.Name = guiname"
poop.Parent = GuiName

local PlayerName = Instance.new("StringValue")
PlayerName.Name = "PlayerName"
PlayerName.Parent = uwu

local poop1 = Instance.new("LocalScript")
poop1.Name = "poop"
poop1.Source = "script.Parent.Value = game.Players.LocalPlayer.DisplayName"
poop1.Parent = PlayerName

local Open = Instance.new("LocalScript")
Open.Name = "Open"
Open.Source = "game:GetService(\"StarterGui\"):SetCore(\"SendNotification\",{\n\tTitle = \"CatSploit\",\n\tText = \"Press F8 to open CatSploit.\",\n\tIcon = \"rbxassetid://116086902336743\", -- \u{430}\u{439}\u{434}\u{438} \u{44d}\u{442}\u{43e}\u{433}\u{43e} \u{43a}\u{430}\u{442}\u{441}\u{43f}\u{43b}\u{43e}\u{438}\u{442}\u{430}\n\tDuration = 8\n})\n\n\n\n\n\nlocal userInputService = game:GetService(\"UserInputService\")\n\nlocal ui_Item = script.Parent.Background\n\nlocal input_Key = Enum.KeyCode.F8\n\nuserInputService.InputBegan:Connect(function(input)\n\tif input.KeyCode == input_Key then\n\t\tif ui_Item.Visible == false then\n\t\t\tui_Item.Visible = true\n\t\telse\n\t\t\tui_Item.Visible = false\n\t\tend\n\tend\n\t\n\treturn\nend)\n\n"
Open.Parent = uwu

local Background = Instance.new("Frame")
Background.Name = "Background"
Background.Visible = false
Background.Size = UDim2.new(0, 772, 0, 328)
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.Position = UDim2.new(0.2020358, 0, 0.2118347, 0)
Background.BorderSizePixel = 0
Background.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Background.Parent = uwu

local UICorner = Instance.new("UICorner")
UICorner.Parent = Background

local Drag = Instance.new("LocalScript")
Drag.Name = "Drag"
Drag.Source = "local TweenService = game:GetService(\"TweenService\")\nlocal UserInputService = game:GetService(\"UserInputService\")\nlocal Player = game.Players.LocalPlayer\nlocal PlayerGui = Player:WaitForChild(\"PlayerGui\")\nlocal Frame1 = script.Parent\nlocal Frame2 = script.Parent\n\nlocal dragging = false\nlocal offset = Vector2.new(0, 0)\n\nlocal function onInputBegan(input)\n\tif input.UserInputType == Enum.UserInputType.MouseButton1 and Frame2.Visible then\n\t\tlocal mousePosition = input.Position\n\t\tif mousePosition.X >= Frame1.AbsolutePosition.X and\n\t\t\tmousePosition.X <= Frame1.AbsolutePosition.X + Frame1.AbsoluteSize.X and\n\t\t\tmousePosition.Y >= Frame1.AbsolutePosition.Y and\n\t\t\tmousePosition.Y <= Frame1.AbsolutePosition.Y + Frame1.AbsoluteSize.Y then\n\t\t\tdragging = true\n\t\t\toffset = Vector2.new(mousePosition.X - Frame2.AbsolutePosition.X, mousePosition.Y - Frame2.AbsolutePosition.Y)\n\t\tend\n\tend\nend\n\nlocal function onInputEnded(input)\n\tif input.UserInputType == Enum.UserInputType.MouseButton1 then\n\t\tdragging = false\n\tend\nend\n\nlocal function onInputChanged(input)\n\tif dragging and input.UserInputType == Enum.UserInputType.MouseMovement and Frame2.Visible then\n\t\tlocal mousePosition = input.Position\n\t\tlocal newPosition = UDim2.new(0, mousePosition.X - offset.X, 0, mousePosition.Y - offset.Y)\n\n\t\tlocal tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)\n\t\tlocal tween = TweenService:Create(Frame2, tweenInfo, {Position = newPosition})\n\t\ttween:Play()\n\n\t\ttween.Completed:Wait()\n\tend\nend\n\nUserInputService.InputBegan:Connect(onInputBegan)\nUserInputService.InputEnded:Connect(onInputEnded)\nUserInputService.InputChanged:Connect(onInputChanged)"
Drag.Parent = Background

local Frames = Instance.new("Folder")
Frames.Name = "Frames"
Frames.Parent = Background

local Home = Instance.new("TextButton")
Home.Name = "Home"
Home.Size = UDim2.new(0, 128, 0, 33)
Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home.Position = UDim2.new(0.017427, 0, 0.0378905, 0)
Home.BorderSizePixel = 0
Home.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Home.FontSize = Enum.FontSize.Size24
Home.TextSize = 20
Home.TextColor3 = Color3.fromRGB(255, 255, 255)
Home.Text = "Home"
Home.TextWrapped = true
Home.TextWrap = true
Home.Font = Enum.Font.Unknown
Home.Parent = Frames

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0, 9)
UICorner1.Parent = Home

local ScriptEditor = Instance.new("TextButton")
ScriptEditor.Name = "ScriptEditor"
ScriptEditor.Size = UDim2.new(0, 128, 0, 33)
ScriptEditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptEditor.Position = UDim2.new(0.017427, 0, 0.1659393, 0)
ScriptEditor.BorderSizePixel = 0
ScriptEditor.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ScriptEditor.FontSize = Enum.FontSize.Size24
ScriptEditor.TextSize = 20
ScriptEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptEditor.Text = "Script Editor"
ScriptEditor.TextWrapped = true
ScriptEditor.TextWrap = true
ScriptEditor.Font = Enum.Font.Unknown
ScriptEditor.Parent = Frames

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 9)
UICorner2.Parent = ScriptEditor

local Scripts = Instance.new("TextButton")
Scripts.Name = "Scripts"
Scripts.Size = UDim2.new(0, 128, 0, 33)
Scripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scripts.Position = UDim2.new(0.017427, 0, 0.2970369, 0)
Scripts.BorderSizePixel = 0
Scripts.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Scripts.FontSize = Enum.FontSize.Size24
Scripts.TextSize = 20
Scripts.TextColor3 = Color3.fromRGB(255, 255, 255)
Scripts.Text = "Scripts"
Scripts.TextWrapped = true
Scripts.TextWrap = true
Scripts.Font = Enum.Font.Unknown
Scripts.Parent = Frames

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 9)
UICorner3.Parent = Scripts

local About = Instance.new("TextButton")
About.Name = "About"
About.Size = UDim2.new(0, 128, 0, 33)
About.BorderColor3 = Color3.fromRGB(0, 0, 0)
About.Position = UDim2.new(0.017427, 0, 0.4250857, 0)
About.BorderSizePixel = 0
About.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
About.FontSize = Enum.FontSize.Size24
About.TextSize = 20
About.TextColor3 = Color3.fromRGB(255, 255, 255)
About.Text = "About"
About.TextWrapped = true
About.TextWrap = true
About.Font = Enum.Font.Unknown
About.Parent = Frames

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 9)
UICorner4.Parent = About

local TextButton = Instance.new("TextButton")
TextButton.Name = "0"
TextButton.Size = UDim2.new(0, 128, 0, 33)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.017427, 0, 0.5622808, 0)
TextButton.BorderSizePixel = 0
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.FontSize = Enum.FontSize.Size24
TextButton.TextSize = 20
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Text = "Coming Soon"
TextButton.TextWrapped = true
TextButton.TextWrap = true
TextButton.Font = Enum.Font.Unknown
TextButton.Parent = Frames

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 9)
UICorner5.Parent = TextButton

local TextButton1 = Instance.new("TextButton")
TextButton1.Name = "0"
TextButton1.Size = UDim2.new(0, 128, 0, 33)
TextButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.Position = UDim2.new(0.017427, 0, 0.7025247, 0)
TextButton1.BorderSizePixel = 0
TextButton1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton1.FontSize = Enum.FontSize.Size24
TextButton1.TextSize = 20
TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.Text = "Coming Soon"
TextButton1.TextWrapped = true
TextButton1.TextWrap = true
TextButton1.Font = Enum.Font.Unknown
TextButton1.Parent = Frames

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 9)
UICorner6.Parent = TextButton1

local TextButton2 = Instance.new("TextButton")
TextButton2.Name = "0"
TextButton2.Size = UDim2.new(0, 128, 0, 33)
TextButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.Position = UDim2.new(0.017427, 0, 0.8519149, 0)
TextButton2.BorderSizePixel = 0
TextButton2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton2.FontSize = Enum.FontSize.Size24
TextButton2.TextSize = 20
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.Text = "Coming Soon"
TextButton2.TextWrapped = true
TextButton2.TextWrap = true
TextButton2.Font = Enum.Font.Unknown
TextButton2.Parent = Frames

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0, 9)
UICorner7.Parent = TextButton2

local Home1 = Instance.new("Frame")
Home1.Name = "Home"
Home1.Visible = false
Home1.Size = UDim2.new(0, 581, 0, 300)
Home1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home1.Position = UDim2.new(0.2318653, 0, 0.0365854, 0)
Home1.BorderSizePixel = 0
Home1.BackgroundColor3 = Color3.fromRGB(47, 47, 50)
Home1.Parent = Background

local UICorner8 = Instance.new("UICorner")
UICorner8.Parent = Home1

local NamePLR = Instance.new("TextLabel")
NamePLR.Name = "NamePLR"
NamePLR.Size = UDim2.new(0, 213, 0, 28)
NamePLR.BorderColor3 = Color3.fromRGB(0, 0, 0)
NamePLR.BackgroundTransparency = 1
NamePLR.Position = UDim2.new(0.036012, 0, 0.0450724, 0)
NamePLR.BorderSizePixel = 0
NamePLR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NamePLR.FontSize = Enum.FontSize.Size14
NamePLR.TextSize = 14
NamePLR.RichText = true
NamePLR.TextColor3 = Color3.fromRGB(255, 255, 255)
NamePLR.Text = "Hello, Mark Adderly"
NamePLR.TextWrapped = true
NamePLR.TextWrap = true
NamePLR.Font = Enum.Font.Unknown
NamePLR.TextScaled = true
NamePLR.Parent = Home1

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "local nameplr = script.Parent.Parent.Parent.Parent.PlayerName.Value\nlocal itogotext = \"Hello, \" .. nameplr\n\nscript.Parent.Text = itogotext"
LocalScript.Parent = NamePLR

local cat = Instance.new("ImageLabel")
cat.Name = "cat"
cat.Size = UDim2.new(0, 100, 0, 100)
cat.BorderColor3 = Color3.fromRGB(0, 0, 0)
cat.BackgroundTransparency = 1
cat.Position = UDim2.new(0.8278829, 0, 0.6666667, 0)
cat.BorderSizePixel = 0
cat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cat.Image = "rbxassetid://116086902336743"
cat.Parent = Home1

local ScriptEditor1 = Instance.new("Frame")
ScriptEditor1.Name = "ScriptEditor"
ScriptEditor1.Size = UDim2.new(0, 581, 0, 300)
ScriptEditor1.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptEditor1.Position = UDim2.new(0.2318653, 0, 0.0365854, 0)
ScriptEditor1.BorderSizePixel = 0
ScriptEditor1.BackgroundColor3 = Color3.fromRGB(47, 47, 50)
ScriptEditor1.Parent = Background

local UICorner9 = Instance.new("UICorner")
UICorner9.Parent = ScriptEditor1

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 507, 0, 274)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0.0223752, 0, 0.0366667, 0)
TextBox.BorderSizePixel = 0
TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextBox.FontSize = Enum.FontSize.Size14
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.TextSize = 14
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Enter your script"
TextBox.Text = ""
TextBox.CursorPosition = -1
TextBox.Font = Enum.Font.Unknown
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.Parent = ScriptEditor1

uwu.Parent = game.Players.LocalPlayer.PlayerGui
