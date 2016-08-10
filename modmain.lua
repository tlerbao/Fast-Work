--------------------------------------------------
---- This Mod By Talent. 327358@QQ.com
--------------------------------------------------
ACTIONS = GLOBAL.ACTIONS

--------------------------------------------------
---- Quick Pick 
--------------------------------------------------
if GetModConfigData("QuickPick") ~= false then
	local function QuickPick(inst)
		if inst.components.pickable then
			inst.components.pickable.quickpick = true
		end
	end

	AddPrefabPostInit("berrybush", QuickPick)
	AddPrefabPostInit("berrybush2", QuickPick)
	AddPrefabPostInit("blue_mushroom", QuickPick)
	AddPrefabPostInit("cactus", QuickPick)
	AddPrefabPostInit("cave_banana_tree", QuickPick)
	AddPrefabPostInit("flower_cave", QuickPick)
	AddPrefabPostInit("flower_cave_double", QuickPick)
	AddPrefabPostInit("flower_cave_triple", QuickPick)
	AddPrefabPostInit("grass", QuickPick)
	AddPrefabPostInit("green_mushroom", QuickPick)
	AddPrefabPostInit("lichen", QuickPick)
	AddPrefabPostInit("marsh_bush", QuickPick)
	AddPrefabPostInit("red_mushroom", QuickPick)
	AddPrefabPostInit("reeds", QuickPick)
	AddPrefabPostInit("sapling", QuickPick)
	AddPrefabPostInit("limpetrock", QuickPick)
	AddPrefabPostInit("seaweed_planted", QuickPick)
	AddPrefabPostInit("coffeebush", QuickPick)
end
--------------------------------------------------
---- Faster Chopping
--------------------------------------------------
--[[Aex]]
if GetModConfigData("AxeState") == true then
	
	local function AxeChop(inst)
		inst.components.tool:SetAction(ACTIONS.CHOP, 15)
	end

	AddPrefabPostInit( "axe", AxeChop )
	AddPrefabPostInit( "goldenaxe", AxeChop )
	AddPrefabPostInit( "obsidianaxe", AxeChop )
	AddPrefabPostInit( "multitool_axe_pickaxe", AxeChop )
end
--[[PickAxe]]
if GetModConfigData("PickAxeState") == true then
	local function PickAxeChop(inst)
		inst.components.tool:SetAction(ACTIONS.MINE, 8)
	end
	
	AddPrefabPostInit( "pickaxe", PickAxeChop )
	AddPrefabPostInit( "goldenpickaxe", PickAxeChop )
end
--[[Hammer]]
if GetModConfigData("HammerState") == true then
	local function HammerChop(inst)
		inst.components.tool:SetAction(ACTIONS.HAMMER, 15)
	end
	
	AddPrefabPostInit( "hammer", HammerChop )
end
--[[Machete]]
if GetModConfigData("MacheteState") == true then
	local function MacheteChop(inst)
		inst.components.tool:SetAction(ACTIONS.HACK, 15)
	end
	
	AddPrefabPostInit( "machete", MacheteChop )
	AddPrefabPostInit( "goldenmachete", MacheteChop )
	AddPrefabPostInit( "obsidianmachete", MacheteChop )
end
--[[Fishingrod]]
if GetModConfigData("FishState") == true then
	local function FishingrodChop(inst)
		inst.components.fishingrod:SetWaitTimes(0, 0)
	end
	
	AddPrefabPostInit( "fishingrod", FishingrodChop )
end
--------------------------------------------------
---- Fast Cook (Second)
--------------------------------------------------
if GetModConfigData("CookTime") ~= 999 then
	GLOBAL.TUNING.BASE_COOK_TIME = GetModConfigData("CookTime")
end
--------------------------------------------------
---- Fast Build
--------------------------------------------------
if GetModConfigData("BuildState") == true then
	AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(GLOBAL.ACTIONS.BUILD, "doshortaction"))
end

