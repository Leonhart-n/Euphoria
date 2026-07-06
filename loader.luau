-- Load the UI script
local function loadUI()
    local success, errorMessage = pcall(function()
        local uiScript = game:GetService("InsertService"):LoadLocalAsset("ui_background.luau")
        uiScript.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    end)

    if not success then
        warn("Failed to load UI: " .. errorMessage)
    end
end

-- Execute the function to load the UI
loadUI()
