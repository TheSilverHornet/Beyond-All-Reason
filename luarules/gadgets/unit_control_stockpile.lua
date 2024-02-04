function gadget:GetInfo()
    return {
        name      = "WeaponStockpileGadget",
        desc      = "Sets the weapon stockpile to 0",
        author    = "Hornet",
        date      = "2024",
        license   = "GNU GPL, v2 or later",
        layer     = 0,
        enabled   = true
    }
end

Spring.Echo('hornetdb stockpile loaded')
if gadgetHandler:IsSyncedCode() then
Spring.Echo('hornetdb stockpile sync')
    function gadget:Initialize()
        -- Add any initialization code here
    end

	local function BosSetStockpile(unitID, unitDefID, _, count)
	
		Spring.Echo('hornetdb BosSetStockpile', unitID, unitDefID, _, count)
		local weaponStockpile = Spring.GetUnitStockpile(unitID)
		Spring.SetUnitStockpile(unitID, count)
	
	end

	function gadget:Initialize()
		Spring.Echo('hornetdb stockpile global registered')
		gadgetHandler:RegisterGlobal("BosSetStockpile", BosSetStockpile)
	end

	function gadget:Shutdown()
		gadgetHandler:DeregisterGlobal("BosSetStockpile")
	end

end