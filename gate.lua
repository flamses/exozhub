local LINKVERTISE = "https://link-hub.net/1284584/OVKCe2ogyOk3"

local Rayfield = loadstring(game:HttpGet(
    "https://sirius.menu/gen2"
))()

local Window = Rayfield:CreateWindow({
    name = "EXOZ",
    subtitle = "Get Access",
    theme = "default",
    sidebarLayout = false,
    showName = "Exoz"
})

local Access = Window:CreateTab({
    name = "Get Access"
})

Access:CreateText({
    name = "How to Get Access",
    text = "1. Click Copy Link below.\n2. Open your browser and paste the link.\n3. Complete the Linkvertise steps.\n4. Join the Discord you're redirected to.\n5. Find the script loader in the Discord channel."
})

Access:CreateButton({
    name = "Copy Link",
    description = "Copy the link to your clipboard.",

    callback = function()
        local clipboard = setclipboard or toclipboard

        if not clipboard then
            Window:Notify({
                title = "Clipboard Unavailable",
                content = "Your executor does not support copying links."
            })
            return
        end

        local success = pcall(clipboard, LINKVERTISE)

        if success then
            Window:Notify({
                title = "Link Copied",
                content = "Paste the link into your browser and complete the steps."
            })
        else
            Window:Notify({
                title = "Copy Failed",
                content = "Unable to copy the link."
            })
        end
    end
})
