-- [[ YUTA VIP PREMIUM HUB - ENGLISH VERSION ]]
-- Optimized for Android 15 & All Devices

print("YUTA VIP HUB SUCCESSFULLY LOADED!")

-- 1. NOTIFICATION SYSTEM
game.StarterGui:SetCore("SendNotification", {
    Title = "YUTA VIP HUB",
    Text = "Easter Event Script Activated!",
    Duration = 5
})

-- 2. AUTO X-RAY SYSTEM (HIGHLIGHT EGGS)
task.spawn(function()
    while task.wait(2) do
        pcall(function()
            for i,v in pairs(workspace:GetDescendants()) do
                if (v.Name:find("Egg") or v.Name:find("Candy")) and v:IsA("BasePart") then
                    if not v:FindFirstChild("YutaGlow") then
                        local highlight = Instance.new("Highlight", v)
                        highlight.Name = "YutaGlow"
                        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Bright Red
                        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    end
                end
            end
        end)
    end
end)

-- 3. ANTI-AFK SYSTEM
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

print("--- HAPPY HUNTING YUTA ---")
