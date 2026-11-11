
local LINK = "https://link-target.net/1284584/pS6KKhUb1agC"

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local Window = Rayfield:CreateWindow({
    name = "Get Script",
    subtitle = "Unlock Access"
})

local Tab = Window:CreateTab({
    name = "Access"
})

Tab:CreateButton({
    name = "Copy Link",
    description = "Complete the link to get the script for the game.",
    callback = function()
        if setclipboard then
            setclipboard(LINK)
            Window:Notify({
                title = "Link Copied",
                content = "Open the link and complete the steps to get the script."
            })
        end
    end
})
