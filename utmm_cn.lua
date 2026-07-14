repeat wait() until game:IsLoaded()
_G.RayfieldTheme = "Red"
local rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local ws = game:GetService("Workspace")
local pls = game:GetService("Players")
local cl = pls.LocalPlayer
local rs = game:GetService("RunService")
local lg = game:GetService("Lighting")
local cam = ws.CurrentCamera

function fn(number)
    local ok, val = pcall(function() return tonumber(number) or 0 end)
    if not ok then return "0" end
    local absNumber = math.abs(val)
    local formattedNumber; local suffix = ""
    if absNumber >= 1e100 then formattedNumber = val / 1e100; suffix = "G"
    elseif absNumber >= 1e97 then formattedNumber = val / 1e97; suffix = "Tg"
    elseif absNumber >= 1e94 then formattedNumber = val / 1e94; suffix = "Dg"
    elseif absNumber >= 1e91 then formattedNumber = val / 1e91; suffix = "Ug"
    elseif absNumber >= 1e88 then formattedNumber = val / 1e88; suffix = "Og"
    elseif absNumber >= 1e85 then formattedNumber = val / 1e85; suffix = "Sg"
    elseif absNumber >= 1e82 then formattedNumber = val / 1e82; suffix = "sg"
    elseif absNumber >= 1e79 then formattedNumber = val / 1e79; suffix = "Qg"
    elseif absNumber >= 1e76 then formattedNumber = val / 1e76; suffix = "qg"
    elseif absNumber >= 1e73 then formattedNumber = val / 1e73; suffix = "Tg"
    elseif absNumber >= 1e70 then formattedNumber = val / 1e70; suffix = "Dg"
    elseif absNumber >= 1e67 then formattedNumber = val / 1e67; suffix = "Ug"
    elseif absNumber >= 1e64 then formattedNumber = val / 1e64; suffix = "V"
    elseif absNumber >= 1e61 then formattedNumber = val / 1e61; suffix = "NV"
    elseif absNumber >= 1e58 then formattedNumber = val / 1e58; suffix = "OV"
    elseif absNumber >= 1e55 then formattedNumber = val / 1e55; suffix = "SV"
    elseif absNumber >= 1e52 then formattedNumber = val / 1e52; suffix = "sV"
    elseif absNumber >= 1e49 then formattedNumber = val / 1e49; suffix = "QV"
    elseif absNumber >= 1e46 then formattedNumber = val / 1e46; suffix = "qV"
    elseif absNumber >= 1e43 then formattedNumber = val / 1e43; suffix = "TV"
    elseif absNumber >= 1e40 then formattedNumber = val / 1e40; suffix = "DV"
    elseif absNumber >= 1e37 then formattedNumber = val / 1e37; suffix = "UV"
    elseif absNumber >= 1e34 then formattedNumber = val / 1e34; suffix = "D"
    elseif absNumber >= 1e31 then formattedNumber = val / 1e31; suffix = "N"
    elseif absNumber >= 1e28 then formattedNumber = val / 1e28; suffix = "O"
    elseif absNumber >= 1e25 then formattedNumber = val / 1e25; suffix = "S"
    elseif absNumber >= 1e22 then formattedNumber = val / 1e22; suffix = "s"
    elseif absNumber >= 1e19 then formattedNumber = val / 1e19; suffix = "Q"
    elseif absNumber >= 1e16 then formattedNumber = val / 1e16; suffix = "q"
    elseif absNumber >= 1e13 then formattedNumber = val / 1e13; suffix = "t"
    elseif absNumber >= 1e10 then formattedNumber = val / 1e10; suffix = "B"
    elseif absNumber >= 1e7 then formattedNumber = val / 1e7; suffix = "M"
    elseif absNumber >= 1e4 then formattedNumber = val / 1e4; suffix = "K"
    else formattedNumber = val end
    if formattedNumber % 1 ~= 0 then formattedNumber = string.format("%.1f", formattedNumber) end
    return formattedNumber .. suffix
end

local safezonepart
pcall(function()
    safezonepart = Instance.new("Part")
    safezonepart.Size = Vector3.new(100,2,100)
    safezonepart.Position = Vector3.new(math.random(9999,99999),math.random(9999,99999),math.random(9999,99999))
    safezonepart.CanCollide = true; safezonepart.Material = "ForceField"; safezonepart.Anchored = true
    safezonepart.Transparency = .9; safezonepart.Color = Color3.new(1,0,0); safezonepart.Parent = ws
end)

_G.SD = {}
_G.SD.rayfield = rayfield; _G.SD.ws = ws; _G.SD.pls = pls; _G.SD.cl = cl
_G.SD.rs = rs; _G.SD.lg = lg; _G.SD.cam = cam; _G.SD.fn = fn; _G.SD.safezonepart = safezonepart

_G.SD.items = {weapons = {}, foods = {}, armors = {}, souls = {}}
_G.SD.var = {soul = "", ssh = nil, sshl = nil, lm = nil, gettool = nil, hitaura = nil,
    hital = nil, mrt = nil, bf = nil, km = "Instant-kill", smultiv = 6, smulti = nil,
    afboss = nil, afbosse = nil, af = nil, afl = nil, godmode = nil, ar = nil, arl = nil,
    wep = "", armor = "", food = "", shops = {}, shop = "", bosses = {}, boss = nil,
    oldboss = false, noatk = nil, ausb = nil, ausbl = nil, remotet = {"Special","Fire"},
    fontlist = {"Legacy","Arial","ArialBold","SourceSans","SourceSansBold","SourceSansSemibold",
    "Bodoni","Garamond","Cartoon","Code","Highway","SciFi","Arcade","Fantasy","Antique",
    "Gotham","GothamBold","GothamBlack","AmaticSC","Bangers","Creepster","DenkOne",
    "Fondamento","Fredericka","IndieFlower","JosefinSans","Jura","Kalam","LuckiestGuy",
    "Merriweather","Michroma","Nunito","Oswald","PatrickHand","PermanentMarker","Roboto","SpecialElite"}}

_G.SD.Window = rayfield:CreateWindow({
   Name = "通用脚本 中文版", LoadingTitle = "加载中...", LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "BigHub"},
   Discord = {Enabled = true, Invite = "Mr9u7243MQ", RememberJoins = true},
   KeySystem = false
})

function notify(title, content, image)
    pcall(function() rayfield:Notify({Title = title, Content = content, Duration = 3, Image = image}) end)
end
_G.SD.notify = notify

print("[Script 1/4] OK")
repeat wait() until _G.SD
local sd = _G.SD
local ws = sd.ws; local cl = sd.cl; local rs = sd.rs; local lg = sd.lg
local var = sd.var; local items = sd.items; local fn = sd.fn; local notify = sd.notify

pcall(function()
    for _,v in next,game:GetService("ReplicatedStorage"):GetChildren() do
      if v:IsA("RemoteEvent") and v:FindFirstChild("__FUNCTION") then
        local DEBUG = false; local Hooked = {}; local Detected, Kill
        pcall(function() setthreadidentity(2) end)
        for i, v in getgc(true) do
            if typeof(v) == "table" then
                local DetectFunc = rawget(v, "Detected"); local KillFunc = rawget(v, "Kill")
                if typeof(DetectFunc) == "function" and not Detected then
                    Detected = DetectFunc
                    local Old; Old = hookfunction(Detected, function(Action, Info, NoCrash)
                        if Action ~= "_" then if DEBUG then warn("反作弊检测") end end
                        return true end)
                    table.insert(Hooked, Detected)
                end
                if rawget(v, "Variables") and rawget(v, "Process") and typeof(KillFunc) == "function" and not Kill then
                    Kill = KillFunc
                    local Old; Old = hookfunction(Kill, function(Info) if DEBUG then warn("反作弊尝试击杀") end end)
                    table.insert(Hooked, Kill)
                end
            end
        end
        local Old; Old = hookfunction(getrenv().debug.info, newcclosure(function(...)
            local LevelOrFunc, Info = ...
            if Detected and LevelOrFunc == Detected then return coroutine.yield(coroutine.running()) end
            return Old(...) end))
        pcall(function() setthreadidentity(7) end)
      end
    end
end)

pcall(function()
    local gameMetaTable = getrawmetatable(game)
    setreadonly(gameMetaTable, false)
    local oldMetaTable = gameMetaTable.__namecall
    local CallingScript = nil
    pcall(function() CallingScript = game:GetService("Players").LocalPlayer.PlayerGui.Handler end)
    pcall(function()
        game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(item)
            if item.ClassName == "LocalScript" and item.Name == "Handler" then CallingScript = item end
        end)
    end)
    gameMetaTable.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        if var.godmode and CallingScript and method == "FireServer" and getcallingscript() == CallingScript then return nil end
        return oldMetaTable(self,...) end)
end)

pcall(function()
    local mt = getrawmetatable(game); local old2 = mt.__namecall; setreadonly(mt, false)
    mt.__namecall = function(uh, ...)
      local args = {...}; local method = getnamecallmethod()
      if var.smulti and (method == "InvokeServer" or method == "FireServer") then
        local matched = false
        for _, v in next, var.remotet do if uh.Name == v then matched = true; break end end
        if matched then for i = 1, var.smultiv do old2(uh, ...) end end
      end
      return old2(uh, ...) end
    setreadonly(mt, true)
end)

local function getVal(obj, default)
    if not obj then return default end
    local ok, v = pcall(function() return obj.Value end)
    if ok then return v end
    return default
end

pcall(function()
    for _,v in ipairs(lg.Armor:GetChildren()) do
        if v:FindFirstChild("Onsale") and getVal(v.Onsale, false) == true then
            table.insert(items.armors, (v:FindFirstChild("ArmorName") and getVal(v.ArmorName, "?") or "?")
                .. " | 价格: " .. tostring(fn(getVal(v.Cost, 0)))
                .. " | 血量: " .. tostring(fn(getVal(v.HPBonus, 0))))
        end
    end
    for _,v in ipairs(lg.Weapons:GetChildren()) do
        if v:FindFirstChild("Onsale") and getVal(v.Onsale, false) == true then
            local dmg = 0
            if v:FindFirstChild("Tool") then
                local tool = v.Tool:FindFirstChildOfClass("Tool")
                if tool then
                    local d = tool:FindFirstChild("Damage")
                    if d then dmg = getVal(d, 0) end
                end
            end
            table.insert(items.weapons, (v:FindFirstChild("WeaponName") and getVal(v.WeaponName, "?") or "?")
                .. " | 价格: " .. tostring(fn(getVal(v.Cost, 0)))
                .. " | 伤害: " .. tostring(fn(dmg)))
        end
    end
    for _,v in ipairs(lg.SOULs:GetChildren()) do
        if v:FindFirstChild("Onsale") and getVal(v.Onsale, false) == true and getVal(v.Fragments, 0) == 0 then
            table.insert(items.souls, (v:FindFirstChild("SoulName") and getVal(v.SoulName, "?") or "?")
                .. " | 价格: " .. tostring(fn(getVal(v.Cost, 0))))
        end
    end
    for _,v in ipairs(lg.Food:GetChildren()) do
        if v:FindFirstChild("Onsale") and getVal(v.Onsale, false) == true then
            local heal = 0
            if v:FindFirstChild("Tool") then
                local tool = v.Tool:FindFirstChildOfClass("Tool")
                if tool then
                    local h = tool:FindFirstChild("Heal")
                    if h then heal = getVal(h, 0) end
                end
            end
            table.insert(items.foods, (v:FindFirstChild("FoodName") and getVal(v.FoodName, "?") or "?")
                .. " | 价格: " .. tostring(fn(getVal(v.Cost, 0)))
                .. " | 治疗: " .. tostring(fn(heal)))
        end
    end
    if ws:FindFirstChild("Shops") then
        for _,v in ipairs(ws.Shops:GetChildren()) do
            if v:IsA("BasePart") then table.insert(var.shops, v.Name) end
        end
    end
end)

function getitemname(name)
    if not name then return "无" end
    for _, v in pairs(lg:GetDescendants()) do
        if v.Name == name and v:IsA("Folder") then
            local suc, result = pcall(function()
                if v:FindFirstChild("WeaponName") then return getVal(v.WeaponName, "?")
                elseif v:FindFirstChild("ArmorName") then return getVal(v.ArmorName, "?")
                elseif v:FindFirstChild("FoodName") then return getVal(v.FoodName, "?")
                elseif v:FindFirstChild("SoulName") then return getVal(v.SoulName, "?") end
            end)
            if suc and result ~= nil then return result end
        end
    end
    return "无"
end

-- 扫描首领 (保存原始数据用于排序)
sd.bossData = {}
pcall(function()
    if lg:FindFirstChild("Battles") then
        for _,v in ipairs(lg.Battles:GetChildren()) do
            if v:FindFirstChild("BattleName") then
                local bname = getVal(v.BattleName, "?")
                local lv = getVal(v:FindFirstChild("LOVE"), 0)
                local rst = getVal(v:FindFirstChild("Resets"), 0)
                local trst = getVal(v:FindFirstChild("TrueReset"), 0)
                local rw = "无"
                if v:FindFirstChild("RewardWeapon") then rw = getitemname(tostring(getVal(v.RewardWeapon, ""))) end
                local str = bname .. " | 等级: " .. tostring(fn(lv)) .. " | 重置: " .. tostring(fn(rst)) .. " | 真重置: " .. tostring(fn(trst)) .. " | 奖励: " .. rw
                table.insert(var.bosses, str)
                table.insert(sd.bossData, {name=bname, love=lv, resets=rst, trueReset=trst, reward=rw, display=str})
            end
        end
    end
end)

pcall(function() for _,v in next,lg:GetChildren() do if v.Name:match("~<>~6999") then v.Name = v.Name:gsub("~<>~6999","") end end end)

ws.DescendantAdded:Connect(function(v)
    task.spawn(function()
        pcall(function()
            if v.Name == "Players" and v:FindFirstChild(cl.Name) and v.Parent and v.Parent:IsA("Model")
               and v.Parent.Parent and v.Parent.Parent:IsA("Folder") and v.Parent.Parent.Name == "Stuff" then
                var.bf = v.Parent.Parent
                v.Parent.Parent.AncestryChanged:Connect(function(_, parent) if not parent then var.bf = nil end end)
            end
        end)
    end)
end)
ws.DescendantRemoving:Connect(function(v)
    pcall(function() if v.Name == "Stuff" and v:IsA("Folder") then var.bf = nil end end)
end)

local function hookCharacter(char)
    if not char then return end
    char.DescendantAdded:Connect(function(v)
        task.spawn(function()
            pcall(function()
                if v:IsA("TouchTransmitter") and v.Parent and v.Parent:IsA("BasePart") then
                    local tool = char:FindFirstChildOfClass("Tool")
                    if tool and v:IsDescendantOf(tool) then var.gettool = v.Parent end
                end
            end)
        end)
    end)
    char.DescendantRemoving:Connect(function(v)
        pcall(function() if v:IsA("Tool") then var.gettool = nil end end)
    end)
end

if cl.Character then hookCharacter(cl.Character) end
cl.CharacterAdded:Connect(function(m) task.spawn(function() hookCharacter(m) end) end)

print("[Script 2/4] OK")
repeat wait() until _G.SD
local sd = _G.SD
local ws = sd.ws; local cl = sd.cl; local rs = sd.rs; local lg = sd.lg; local cam = sd.cam
local var = sd.var; local safezonepart = sd.safezonepart; local Window = sd.Window
local notify = sd.notify

local Tab = Window:CreateTab("主菜单", 4483362458)

local function getText(obj)
    if not obj then return nil end
    local ok, val = pcall(function() return obj.Text end)
    if ok and type(val) == "string" and #val > 0 then return val end
    ok, val = pcall(function() return obj.Value end)
    if ok and type(val) == "string" and #val > 0 then return val end
    if ok and val ~= nil then return tostring(val) end
    return nil
end

local function getNum(obj, def)
    if not obj then return def end
    local ok, val = pcall(function() return obj.Value end)
    if ok and type(val) == "number" then return val end
    return def
end

local function safeFire(part, mode)
    if not part or not cl.Character then return false end
    local hrp = cl.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    local ok = pcall(function() firetouchinterest(part, hrp, mode) end)
    return ok
end

local function killAllInBF()
    if not var.bf then return end
    pcall(function() sethiddenproperty(cl, "MaxSimulationRadius", 9e10) end)
    pcall(function() sethiddenproperty(cl, "SimulationRadius", 9e10) end)
    pcall(function()
        for _,m in next,var.bf:GetChildren() do
            if m:IsA("Model") then
                local hum = m:FindFirstChildOfClass("Humanoid")
                if hum then pcall(function() hum:ChangeState(Enum.HumanoidStateType.Dead) end) end
            end
        end
    end)
end

Tab:CreateToggle({
    Name = "攻击光环", CurrentValue = false, Flag = "hitura_v6",
    Callback = function(Value)
        var.hitaura = Value
        if Value then
            var.hital = rs.Stepped:Connect(function()
                task.spawn(function()
                    if not var.bf or not var.gettool or not cl.Character then return end
                    for _, v in next, var.bf:GetChildren() do
                        pcall(function()
                            if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                                local hum = v:FindFirstChildOfClass("Humanoid")
                                local hp = getNum(hum, 0)
                                if hum and hp > 0 and not v:FindFirstChildOfClass("ForceField") then
                                    local hrp = v:FindFirstChild("HumanoidRootPart")
                                    local tool = cl.Character:FindFirstChildOfClass("Tool")
                                    pcall(function() firetouchinterest(var.gettool, hrp, 0); firetouchinterest(var.gettool, hrp, 1) end)
                                    if tool then pcall(function() tool:Activate() end) end
                                end
                            end
                        end)
                    end
                end)
            end)
        else
            if var.hital then pcall(function() var.hital:Disconnect() end); var.hital = nil end
        end
    end,
})

Tab:CreateButton({
   Name = "一键秒杀",
   Callback = function() killAllInBF(); notify("战斗", "已尝试秒杀敌人") end,
})

Tab:CreateToggle({
    Name = "无敌模式", CurrentValue = false, Flag = "Godmode_v6",
    Callback = function(Value) var.godmode = Value; notify("状态", "无敌模式: " .. (Value and "开" or "关")) end,
})

Tab:CreateToggle({
   Name = "禁用攻击", CurrentValue = false, Flag = "Noattack_v6",
   Callback = function(Value)
      var.noatk = Value
      pcall(function()
          if Value then
              for _, v in next, lg:GetChildren() do
                  if v:IsA("BasePart") or v:IsA("Model") then v.Name = v.Name .. "~<>~6999" end
                  if v.Name == "Assets" or v.Name == "Asset" then v.Name = v.Name .. "~<>~6999" end
              end
          else
              for _,v in next,lg:GetChildren() do if v.Name:match("~<>~6999") then v.Name = v.Name:gsub("~<>~6999","") end end
          end
      end)
   end,
})

Tab:CreateToggle({
   Name = "自动重置", CurrentValue = false, Flag = "E_v6",
   Callback = function(Value)
      var.ar = Value
      if Value then
          var.arl = rs.Stepped:Connect(function() task.spawn(function()
              pcall(function() if cl.Character and lg:FindFirstChild("Reset") and lg.Reset:IsA("RemoteEvent") then lg.Reset:FireServer() end end)
          end) end)
      else
          if var.arl then pcall(function() var.arl:Disconnect() end); var.arl = nil end
      end
   end,
})

Tab:CreateToggle({Name = "召唤倍率", CurrentValue = false, Flag = "Summonmulti_v6", Callback = function(Value) var.smulti = Value end})
Tab:CreateInput({Name = "倍率数值", PlaceholderText = "5", RemoveTextAfterFocusLost = false, Callback = function(Text) var.smultiv = tonumber(Text) or 6; pcall(function() game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge) end) end})

if #var.bosses > 0 then
Tab:CreateSection("首领/自动挂机")

local bossNameToPart = {}
local bossOriginalCFrame = {}
local playerOriginalCFrame = nil
local challengedBosses = {}
local sortOrder = "asc"

-- 阶段判定函数
local function getPhase(b)
    local L = b.love or 0
    local R = b.resets or 0
    local T = b.trueReset or 0
    if L > 0 and R == 0 and T == 0 then return 1 end     -- 只有等级
    if L > 0 and R > 0 and T == 0 then return 2 end     -- 等级+重置
    if L > 0 and R > 0 and T > 0 then return 3 end     -- 等级+重置+真重置
    return 0  -- 其他
end

local function sortBosses(order)
    if not sd.bossData or #sd.bossData == 0 then return var.bosses end
    local copy = {}
    for _,b in ipairs(sd.bossData) do table.insert(copy, b) end
    if order == "asc" then
        table.sort(copy, function(a,b)
            local pa = getPhase(a); local pb = getPhase(b)
            if pa ~= pb then return pa < pb end
            if a.resets ~= b.resets then return a.resets < b.resets end
            if a.trueReset ~= b.trueReset then return a.trueReset < b.trueReset end
            return a.love < b.love
        end)
    else
        table.sort(copy, function(a,b)
            local pa = getPhase(a); local pb = getPhase(b)
            if pa ~= pb then return pa > pb end
            if a.resets ~= b.resets then return a.resets > b.resets end
            if a.trueReset ~= b.trueReset then return a.trueReset > b.trueReset end
            return a.love > b.love
        end)
    end
    local result = {}
    for _,b in ipairs(copy) do table.insert(result, b.display) end
    return result
end

local function scanBossParts(async)
    local function doScan()
        local count = 0
        pcall(function()
            for _,v in next,ws:GetDescendants() do
                if v.Name == "BattleInfoGui" and v.Parent and v.Parent:IsA("BasePart") then
                    local mn = v:FindFirstChild("MonsterName") or v:FindFirstChild("MonsterNameText") or v:FindFirstChild("Name") or v:FindFirstChild("TextLabel")
                    local mname = getText(mn)
                    if mname and #mname > 0 and mname ~= "无" and mname ~= " " then
                        bossNameToPart[mname] = v.Parent
                        if not bossOriginalCFrame[mname] then
                            bossOriginalCFrame[mname] = v.Parent.CFrame
                        end
                        count = count + 1
                    end
                end
            end
        end)
        return count
    end
    if async then
        task.spawn(function() local c = doScan(); notify("扫描", "找到 " .. c .. " 个首领") end)
    else
        return doScan()
    end
end

task.spawn(function()
    local c = 0
    pcall(function()
        for _,v in next,ws:GetDescendants() do
            if v.Name == "BattleInfoGui" and v.Parent and v.Parent:IsA("BasePart") then
                local mn = v:FindFirstChild("MonsterName") or v:FindFirstChild("Name") or v:FindFirstChild("TextLabel")
                local mname = getText(mn)
                if mname and #mname > 0 and mname ~= "无" and mname ~= " " then
                    bossNameToPart[mname] = v.Parent
                    if not bossOriginalCFrame[mname] then
                        bossOriginalCFrame[mname] = v.Parent.CFrame
                    end
                    c = c + 1
                end
            end
        end
    end)
    notify("扫描", "已定位 " .. c .. " 个首领")
end)

Tab:CreateButton({
    Name = "重新扫描首领位置",
    Callback = function() 
        bossNameToPart = {}
        bossOriginalCFrame = {}
        scanBossParts(true) 
    end,
})

-- 默认从小到大
var.bosses = sortBosses("asc")

Tab:CreateButton({
    Name = "切换首领排列顺序 (当前: 从小到大)",
    Callback = function()
        if sortOrder == "asc" then
            sortOrder = "desc"
            var.bosses = sortBosses("desc")
            if bossDropdown then bossDropdown:SetOptions(var.bosses) end
            notify("排序", "已切换为从大到小排列")
        else
            sortOrder = "asc"
            var.bosses = sortBosses("asc")
            if bossDropdown then bossDropdown:SetOptions(var.bosses) end
            notify("排序", "已切换为从小到大排列")
        end
    end,
})

local function extractBossName(opt)
    if type(opt) == "string" then
        local first = string.match(opt, "^[^|]+")
        if first then first = string.gsub(first, "%s+$", "") end
        if first then first = string.gsub(first, "^%s+", "") end
        if first and #first > 0 and first ~= "无" then return first end
        return nil
    elseif type(opt) == "number" then
        local item = var.bosses[opt]
        if type(item) == "string" then
            local first = string.match(item, "^[^|]+")
            if first then first = string.gsub(first, "%s+$", "") end
            if first then first = string.gsub(first, "^%s+", "") end
            if first and #first > 0 then return first end
        end
    elseif type(opt) == "table" then
        for _,key in ipairs({"Name","Label","Value","Text"}) do
            if type(opt[key]) == "string" then return opt[key] end
        end
        for _,v in ipairs(opt) do
            if type(v) == "string" then
                local first = string.match(v, "^[^|]+")
                if first then first = string.gsub(first, "%s+$", "") end
                if first then first = string.gsub(first, "^%s+", "") end
                if first and #first > 0 then return first end
            end
        end
    end
    return nil
end

local bossDropdown = Tab:CreateDropdown({
   Name = "首领列表", Options = var.bosses, CurrentOption = var.bosses[1] or "无", Flag = "Dropdown4_v6",
   Callback = function(Option)
     local ok, err = pcall(function()
         local bossName = extractBossName(Option)
         if not bossName or bossName == "无" or bossName == "" then var.boss = nil; return end
         var.boss = nil
         if bossNameToPart[bossName] then
             var.boss = bossNameToPart[bossName]
         else
             task.spawn(function()
                 local found = false
                 pcall(function()
                     for _,v in next,ws:GetDescendants() do
                         if v.Name == "BattleInfoGui" and v.Parent and v.Parent:IsA("BasePart") then
                             local mn = v:FindFirstChild("MonsterName") or v:FindFirstChild("Name") or v:FindFirstChild("TextLabel")
                             local mname = getText(mn)
                             if mname == bossName then
                                 var.boss = v.Parent
                                 bossNameToPart[bossName] = v.Parent
                                 found = true
                                 break
                             end
                         end
                     end
                 end)
                 if found and var.boss then notify("首领", "已选择: " .. bossName) else notify("错误", "无法定位: " .. bossName) end
             end)
             return
         end
         if var.boss then notify("首领", "已选择: " .. bossName) else notify("错误", "无法定位: " .. bossName) end
     end)
     if not ok then notify("错误", "选择失败: " .. tostring(err)) end
   end,
})

local function restoreBossPosition(bossName)
    if bossName and bossOriginalCFrame[bossName] and bossNameToPart[bossName] then
        pcall(function()
            bossNameToPart[bossName].CFrame = bossOriginalCFrame[bossName]
        end)
    end
end

local function restorePlayerPosition()
    if playerOriginalCFrame and cl.Character and cl.Character:FindFirstChild("HumanoidRootPart") then
        pcall(function()
            cl.Character.HumanoidRootPart.CFrame = playerOriginalCFrame
        end)
        playerOriginalCFrame = nil
    end
end

Tab:CreateButton({
   Name = "挑战选中的首领",
   Callback = function()
      task.spawn(function()
          if not var.boss then notify("错误", "请先选择首领"); return end
          if not cl.Character or not cl.Character:FindFirstChild("HumanoidRootPart") then notify("错误", "角色未就绪"); return end
          
          local bossName = extractBossName(var.boss.Name)
          if not bossName then bossName = var.boss.Name end
          
          if not bossOriginalCFrame[bossName] then
              bossOriginalCFrame[bossName] = var.boss.CFrame
          end
          
          playerOriginalCFrame = cl.Character.HumanoidRootPart.CFrame
          
          table.insert(challengedBosses, {name=bossName, time=os.time()})
          if #challengedBosses > 50 then table.remove(challengedBosses, 1) end
          
          task.spawn(function()
              wait(0.2)
              if challengeHistoryDropdown then
                  challengeHistoryDropdown:SetOptions(getChallengeHistory())
              end
          end)
          
          local ok1 = safeFire(var.boss, 0); wait(0.1); local ok2 = safeFire(var.boss, 1)
          if ok1 and ok2 then 
              notify("战斗", "已进入战斗") 
              task.spawn(function()
                  wait(5)
                  while cl.Character and cl.Character:FindFirstChild("_battle") do
                      wait(1)
                  end
                  restoreBossPosition(bossName)
                  restorePlayerPosition()
              end)
          else 
              notify("警告", "进入战斗失败") 
              restorePlayerPosition()
          end
      end)
   end,
})

Tab:CreateButton({
   Name = "一键秒杀首领",
   Callback = function()
      task.spawn(function()
          if not var.boss then notify("错误", "请先选择首领"); return end
          if cl.Character and cl.Character:FindFirstChild("HumanoidRootPart") then
              safeFire(var.boss, 0); wait(0.1); safeFire(var.boss, 1)
          end
          wait(0.5)
          killAllInBF()
          notify("战斗", "已尝试秒杀首领")
      end)
   end,
})

Tab:CreateSection("挑战记录")

local function getChallengeHistory()
    local history = {}
    for i, v in ipairs(challengedBosses) do
        table.insert(history, v.name .. " | " .. os.date("%H:%M", v.time))
    end
    return history
end

local challengeHistoryDropdown = Tab:CreateDropdown({
   Name = "挑战记录", Options = getChallengeHistory(), CurrentOption = "无", Flag = "ChallengeHistory_v6",
   Callback = function(Option)
       if type(Option) ~= "string" then return end
       local bossName = extractBossName(Option)
       if bossName and bossNameToPart[bossName] then
           var.boss = bossNameToPart[bossName]
           notify("记录", "已选择: " .. bossName)
       end
   end,
})

Tab:CreateButton({
    Name = "刷新挑战记录",
    Callback = function()
        local history = getChallengeHistory()
        if #history == 0 then
            notify("记录", "暂无挑战记录")
        else
            challengeHistoryDropdown:SetOptions(history)
            notify("记录", "已刷新记录")
        end
    end,
})

Tab:CreateButton({
    Name = "清除挑战记录",
    Callback = function()
        challengedBosses = {}
        challengeHistoryDropdown:SetOptions({"无"})
        notify("记录", "已清除所有挑战记录")
    end,
})

Tab:CreateDropdown({
   Name = "击杀方式", Options = {"攻击光环","秒杀","弹射"}, CurrentOption = "秒杀", MultipleOptions = false, Flag = "Dropdown7_v6",
   Callback = function(Option)
     if type(Option) == "table" then return end
     local s = tostring(Option or "")
     if s == "攻击光环" then var.km = "Hit-aura"
     elseif s == "秒杀" then var.km = "Instant-kill"
     else var.km = "Fling" end
     notify("击杀方式", "当前: " .. s)
   end,
})

Tab:CreateToggle({
    Name = "自动挂机选中的首领", CurrentValue = false, Flag = "AutofarmSb_v6",
    Callback = function(Value)
        var.ausb = Value
        if Value then
            if not var.boss then notify("警告", "未选择首领! 请先选择"); var.ausb = false; return end
            if cl.Character and cl.Character:FindFirstChild("HumanoidRootPart") and not playerOriginalCFrame then
                playerOriginalCFrame = cl.Character.HumanoidRootPart.CFrame
            end
            task.spawn(function()
                wait(0.2)
                if var.ausb and cl.Character and cl.Character:FindFirstChild("HumanoidRootPart") then
                    local inBattle = false
                    pcall(function() inBattle = cl.Character:FindFirstChild("_battle") ~= nil end)
                    if not inBattle then
                        safeFire(var.boss, 0); wait(0.1); safeFire(var.boss, 1)
                        notify("战斗", "自动战斗已开始")
                    end
                end
            end)
            var.ausbl = rs.Stepped:Connect(function()
                task.spawn(function()
                    pcall(function()
                        if not cl.Character or not cl.Character:FindFirstChild("HumanoidRootPart") then return end
                        local inBattle = false
                        pcall(function() inBattle = cl.Character:FindFirstChild("_battle") ~= nil end)
                        if not inBattle then
                            safeFire(var.boss, 0); wait(0.1); safeFire(var.boss, 1)
                        else
                            if var.km == "Instant-kill" then
                                killAllInBF()
                            elseif var.km == "Hit-aura" then
                                if var.bf and var.gettool and cl.Character:FindFirstChildOfClass("Tool") then
                                    for _, v in next, var.bf:GetChildren() do
                                        pcall(function()
                                            if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                                                local hum = v:FindFirstChildOfClass("Humanoid")
                                                local hp = getNum(hum, 0)
                                                if hum and hp > 0 then
                                                    local hrp = v:FindFirstChild("HumanoidRootPart")
                                                    if safezonepart then pcall(function() cl.Character:FindFirstChild("HumanoidRootPart").CFrame = safezonepart.CFrame + Vector3.new(0,3,0) end) end
                                                    pcall(function() cam.CameraSubject = v end)
                                                    pcall(function() firetouchinterest(var.gettool, hrp, 0); firetouchinterest(var.gettool, hrp, 1) end)
                                                    pcall(function() cl.Character:FindFirstChildOfClass("Tool"):Activate() end)
                                                end
                                            end
                                        end)
                                    end
                                else
                                    pcall(function()
                                        if cl.Backpack then
                                            for _,v in next,cl.Backpack:GetChildren() do
                                                if v:IsA("Tool") and v:FindFirstChild("Damage") then v.Parent = cl.Character; break end
                                            end
                                        end
                                    end)
                                end
                            else
                                pcall(function()
                                    for _, v in next, cl.Character:GetChildren() do
                                        if v:IsA("BasePart") then v.CanCollide = false; v.Massless = true end
                                    end
                                    local hrp = cl.Character:FindFirstChild("HumanoidRootPart")
                                    if hrp and not hrp:FindFirstChild("HEHEHJSJSKSJSJK") then
                                        local bv = Instance.new("BodyAngularVelocity")
                                        bv.Name = "HEHEHJSJSKSJSJK"; bv.Parent = hrp
                                        bv.AngularVelocity = Vector3.new(0,79000,0); bv.MaxTorque = Vector3.new(0,math.huge,0); bv.P = math.huge
                                    end
                                    if var.bf then
                                        for _, z in next,var.bf:GetChildren() do
                                            pcall(function()
                                                if z:IsA("Model") and z:FindFirstChildOfClass("Humanoid") then
                                                    local hum = z:FindFirstChildOfClass("Humanoid")
                                                    local hp = getNum(hum, 0)
                                                    if hp > 0 then
                                                        local zhrp = z:FindFirstChild("HumanoidRootPart")
                                                        if zhrp then
                                                            pcall(function() cl.Character:FindFirstChild("HumanoidRootPart").Anchored = false end)
                                                            task.wait(0.5)
                                                            pcall(function() cl.Character:FindFirstChild("HumanoidRootPart").CFrame = zhrp.CFrame + Vector3.new(0,2,0) end)
                                                        end
                                                    end
                                                end
                                            end)
                                        end
                                    end
                                end)
                            end
                        end
                        pcall(function()
                            if cl:FindFirstChild("PlayerGui") and cl.PlayerGui:FindFirstChild("InviteGUI")
                               and cl.PlayerGui.InviteGUI:FindFirstChild("Frame") and cl.PlayerGui.InviteGUI.Frame.Visible == true then
                                firesignal(cl.PlayerGui.InviteGUI.Frame:FindFirstChild("Go").MouseButton1Click)
                            end
                        end)
                    end)
                end)
            end)
        else
            if var.ausbl then pcall(function() var.ausbl:Disconnect() end); var.ausbl = nil end
            task.spawn(function()
                wait(0.5)
                restorePlayerPosition()
                if var.boss then
                    local bossName = extractBossName(var.boss.Name)
                    if not bossName then bossName = var.boss.Name end
                    restoreBossPosition(bossName)
                end
            end)
        end
    end,
})

if game.PlaceId == 8994821677 or game.PlaceId == 16058546800 or game.PlaceId == 16770754802 then
Tab:CreateSection("游戏专属挂机")

local bossNamesMap = {
    [8994821677] = {"The secrets"},
    [16058546800] = {"1000 Visits Dummy", "Nightmare"},
    [16770754802] = {"XP Grind Dummy", "VIP GOLD Grind Dummy"}
}
local names = bossNamesMap[game.PlaceId] or {}
pcall(function()
    for _,v in next,ws:GetDescendants() do
        if v.Name == "BattleInfoGui" and v.Parent and v.Parent:IsA("BasePart") then
            local mname = getText(v:FindFirstChild("MonsterName") or v:FindFirstChild("Name") or v:FindFirstChild("TextLabel"))
            if mname then
                if #names >= 1 and mname == names[1] then var.afboss = v.Parent end
                if #names >= 2 and mname == names[2] then var.afbosse = v.Parent end
            end
        end
    end
end)

Tab:CreateToggle({Name = "达到最大重置时停止", CurrentValue = false, Flag = "StopautofarmM_v6", Callback = function(Value) var.mrt = Value end})
Tab:CreateToggle({
   Name = "自动挂机 (本游戏)", CurrentValue = false, Flag = "AutofarmM_v6",
   Callback = function(Value)
      var.af = Value
      if Value then
        var.afl = rs.Stepped:Connect(function()
          task.spawn(function()
            pcall(function()
                if not cl.Character or not cl.Character:FindFirstChild("HumanoidRootPart") then return end
                local loveVal = getNum(cl:FindFirstChild("LOVE"), 0)
                local resetVal = getNum(cl:FindFirstChild("Resets"), 0)
                local goldVal = getNum(cl:FindFirstChild("Gold"), 0)
                local inBattle = false
                pcall(function() inBattle = cl.Character:FindFirstChild("_battle") ~= nil end)
                if var.mrt then
                    if not inBattle and loveVal >= 100 and resetVal < 99 then pcall(function() if lg:FindFirstChild("Reset") then lg.Reset:FireServer() end end) end
                else
                    if not inBattle and loveVal >= 100 then pcall(function() if lg:FindFirstChild("Reset") then lg.Reset:FireServer() end end) end
                end
                if not inBattle then
                    task.wait(1.4)
                    if cl.Character and cl.Character:FindFirstChild("HumanoidRootPart") then
                        if loveVal < 100 then
                            if game.PlaceId == 16770754802 then
                                pcall(function() local args = {[1] = lg.Weapons.Stick}; lg.UseWeapon:FireServer(unpack(args)) end)
                            end
                            safeFire(var.afboss, 0); wait(0.1); safeFire(var.afboss, 1)
                        else
                            if goldVal < 100000 and var.afbosse then
                                safeFire(var.afbosse, 0); wait(0.1); safeFire(var.afbosse, 1)
                            end
                        end
                    end
                else
                    if game.PlaceId == 8994821677 then
                        killAllInBF()
                    else
                        if cl.Character:FindFirstChildOfClass("Tool") then
                            if var.bf and var.gettool then
                                for _, v in next, var.bf:GetChildren() do
                                    pcall(function()
                                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                                            local hum = v:FindFirstChildOfClass("Humanoid")
                                            local hp = getNum(hum, 0)
                                            if hum and hp > 0 then
                                                local hrp = v:FindFirstChild("HumanoidRootPart")
                                                pcall(function() firetouchinterest(var.gettool, hrp, 0); firetouchinterest(var.gettool, hrp, 1) end)
                                                pcall(function() cl.Character:FindFirstChildOfClass("Tool"):Activate() end)
                                            end
                                        end
                                    end)
                                end
                            end
                        else
                            pcall(function()
                                if cl.Backpack then
                                    for _,v in next,cl.Backpack:GetChildren() do
                                        if v:IsA("Tool") and v:FindFirstChild("Damage") then v.Parent = cl.Character; break end
                                    end
                                end
                            end)
                        end
                    end
                end
                pcall(function()
                    if cl:FindFirstChild("PlayerGui") and cl.PlayerGui:FindFirstChild("InviteGUI")
                       and cl.PlayerGui.InviteGUI:FindFirstChild("Frame") and cl.PlayerGui.InviteGUI.Frame.Visible == true then
                        firesignal(cl.PlayerGui.InviteGUI.Frame:FindFirstChild("Go").MouseButton1Click)
                    end
                end)
            end)
          end)
        end)
      else
        if var.afl then pcall(function() var.afl:Disconnect() end); var.afl = nil end
      end
   end,
})
end
end

Tab:CreateSection("其他")
Tab:CreateButton({
   Name = "解锁锁定区域",
   Callback = function()
       local n = 0
       pcall(function()
           for _,v in next,ws:GetDescendants() do
               if (v.Name:lower() == "requirepart" or v.Name:lower() == "lockpart") and v:IsA("BasePart") then
                   v:Destroy(); n = n + 1
               end
           end
       end)
       notify("其他", "已解锁 " .. n .. " 个区域")
   end,
})
if cl:FindFirstChild("Font") then
Tab:CreateDropdown({
   Name = "客户端消息字体", Options = var.fontlist, CurrentOption = "Arcade", MultipleOptions = false, Flag = "Dropdown6_v6",
   Callback = function(Option) if type(Option) == "string" then pcall(function() cl.Font.Value = Option end) end end,
})
end
if cl:FindFirstChild("Voice") then
Tab:CreateInput({
   Name = "客户端消息音效", PlaceholderText = tostring(getNum(cl.Voice, 0)), RemoveTextAfterFocusLost = true,
   Callback = function(Text) pcall(function() cl.Voice.Value = tonumber(Text) end) end,
})
end

print("[Script 3/4] OK")
repeat wait() until _G.SD
local sd = _G.SD
local ws = sd.ws; local cl = sd.cl; local rs = sd.rs; local lg = sd.lg
local var = sd.var; local items = sd.items; local Window = sd.Window
local notify = sd.notify

local function safeFire2(part, mode)
    if not part or not cl.Character then return false end
    local hrp = cl.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    local ok = pcall(function() firetouchinterest(part, hrp, mode) end)
    return ok
end

local Tab2 = Window:CreateTab("物品/商店", 4483362458)
Tab2:CreateSection("商店")

if #var.shops == 0 then
    Tab2:CreateSection("未发现商店")
else
Tab2:CreateDropdown({
   Name = "商店列表", Options = var.shops, CurrentOption = "无", Flag = "Dropdown5_v5",
   Callback = function(Option)
       if type(Option) == "string" then var.shop = Option; notify("商店", "已选择: " .. Option) end
   end,
})

Tab2:CreateToggle({
   Name = "显示选中的商店界面", CurrentValue = false, Flag = "dhow_v5",
   Callback = function(Value)
      var.ssh = Value
      if Value then
        if not var.shop or var.shop == "" or var.shop == "无" then notify("警告", "请先选择商店"); var.ssh = false; return end
        var.sshl = rs.Stepped:Connect(function()
            task.spawn(function()
                pcall(function()
                    if not ws:FindFirstChild("Shops") or not cl.Character or not cl.Character:FindFirstChild("HumanoidRootPart") then return end
                    for _,v in next,ws.Shops:GetChildren() do
                        if v:IsA("BasePart") then
                            if v.Name == var.shop then safeFire2(v, 0) else safeFire2(v, 1) end
                        end
                    end
                end)
            end)
        end)
      else
        pcall(function()
            if ws:FindFirstChild("Shops") and cl.Character then
                for _,v in next,ws.Shops:GetChildren() do if v:IsA("BasePart") then safeFire2(v, 1) end end
            end
        end)
        if var.sshl then pcall(function() var.sshl:Disconnect() end); var.sshl = nil end
      end
   end,
})
end

Tab2:CreateSection("物品")
Tab2:CreateButton({
   Name = "购买所有便宜物品 (Cost<=10000)",
   Callback = function()
      task.spawn(function()
        local bought = 0
        pcall(function()
            for _,v in ipairs(lg.Armor:GetChildren()) do
                if v:FindFirstChild("Cost") and v.Cost.Value <= 10000 then
                    local args = {[1] = v, [2] = "Armor"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); bought = bought + 1; wait(0.05)
                end
            end
            for _,v in ipairs(lg.Weapons:GetChildren()) do
                if v:FindFirstChild("Cost") and v.Cost.Value <= 10000 then
                    local args = {[1] = v, [2] = "Weapon"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); bought = bought + 1; wait(0.05)
                end
            end
            for _,v in ipairs(lg.SOULs:GetChildren()) do
                if v:FindFirstChild("Cost") and v.Cost.Value <= 10000 and v:FindFirstChild("Fragments") and v.Fragments.Value == 0 then
                    local args = {[1] = v, [2] = "SOUL"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); bought = bought + 1; wait(0.05)
                end
            end
            for _,v in ipairs(lg.Food:GetChildren()) do
                if v:FindFirstChild("Cost") and v.Cost.Value <= 10000 then
                    local args = {[1] = v, [2] = "Food"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); bought = bought + 1; wait(0.05)
                end
            end
        end)
        notify("购物", "已尝试购买 " .. bought .. " 件物品")
      end)
   end,
})

if #items.weapons > 0 then
Tab2:CreateDropdown({
   Name = "武器列表", Options = items.weapons, CurrentOption = "无", Flag = "Dropdown1_v5",
   Callback = function(Option)
       if type(Option) ~= "string" then return end
       local first = string.match(Option, "^[^|]+")
       if first then first = string.gsub(first, "%s+$", ""); first = string.gsub(first, "^%s+", "") end
       var.wep = first or ""
   end,
})
Tab2:CreateButton({
   Name = "购买选中的武器",
   Callback = function()
      if not var.wep or var.wep == "无" or var.wep == "" then notify("警告", "请先选择武器"); return end
      task.spawn(function()
        local found = false
        pcall(function()
            for _,v in ipairs(lg.Weapons:GetChildren()) do
                if v:FindFirstChild("Onsale") and v.Onsale.Value and v:FindFirstChild("WeaponName") and v.WeaponName.Value == var.wep then
                    local args = {[1] = v, [2] = "Weapon"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); found = true; break
                end
            end
        end)
        notify("购物", found and ("已购买: " .. var.wep) or "购买失败: " .. var.wep)
      end)
   end,
})
end

if #items.armors > 0 then
Tab2:CreateDropdown({
   Name = "护甲列表", Options = items.armors, CurrentOption = "无", Flag = "Dropdown2_v5",
   Callback = function(Option)
       if type(Option) ~= "string" then return end
       local first = string.match(Option, "^[^|]+")
       if first then first = string.gsub(first, "%s+$", ""); first = string.gsub(first, "^%s+", "") end
       var.armor = first or ""
   end,
})
Tab2:CreateButton({
   Name = "购买选中的护甲",
   Callback = function()
      if not var.armor or var.armor == "无" or var.armor == "" then notify("警告", "请先选择护甲"); return end
      task.spawn(function()
        local found = false
        pcall(function()
            for _,v in ipairs(lg.Armor:GetChildren()) do
                if v:FindFirstChild("Onsale") and v.Onsale.Value and v:FindFirstChild("ArmorName") and v.ArmorName.Value == var.armor then
                    local args = {[1] = v, [2] = "Armor"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); found = true; break
                end
            end
        end)
        notify("购物", found and ("已购买: " .. var.armor) or "购买失败: " .. var.armor)
      end)
   end,
})
end

if #items.foods > 0 then
Tab2:CreateDropdown({
   Name = "食物列表", Options = items.foods, CurrentOption = "无", Flag = "Dropdown3_v5",
   Callback = function(Option)
       if type(Option) ~= "string" then return end
       local first = string.match(Option, "^[^|]+")
       if first then first = string.gsub(first, "%s+$", ""); first = string.gsub(first, "^%s+", "") end
       var.food = first or ""
   end,
})
Tab2:CreateButton({
   Name = "购买选中的食物",
   Callback = function()
      if not var.food or var.food == "无" or var.food == "" then notify("警告", "请先选择食物"); return end
      task.spawn(function()
        local found = false
        pcall(function()
            for _,v in ipairs(lg.Food:GetChildren()) do
                if v:FindFirstChild("Onsale") and v.Onsale.Value and v:FindFirstChild("FoodName") and v.FoodName.Value == var.food then
                    local args = {[1] = v, [2] = "Food"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); found = true; break
                end
            end
        end)
        notify("购物", found and ("已购买: " .. var.food) or "购买失败: " .. var.food)
      end)
   end,
})
end

if #items.souls > 0 then
Tab2:CreateDropdown({
   Name = "灵魂列表", Options = items.souls, CurrentOption = "无", Flag = "DropdownSoul_v5",
   Callback = function(Option)
       if type(Option) ~= "string" then return end
       local first = string.match(Option, "^[^|]+")
       if first then first = string.gsub(first, "%s+$", ""); first = string.gsub(first, "^%s+", "") end
       var.soul = first or ""
   end,
})
Tab2:CreateButton({
   Name = "购买选中的灵魂",
   Callback = function()
      if not var.soul or var.soul == "无" or var.soul == "" then notify("警告", "请先选择灵魂"); return end
      task.spawn(function()
        local found = false
        pcall(function()
            for _,v in ipairs(lg.SOULs:GetChildren()) do
                if v:FindFirstChild("Onsale") and v.Onsale.Value and v:FindFirstChild("SoulName") and v.SoulName.Value == var.soul then
                    local args = {[1] = v, [2] = "SOUL"}; pcall(function() lg.Buy:FireServer(unpack(args)) end); found = true; break
                end
            end
        end)
        notify("购物", found and ("已购买: " .. var.soul) or "购买失败: " .. var.soul)
      end)
   end,
})
end

notify("完成", "脚本已全部加载")
print("[Script 4/4] 全部加载完成!")
