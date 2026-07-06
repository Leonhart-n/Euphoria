local function loadUI()
    local success, errorMessage = pcall(function()
        local url = "https://raw.githubusercontent.com/Leonhart-n/Euphoria/refs/heads/main/Library/ui_background.luau"
        local scriptSource = game:HttpGet(url)
        loadstring(scriptSource)()
    end)

    if not success then
        warn("Failed to load UI: " .. tostring(errorMessage))
    end
end

loadUI()