local folder = workspace.Monedas
local plr = game.Players.LocalPlayer
plr.Character.Humanoid.WalkSpeed = 0
for i, v in pairs(folder:GetChildren()) do
    if v:IsA("BasePart") then
            if v.Transparency == 0 then
                wait()
                plr.Character.HumanoidRootPart.CFrame = v.CFrame
            end
    end
end
for i, v in pairs(folder:GetChildren()) do
    if v:IsA("BasePart") then
        v.Changed:Connect(function()
            if v.Transparency == 0 then
                wait(0.5)
                plr.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end)
    end
end