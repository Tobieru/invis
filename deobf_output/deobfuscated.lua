-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /home/runner/work/invis/invis/deobf_output/decoded.luac 

-- params : ...
-- function num : 0
if _G.a then
  for l_0_3,l_0_4 in pairs(_G.a) do
    l_0_4:Disconnect()
  end
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  _G.a = nil
end
local l_0_5 = nil
repeat
  (task.wait)()
until (game.Players).LocalPlayer
l_0_5 = (game.Players).LocalPlayer
local l_0_6, l_0_7, l_0_8, l_0_9 = nil, nil, nil, nil
local l_0_10 = false
local l_0_11 = {}
;
(function()
  -- function num : 0_0 , upvalues : l_0_7, l_0_5, l_0_8, l_0_9, l_0_11
  if not l_0_5.Character then
    l_0_7 = (l_0_5.CharacterAdded):Wait()
    l_0_8 = l_0_7:WaitForChild("Humanoid")
    l_0_9 = l_0_7:WaitForChild("HumanoidRootPart")
    l_0_11 = {}
    for l_1_3,l_1_4 in pairs(l_0_7:GetDescendants()) do
      -- DECOMPILER ERROR at PC39: Confused about usage of register: R5 in 'UnsetPending'

      if l_1_4:IsA("BasePart") and l_1_4.Transparency == 0 then
        l_0_11[#l_0_11 + 1] = l_1_4
      end
    end
  end
end
)()
;
(function()
  -- function num : 0_3 , upvalues : l_0_10, l_0_11
  local l_4_0 = (Instance.new)("ScreenGui")
  local l_4_1 = (Instance.new)("TextButton")
  l_4_1.Size = (UDim2.new)(0, 100, 0, 50)
  l_4_1.Position = (UDim2.new)(0.5, -50, 0.1, 0)
  l_4_1.Text = "Invisible"
  l_4_1.BackgroundColor3 = (Color3.fromRGB)(255, 0, 0)
  l_4_1.Parent = l_4_0
  l_4_0.Parent = ((game.Players).LocalPlayer):WaitForChild("PlayerGui")
  local l_4_2 = false
  local l_4_3, l_4_4 = nil, nil
  ;
  (l_4_1.InputBegan):Connect(function(l_8_0)
    -- function num : 0_3_3 , upvalues : l_4_2, l_4_3, l_4_4, l_4_1
    if l_8_0.UserInputType == (Enum.UserInputType).MouseButton1 then
      l_4_2 = true
      l_4_3 = l_8_0.Position
      l_4_4 = l_4_1.Position
    end
  end
)
  ;
  (l_4_1.InputChanged):Connect(function(l_7_0)
    -- function num : 0_3_2 , upvalues : l_4_2, l_4_3, l_4_1, l_4_4
    if l_7_0.UserInputType == (Enum.UserInputType).MouseMovement and l_4_2 then
      local l_7_1 = l_7_0.Position - l_4_3
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R2 in 'UnsetPending'

      l_4_1.Position = (UDim2.new)((l_4_4.X).Scale, (l_4_4.X).Offset + l_7_1.X, (l_4_4.Y).Scale, (l_4_4.Y).Offset + l_7_1.Y)
    end
  end
)
  ;
  (l_4_1.InputEnded):Connect(function(l_6_0)
    -- function num : 0_3_1 , upvalues : l_4_2
    if l_6_0.UserInputType == (Enum.UserInputType).MouseButton1 then
      l_4_2 = false
    end
  end
)
  ;
  (l_4_1.MouseButton1Click):Connect(function()
    -- function num : 0_3_0 , upvalues : l_0_10, l_0_11
    l_0_10 = not l_0_10
    for l_5_3,l_5_4 in pairs(l_0_11) do
      l_5_4.Transparency = l_5_4.Transparency == 0 and 0.5 or 0
    end
  end
)
end
)()
do
  local l_0_14 = nil
  ;
  (l_0_5.CharacterAdded):Connect(function()
  -- function num : 0_1 , upvalues : l_0_10, l_0_12, l_0_13
  l_0_10 = false
  l_0_12()
  l_0_13()
end
)
  -- DECOMPILER ERROR at PC75: Confused about usage of register: R10 in 'UnsetPending'

  _G.a = {nil, nil; [1] = ((l_0_5:GetMouse()).KeyDown):Connect(function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_10, l_0_11
  if l_3_0 == "g" then
    l_0_10 = not l_0_10
    for l_3_4,l_3_5 in pairs(l_0_11) do
      l_3_5.Transparency = l_3_5.Transparency == 0 and 0.5 or 0
    end
  end
end
), [2] = ((game:GetService("RunService")).Heartbeat):Connect(function()
  -- function num : 0_4 , upvalues : l_0_10, l_0_9, l_0_8
  if l_0_10 then
    local l_5_0 = l_0_9.CFrame
    local l_5_1 = l_0_8.CameraOffset
    local l_5_2 = l_5_0 * (CFrame.new)(0, -200000, 0)
    local l_5_3 = l_0_8
    local l_5_4 = l_0_9
    l_5_3.CameraOffset = (l_5_2:ToObjectSpace((CFrame.new)(l_5_0.Position))).Position
    l_5_3 = game
    l_5_3, l_5_4 = l_5_3:GetService, l_5_3
    l_5_3 = l_5_3(l_5_4, "RunService")
    l_5_3 = l_5_3.RenderStepped
    l_5_3, l_5_4 = l_5_3:Wait, l_5_3
    l_5_3(l_5_4)
    l_5_3 = l_0_8
    l_5_4 = l_0_9
    l_5_3.CameraOffset = l_5_1
  end
end
)}
  -- DECOMPILER ERROR at PC76: freeLocal<0 in 'ReleaseLocals'

end

