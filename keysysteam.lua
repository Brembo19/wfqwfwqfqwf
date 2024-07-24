local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local HTTP = syn and syn.request or http_request or request or HttpPost

local WebhookURL = "https://discord.com/api/webhooks/1256301690827833514/o_kSkJYO3Ih6xYA_LxBsnato5QrjFfWT-AkhsDKNuCm7_5aqLsc_qKNej9AC4GVWtmei"

local Headers = {
    ['Content-Type'] = 'application/json',
}

local player = Players.LocalPlayer
local userId = player.UserId
local username = player.Name
local hwid = RbxAnalyticsService:GetClientId()

-- Generate a random color
local randomColor = math.random(0x000000, 0xFFFFFF)

local currentTime = os.date("!*t") -- Get UTC time
local timestamp = string.format("%s %02d:%02d:%02d UTC", os.date("%B"), currentTime.hour, currentTime.min, currentTime.sec)

-- Get the ID of the Roblox game
local gameId = game.GameId

local data = {
    ["embeds"] = {
        {
            ["title"] = "AE Key System Logger",
            ["description"] = "Someone executed AE Key System",
            ["type"] = "rich",
            ["color"] = randomColor,
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = username .. " (" .. userId .. ")",
                    ["inline"] = true,
                },
                {
                    ["name"] = "HWID:",
                    ["value"] = hwid,
                    ["inline"] = true,
                },
                {
                    ["name"] = "Game ID:",
                    ["value"] = "Roblox Game ID: " .. gameId,
                    ["inline"] = false,
                },
                {
                    ["name"] = "Timestamp:",
                    ["value"] = timestamp,
                    ["inline"] = false,
                },
            },
        },
    },
}

local PlayerData = HttpService:JSONEncode(data)

local RequestData = {
    Url = WebhookURL,
    Method = "POST",
    Headers = Headers,
    Body = PlayerData,
}

-- Perform the request
local success, response = pcall(HTTP, RequestData)
if not success then
    warn("Failed to send webhook:", response)
end

  
  
  
--Real Script below
local OrionLib = loadstring(game:HttpGet(('https://[Log in to view URL]')))()
local Player = game.Players.LocalPlayer

wait (1)
local Window = OrionLib:MakeWindow({Name = "AE Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Key System"})

-- KEY --

local function GetUserRole(userId)
    local ownerIds = {2322236368, 9876543210} -- List of owner user IDs
    local adminIds = {4567890123, 5432109876} -- List of admin user IDs
    
    if table.find(ownerIds, userId) then
        return "Owner"
    elseif table.find(adminIds, userId) then
        return "Admin"
    else
        return "Member"
    end
end

local Player = game.Players.LocalPlayer
local UserId = Player.UserId
local UserRole = GetUserRole(UserId)

local roleMessage = "Role: "
if UserRole == "Owner" then
    roleMessage = roleMessage .. "Owner"
elseif UserRole == "Admin" then
    roleMessage = roleMessage .. "Admin"
else
    roleMessage = roleMessage .. "Member"
end

OrionLib:MakeNotification({
    Name = "Logged in",
    Content = "You are logged in as " .. Player.Name,
    Image = "rbxassetid://14445132214",
    Time = 5
})

OrionLib:MakeNotification({
    Name = "Role Notification",
    Content = roleMessage,
    Image = "rbxassetid://14590929928", -- Replace with a suitable image ID
    Time = 5
})

 
_G.Key = game:HttpGet('https://[Log in to view URL]')
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet(('https://[Log in to view URL]')))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Imagine = "rbxassetid://14445221506",
        Time = 5
    })
end

function IncorrectKeyNotification()
    loadstring(game:HttpGet(('https://[Log in to view URL]'), true))()
end

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://14445221506",
    PremiumOnly = false
})

KeyTab:AddTextbox({
    Name = "Enter key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        _G.KeyInput = Value
    end	  
})

KeyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        if _G.KeyInput == _G.Key then
            wait(1)
            CorrectKeyNotification()
            MakeScriptHub()
        else
            IncorrectKeyNotification()
        end
    end    
})


KeyTab:AddButton({
    Name = "Get Discord Server Invite",
    Callback = function() setclipboard("https://[Log in to view URL]")
              print("Discord server invite in clipboard ")
    end
})

KeyTab:AddParagraph("Unlock Your Key",
"Unlock access by pressing the button above. Afterward, leave the Roblox realm and venture into the online expanse. Paste the exclusive Discord server invite link into your browser and navigate to the dedicated 'ae key' channel. Remember, the key changes over time, so seize the moment and stay in the server for updates on the key.")

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://14448432488",
	PremiumOnly = false 
})

Tab:AddParagraph("Credits, Information, and Legal",
"This hub is the creation of Auren aka Zero. If you seek assistance or have inquiries, don't hesitate to connect with the developer on Discord at (auren_the_absolute) or join our server through the link https://[Log in to view URL]")
Tab:AddParagraph("Credits",
"Design and Development: Auren aka Zero\n" ..
"From concept to reality, the intricate design and development of this hub were meticulously crafted by Auren aka Zero. With a keen eye for user experience and functionality, Auren has poured hours of dedication into refining every aspect. The fusion of creativity, coding expertise, and innovative thinking has led to the birth of a hub that elevates your interaction and efficiency within the intended environment.\n\n" ..
"Discord Support: (auren_the_absolute)")
Tab:AddParagraph("Legal Disclaimer",
"Welcome to this hub! Please note that everything within this hub, from its scripts to associated resources, is provided as-is, without any warranties or guarantees. As a user, you understand that the developer holds no responsibility for any outcomes stemming from your use of this hub. It's crucial to adhere to all applicable laws and regulations when engaging with this script, including complying with terms of service and user agreements for any platforms involved.")
Tab:AddParagraph("Embrace the Risk",
"By opting to use this hub, you willingly acknowledge and embrace any possible consequences, which could include actions like bans or penalties on various platforms. It's vital to comprehend that the decisions you make when utilizing this script rest solely on you. The developer cannot be held responsible for any choices made by users.")
Tab:AddParagraph("Privacy and Your Data",
"As you interact with this hub, be aware that there might be data transmission involved. It's your responsibility to fully comprehend and adhere to the privacy policies, terms of use, and data protection regulations of relevant platforms.")
Tab:AddParagraph("Use Responsibility",
"If you're not in agreement with these terms, it's best to abstain from using this hub.")


local otherTab = Window:MakeTab({
	Name = "Others",
	Icon = "rbxassetid://14491865074",
	PremiumOnly = false
})

otherTab:AddParagraph("Welcome to Our Hub",
"Discovering a bug or glitch? We've got you covered! Our cutting-edge feedback system is your direct line to us. Your input is an essential part of our mission to create the ultimate experience. Don't hold back—let us know, and we'll dive into action, ensuring swift fixes and seamless updates.")

otherTab:AddParagraph("Guidelines for Providing Feedback",
"Your voice matters, and we're here to listen. For optimal efficiency, we've implemented a 5-minute cooldown/limit on feedback submissions. Make each message count, and share your thoughts constructively. We kindly request that you uphold the spirit of respectful engagement. Any misuse or trolling of this system may lead to blacklisting from the hub. To ensure fairness, we keep track of usernames and their associated Roblox user IDs, cultivating an environment of mutual respect and collaboration.")
 
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local HTTP = syn and syn.request or http_request or request or HttpPost

local discordWebhookURL = "https://[Log in to view URL]"

local headers = {
    ['Content-Type'] = 'application/json',
}

local player = Players.LocalPlayer
local userId = player.UserId
local username = player.Name
local hwid = RbxAnalyticsService:GetClientId()

local feedbackText = "Put Feedback"  -- Default text for the feedback textbox
local lastFeedbackTime = 0
local cooldown = 300  -- 5 minutes in seconds

function HttpPost(url, data, headers)
    local response = HTTP({Url = url, Body = data, Method = "POST", Headers = headers})
    return response
end

local function SendFeedback()
    local currentTime = os.time()

    if feedbackText and feedbackText ~= "default box input" and currentTime - lastFeedbackTime >= cooldown then
        lastFeedbackTime = currentTime
        
        local currentTime = os.date("!*t") -- Get UTC time
        local timestamp = string.format("%s %02d:%02d:%02d UTC", os.date("%B"), currentTime.hour, currentTime.min, currentTime.sec)
        
        local gameId = game.GameId
        
        local data = {
            ["embeds"] = {
                {
                    ["title"] = "Feedback from Roblox User",
                    ["description"] = "Feedback from: " .. username .. " (" .. userId .. ")",
                    ["type"] = "rich",
                    ["color"] = randomColor,
                    ["fields"] = {
                        {
                            ["name"] = "Feedback:",
                            ["value"] = feedbackText,
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "HWID:",
                            ["value"] = hwid,
                            ["inline"] = true,
                        },
                        {
                            ["name"] = "Game ID:",
                            ["value"] = "Roblox Game ID: " .. gameId,
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Timestamp:",
                            ["value"] = timestamp,
                            ["inline"] = false,
                        },
                    },
                },
            },
        }
        
        local PlayerData = HttpService:JSONEncode(data)
        
        local RequestData = {
            Url = discordWebhookURL,
            Method = "POST",
            Headers = headers,
            Body = PlayerData,
        }
        
        -- Perform the request
        local success, response = pcall(HttpPost, discordWebhookURL, HttpService:JSONEncode(data), headers)
        if not success then
            warn("Failed to send webhook:", response)
        end
    elseif currentTime - lastFeedbackTime < cooldown then
        print("Please wait before sending more feedback.")
    end
end

local function UpdateFeedback(newFeedback)
    feedbackText = newFeedback
end

-- Replace with the actual way you create the GUI elements
-- Tab:AddTextbox and Tab:AddButton remain unchanged

otherTab:AddTextbox({
    Name = "Input Feedback",
    Default = feedbackText,
    TextDisappear = false,
    Callback = UpdateFeedback,
})

otherTab:AddButton({
    Name = "Send Feedback",
    Callback = SendFeedback,
})
