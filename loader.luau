local function loadUI()
    local success, errorMessage = pcall(function()
        local url = "https://raw.githubusercontent.com/username/repo/main/ui_background.luau"
        local scriptSource = game:HttpGet(url)
        loadstring(scriptSource)()
    end)

    if not success then
        warn("Failed to load UI: " .. tostring(errorMessage))
    end
end

loadUI()