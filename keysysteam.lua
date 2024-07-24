local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

-- Правилен ключ
local correctKey = "x0xslotsxlx"

-- Създаване на RemoteEvent за clipboard
local setClipboardEvent = Instance.new("RemoteEvent")
setClipboardEvent.Name = "SetClipboard"
setClipboardEvent.Parent = ReplicatedStorage

-- Функция за създаване на UI
local function createKeySystemGui(player)
    -- Създаване на ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "KeySystemGui"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Създаване на Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 300)
    frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.Parent = screenGui

    -- Създаване на заглавие
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Text = "Slots Hub-Key System"
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 24
    titleLabel.Parent = frame

    -- Създаване на бутон "Get Key"
    local getKeyButton = Instance.new("TextButton")
    getKeyButton.Name = "GetKeyButton"
    getKeyButton.Text = "Get Key"
    getKeyButton.Size = UDim2.new(0, 200, 0, 50)
    getKeyButton.Position = UDim2.new(0.5, -100, 0, 70)
    getKeyButton.BackgroundColor3 = Color3.new(0, 0, 0)
    getKeyButton.TextColor3 = Color3.new(1, 1, 1)
    getKeyButton.Font = Enum.Font.SourceSans
    getKeyButton.TextSize = 24
    getKeyButton.Parent = frame

    -- Създаване на поле за въвеждане на ключ
    local keyInputBox = Instance.new("TextBox")
    keyInputBox.Name = "KeyInputBox"
    keyInputBox.PlaceholderText = "Enter your key"
    keyInputBox.Size = UDim2.new(0, 200, 0, 50)
    keyInputBox.Position = UDim2.new(0.5, -100, 0, 140)
    keyInputBox.BackgroundColor3 = Color3.new(1, 1, 1)
    keyInputBox.TextColor3 = Color3.new(0, 0, 0)
    keyInputBox.Font = Enum.Font.SourceSans
    keyInputBox.TextSize = 24
    keyInputBox.Parent = frame

    -- Създаване на бутон "Check Key"
    local checkKeyButton = Instance.new("TextButton")
    checkKeyButton.Name = "CheckKeyButton"
    checkKeyButton.Text = "Check Key"
    checkKeyButton.Size = UDim2.new(0, 200, 0, 50)
    checkKeyButton.Position = UDim2.new(0.5, -100, 0, 210)
    checkKeyButton.BackgroundColor3 = Color3.new(0, 0, 0)
    checkKeyButton.TextColor3 = Color3.new(1, 1, 1)
    checkKeyButton.Font = Enum.Font.SourceSans
    checkKeyButton.TextSize = 24
    checkKeyButton.Parent = frame

    -- Функция за копиране на линка
    getKeyButton.MouseButton1Click:Connect(function()
        local keyLink = "https://lootdest.org/s?28079513"
        -- Използване на RemoteEvent за копиране в клипборда
        ReplicatedStorage.SetClipboard:FireClient(player, keyLink)
    end)

    -- Функция за проверка на ключа
    checkKeyButton.MouseButton1Click:Connect(function()
        local userKey = keyInputBox.Text
        if userKey == correctKey then
            print("Access Granted!")
            -- Добавете действията при правилен ключ тук
        else
            print("Invalid Key!")
        end
    end)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createKeySystemGui(player)
    end)
end)

ReplicatedStorage.SetClipboard.OnClientEvent:Connect(function(link)
    setclipboard(link)
    print("Key link copied to clipboard!")
end)
