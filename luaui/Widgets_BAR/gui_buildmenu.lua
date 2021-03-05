function widget:GetInfo()
	return {
		name = "Build menu",
		desc = "",
		author = "Floris",
		date = "April 2020",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true,
		handler = true,
	}
end

local stickToBottom = false

local alwaysShow = false

local cfgCellPadding = 0.007
local cfgIconPadding = 0.015 -- space between icons
local cfgIconCornerSize = 0.025
local cfgRadariconSize = 0.23
local cfgRadariconOffset = 0.025
local cfgGroupiconSize = 0.29
local cfgPriceFontSize = 0.19
local cfgActiveAreaMargin = 0.1 -- (# * bgpadding) space between the background border and active area

local defaultColls = 5
local dynamicIconsize = true
local minColls = 4
local maxColls = 5

local showOrderDebug = false
local smartOrderUnits = true

local maxPosY = 0.73

local enableShortcuts = false   -- problematic since it overrules use of top row letters from keyboard which some are in use already

local disableInputWhenSpec = false		-- disable specs selecting buildoptions

local makeFancy = true    -- when using transparant icons this adds highlights so it shows the squared shape of button
local showPrice = false		-- false will still show hover
local showRadarIcon = true		-- false will still show hover
local showGroupIcon = true		-- false will still show hover
local showShortcuts = false
local showTooltip = true
local showBuildProgress = true

local iconBorderOpacity = 0.09  -- lighten the icon edges

local texDetailMult = 1.25   -- dont go too high, will get pixely
local radartexDetailMult = 2   -- dont go too high, will get pixely

local zoomMult = 1.5
local defaultCellZoom = 0.025 * zoomMult
local rightclickCellZoom = 0.033 * zoomMult
local clickCellZoom = 0.07 * zoomMult
local hoverCellZoom = 0.05 * zoomMult
local clickSelectedCellZoom = 0.125 * zoomMult
local selectedCellZoom = 0.135 * zoomMult

local buttonBackgroundTexture = "LuaUI/Images/vr_grid.png"
local buttonBgtexScale = 1.9	-- lower = smaller tiles
local buttonBgtexOpacity = 0
local buttonBgtexSize
local backgroundTexture = "LuaUI/Images/backgroundtile.png"
local ui_tileopacity = tonumber(Spring.GetConfigFloat("ui_tileopacity", 0.012) or 0.012)
local bgtexScale = tonumber(Spring.GetConfigFloat("ui_tilescale", 7) or 7)	-- lower = smaller tiles
local bgtexSize

local bgpadding, chobbyInterface, activeAreaMargin, textureDetail, iconTypesMap, radariconTextureDetail
local dlistCache, dlistGuishader, dlistBuildmenuBg, dlistBuildmenu, startDefID, font, font2, cmdsCount
local hijackedlayout, doUpdateClock, ordermenuHeight, advplayerlistPos, prevAdvplayerlistLeft
local cellPadding, iconPadding, cornerSize, cellInnerSize, cellSize
--local radariconSize, radariconOffset, groupiconSize, priceFontSize
--local activeCmd, selBuildQueueDefID, rowPressedClock, rowPressed


local spGetGroundHeight = Spring.GetGroundHeight

local function mapHasWater()
	local x = 1
	local z = 1
	while x <= Game.mapSizeX do
		z = 1
		while z <= Game.mapSizeZ do
			if spGetGroundHeight(x, z) <= 0 then
				return true
			end
			z = z + 8
		end
		x = x + 8
	end
	return false
end
local showWaterUnits = mapHasWater()

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

local buildKeys = {
	113, -- Q
	119, -- W
	101, -- E
	114, -- R
	116, -- T
	121, -- Y
	117, -- U
	105, -- I
	111, -- O
	112, -- P
}

local sound_queue_add = 'LuaUI/Sounds/buildbar_add.wav'
local sound_queue_rem = 'LuaUI/Sounds/buildbar_rem.wav'
--local sound_button = 'LuaUI/Sounds/buildbar_waypoint.wav'

local fontFile = "fonts/" .. Spring.GetConfigString("bar_font2", "Exo2-SemiBold.otf")

local vsx, vsy = Spring.GetViewGeometry()

local ordermenuLeft = vsx / 5
local advplayerlistLeft = vsx * 0.8

local ui_opacity = tonumber(Spring.GetConfigFloat("ui_opacity", 0.6) or 0.66)
local ui_scale = tonumber(Spring.GetConfigFloat("ui_scale", 1) or 1)
local glossMult = 1 + (2 - (ui_opacity * 2))    -- increase gloss/highlight so when ui is transparant, you can still make out its boundaries and make it less flat

local isSpec = Spring.GetSpectatingState()
local myTeamID = Spring.GetMyTeamID()
local myPlayerID = Spring.GetMyPlayerID()

local teamList = Spring.GetTeamList()

local buildQueue = {}
local disableInput = disableInputWhenSpec and isSpec
local backgroundRect = { 0, 0, 0, 0 }
local colls = 5
local rows = 5
local minimapHeight = 0.235
local minimapEnlarged = false
local posY = 0
local posY2 = 0
local posX = 0
local posX2 = 0.2
local width = 0
local height = 0
local selectedBuilders = {}
local selectedBuilderCount = 0
local selectedFactories = {}
local selectedFactoryCount = 0
local cellRects = {}
local cmds = {}
local lastUpdate = os.clock() - 1
local currentPage = 1
local pages = 1
local paginatorRects = {}
local preGamestartPlayer = Spring.GetGameFrame() == 0 and not isSpec

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

local spIsUnitSelected = Spring.IsUnitSelected
local spGetSelectedUnitsCount = Spring.GetSelectedUnitsCount
local spGetSelectedUnits = Spring.GetSelectedUnits
local spGetActiveCommand = Spring.GetActiveCommand
local spGetActiveCmdDescs = Spring.GetActiveCmdDescs
local spGetCmdDescIndex = Spring.GetCmdDescIndex
local spGetUnitDefID = Spring.GetUnitDefID
local spGetTeamStartPosition = Spring.GetTeamStartPosition
local spGetTeamRulesParam = Spring.GetTeamRulesParam
local spGetGroundHeight = Spring.GetGroundHeight
local spGetMouseState = Spring.GetMouseState
local spTraceScreenRay = Spring.TraceScreenRay
local spGetUnitHealth = Spring.GetUnitHealth
local SelectedUnitsCount = spGetSelectedUnitsCount()
local spGetUnitIsBuilding = Spring.GetUnitIsBuilding

local string_sub = string.sub
local string_gsub = string.gsub
local os_clock = os.clock

local math_floor = math.floor
local math_ceil = math.ceil
local math_max = math.max
local math_min = math.min
local math_tan = math.tan
local math_pi = math.pi
local math_cos = math.cos
local math_sin = math.sin
local math_rad = math.rad
local math_twicePi = math.pi * 2

local GL_QUADS = GL.QUADS
local glShape = gl.Shape
local GL_TRIANGLE_FAN = GL.TRIANGLE_FAN
local glBeginEnd = gl.BeginEnd
local glTexture = gl.Texture
local glTexRect = gl.TexRect
local glColor = gl.Color
local glRect = gl.Rect
local glVertex = gl.Vertex
local glBlending = gl.Blending
local GL_SRC_ALPHA = GL.SRC_ALPHA
local GL_ONE_MINUS_SRC_ALPHA = GL.ONE_MINUS_SRC_ALPHA
local GL_ONE = GL.ONE
local GL_DST_ALPHA = GL.DST_ALPHA
local GL_ONE_MINUS_SRC_COLOR = GL.ONE_MINUS_SRC_COLOR
local glDepthTest = gl.DepthTest

local RectRound = Spring.FlowUI.Draw.RectRound
local RectRoundProgress = Spring.FlowUI.Draw.RectRoundProgress
local UiUnit = Spring.FlowUI.Draw.Unit
local UiElement = Spring.FlowUI.Draw.Element
local UiButton = Spring.FlowUI.Draw.Button
local elementCorner = Spring.FlowUI.elementCorner

function table_invert(t)
	local s = {}
	for k, v in pairs(t) do
		s[v] = k
	end
	return s
end

-- used for pregame build queue, for switch faction buildings
local armToCor = {
	[UnitDefNames["armmex"].id] = UnitDefNames["cormex"].id,
	[UnitDefNames["armuwmex"].id] = UnitDefNames["coruwmex"].id,
	[UnitDefNames["armsolar"].id] = UnitDefNames["corsolar"].id,
	[UnitDefNames["armwin"].id] = UnitDefNames["corwin"].id,
	[UnitDefNames["armtide"].id] = UnitDefNames["cortide"].id,
	[UnitDefNames["armllt"].id] = UnitDefNames["corllt"].id,
	[UnitDefNames["armrad"].id] = UnitDefNames["corrad"].id,
	[UnitDefNames["armrl"].id] = UnitDefNames["corrl"].id,
	[UnitDefNames["armtl"].id] = UnitDefNames["cortl"].id,
	[UnitDefNames["armsonar"].id] = UnitDefNames["corsonar"].id,
	[UnitDefNames["armfrt"].id] = UnitDefNames["corfrt"].id,
	[UnitDefNames["armlab"].id] = UnitDefNames["corlab"].id,
	[UnitDefNames["armvp"].id] = UnitDefNames["corvp"].id,
	[UnitDefNames["armsy"].id] = UnitDefNames["corsy"].id,
	[UnitDefNames["armmstor"].id] = UnitDefNames["cormstor"].id,
	[UnitDefNames["armestor"].id] = UnitDefNames["corestor"].id,
	[UnitDefNames["armmakr"].id] = UnitDefNames["cormakr"].id,
	[UnitDefNames["armeyes"].id] = UnitDefNames["coreyes"].id,
	[UnitDefNames["armdrag"].id] = UnitDefNames["cordrag"].id,
	[UnitDefNames["armdl"].id] = UnitDefNames["cordl"].id,
	[UnitDefNames["armap"].id] = UnitDefNames["corap"].id,
	[UnitDefNames["armfrad"].id] = UnitDefNames["corfrad"].id,
	[UnitDefNames["armuwms"].id] = UnitDefNames["coruwms"].id,
	[UnitDefNames["armuwes"].id] = UnitDefNames["coruwes"].id,
	[UnitDefNames["armfmkr"].id] = UnitDefNames["corfmkr"].id,
	[UnitDefNames["armfdrag"].id] = UnitDefNames["corfdrag"].id,
	[UnitDefNames["armptl"].id] = UnitDefNames["corptl"].id,
}
local corToArm = table_invert(armToCor)

local function convertColor(r, g, b)
	return string.char(255, (r * 255), (g * 255), (b * 255))
end

function wrap(str, limit)
	limit = limit or 72
	local here = 1
	local buf = ""
	local t = {}
	str:gsub("(%s*)()(%S+)()",
		function(sp, st, word, fi)
			if fi - here > limit then
				--# Break the line
				here = st
				t[#t + 1] = buf
				buf = word
			else
				buf = buf .. sp .. word  --# Append
			end
		end)
	--# Tack on any leftovers
	if (buf ~= "") then
		t[#t + 1] = buf
	end
	return t
end


local folder = 'LuaUI/Images/groupicons/'
local groups = {
	energy = folder..'energy.png',
	metal = folder..'metal.png',
	builder = folder..'builder.png',
	buildert2 = folder..'buildert2.png',
	buildert3 = folder..'buildert3.png',
	buildert4 = folder..'buildert4.png',
	util = folder..'util.png',
	weapon = folder..'weapon.png',
	emp = folder..'emp.png',
	aa = folder..'aa.png',
	nuke = folder..'nuke.png',
	antinuke = folder..'antinuke.png',
}

local unitHumanName = {        -- fallback (if you want to change this, also update: language/en.lua, or it will be overwritten)
	-- gets filled with unit names from unitdefs, then overwritten by language file names
}
local unitTooltip = {        -- fallback (if you want to change this, also update: language/en.lua, or it will be overwritten)
	-- gets filled with unit tooltips for unitdefs, then overwritten by language file tooltips
}

local unitBuildPic = {}
local unitEnergyCost = {}
local unitMetalCost = {}
local unitGroup = {}
local unitRestricted = {}
local isBuilder = {}
local isFactory = {}
local unitDescriptionLong = {}
local unitIconType = {}
local isMex = {}
local isWaterUnit = {}
local unitMaxWeaponRange = {}
for unitDefID, unitDef in pairs(UnitDefs) do
	unitHumanName[unitDefID] = unitDef.humanName
	unitGroup[unitDefID] = 'util'

	if unitDef.name == 'armdl' or unitDef.name == 'cordl' or unitDef.name == 'armlance' or unitDef.name == 'cortitan' or unitDef.name == 'armbeaver' or unitDef.name == 'cormuskrat'
		or (unitDef.minWaterDepth > 0 or unitDef.modCategories['ship']) then
		isWaterUnit[unitDefID] = true
	end
	if unitDef.customParams.objectify or unitDef.isTransport or string.find(unitDef.name, 'critter') then
		unitGroup[unitDefID] = nil
	end
	if unitDef.energyMake > 19 and (not unitDef.energyUpkeep or unitDef.energyUpkeep < 10) or unitDef.energyUpkeep < -19 or unitDef.windGenerator > 0 or unitDef.tidalGenerator > 0 then
		unitGroup[unitDefID] = 'energy'
	end
	if unitDef.extractsMetal > 0 or (unitDef.customParams.energyconv_capacity and unitDef.customParams.energyconv_efficiency) then
		unitGroup[unitDefID] = 'metal'
	end
	if unitDef.energyStorage > 1000 and string.find(string.lower(unitDef.humanName), 'storage') then
		unitGroup[unitDefID] = 'energy'
	end
	if unitDef.metalStorage > 500 and string.find(string.lower(unitDef.humanName), 'storage') then
		unitGroup[unitDefID] = 'metal'
	end
	if unitDef.maxWeaponRange > 16 then
		unitMaxWeaponRange[unitDefID] = unitDef.maxWeaponRange
		unitGroup[unitDefID] = 'weapon'
	end
	if string.find(string.lower(unitDef.name), 'silo') then
		unitGroup[unitDefID] = 'nuke'
	end
	local aaWeapons = 0
	local weaponCount = 0
	for i = 1, #unitDef.weapons do
		local weaponDef = WeaponDefs[unitDef.weapons[i].weaponDef]
		if weaponDef then
			if weaponDef.damages then
				-- get highest damage category
				local maxDmg = 0
				for _, v in pairs(weaponDef.damages) do
					if v > maxDmg then
						maxDmg = v
					end
				end
				if maxDmg > 1 then	-- filter away bogus weapons
					weaponCount = weaponCount + 1
					if unitDef.weapons[i].onlyTargets and unitDef.weapons[i].onlyTargets['vtol'] then
						aaWeapons = aaWeapons + 1
					end
				end
				if weaponDef.paralyzer then
					unitGroup[unitDefID] = 'emp'
				end
			end
			if weaponDef.shieldRepulser then
				unitGroup[unitDefID] = 'util'
			end
			--if weaponDef.description ~= nil and string.find(string.lower(weaponDef.description), 'nuclear') then
			--	unitGroup[unitDefID] = 'nuke'
			--end
		end
	end
	if aaWeapons > 0 and weaponCount == aaWeapons then
		unitGroup[unitDefID] = 'aa'
	end

	if unitDef.customParams.description_long then
		unitDescriptionLong[unitDefID] = wrap(unitDef.customParams.description_long, 58)
	end
	unitTooltip[unitDefID] = unitDef.tooltip
	unitIconType[unitDefID] = unitDef.iconType
	unitEnergyCost[unitDefID] = unitDef.energyCost
	unitMetalCost[unitDefID] = unitDef.metalCost
	unitBuildPic[unitDefID] = unitDef.buildpicname
	if unitDef.restricted == 0 then--or unitDef.name == 'armllt' or unitDef.name == 'armmakr' then
		unitRestricted[unitDefID] = true
	end
	if unitDef.buildSpeed > 0 and unitDef.buildOptions[1] then
		isBuilder[unitDefID] = unitDef.buildOptions
		unitGroup[unitDefID] = 'builder'
	end
	if unitDef.isFactory and #unitDef.buildOptions > 0 then
		isFactory[unitDefID] = true
		unitGroup[unitDefID] = 'builder'
	end
	if unitDef.buildSpeed > 10 then
		unitGroup[unitDefID] = 'builder'
	end
	if unitGroup[unitDefID] == 'builder' and unitDef.customParams.techlevel then
		if tonumber(unitDef.customParams.techlevel) == 2 then
			unitGroup[unitDefID] = 'buildert2'
		elseif tonumber(unitDef.customParams.techlevel) == 3 then
			unitGroup[unitDefID] = 'buildert3'
		elseif tonumber(unitDef.customParams.techlevel) == 4 then
			unitGroup[unitDefID] = 'buildert4'
		end
	end
	if string.find(string.lower(unitDef.tooltip), 'anti%-nuke') then
		unitGroup[unitDefID] = 'antinuke'
	end
	if unitDef.extractsMetal > 0 then
		isMex[unitDefID] = true
	end
end

local unitOrder = {}
local function addOrderImportance(unitDefID, skip, value)
	if not skip then
		unitOrder[unitDefID] = unitOrder[unitDefID] + value
	end
end

-- order units, add higher value for order importance
local skip = false
for unitDefID, unitDef in pairs(UnitDefs) do
	skip = false
	unitOrder[unitDefID] = 20000000

	-- handle decoy unit like its the regular version
	if unitDef.customParams.decoyfor then
		unitDef = UnitDefNames[unitDef.customParams.decoyfor]
		unitOrder[unitDefID] = unitOrder[unitDefID] - 2
	end

	-- is water unit
	if unitDef.name ~= 'armmex' and unitDef.name ~= 'cormex' and (unitDef.minWaterDepth > 0 or unitDef.modCategories['ship'] or unitDef.modCategories['underwater']) then
		unitOrder[unitDefID] = 500000
	end

	-- mobile units
	if not (unitDef.isImmobile or unitDef.isBuilding) then
		addOrderImportance(unitDefID, skip, 15000000)
	end

	-- eco buildings
	if unitDef.isImmobile or unitDef.isBuilding then
		if unitDef.tidalGenerator > 0 then
			addOrderImportance(unitDefID, skip, 12000000)
		elseif unitDef.extractsMetal > 0 then
			addOrderImportance(unitDefID, skip, 14000000)
		elseif unitDef.windGenerator > 0 then
			addOrderImportance(unitDefID, skip, 12500000)
		elseif unitDef.energyMake > 19 and (not unitDef.energyUpkeep or unitDef.energyUpkeep < 10) then
			addOrderImportance(unitDefID, skip, 11500000)
		elseif unitDef.energyUpkeep < -19 then
			addOrderImportance(unitDefID, skip, 12000000)
		end

		-- storage
		if unitDef.energyStorage > 1000 and string.find(string.lower(unitDef.humanName), 'storage') then
			addOrderImportance(unitDefID, skip, 11000000)
		end
		if unitDef.metalStorage > 500 and string.find(string.lower(unitDef.humanName), 'storage') then
			addOrderImportance(unitDefID, skip, 13000000)
		end

		-- converters
		if string.find(string.lower(unitDef.humanName), 'converter') then
			addOrderImportance(unitDefID, skip, 13500000)
		end
	end

	-- nanos
	if unitDef.buildSpeed > 0 and not unitDef.buildOptions[1] then
		addOrderImportance(unitDefID, skip, 3500000)
	end

	if unitDef.buildOptions[1] then
		if unitDef.isBuilding then
			addOrderImportance(unitDefID, skip, 2500000)
		else
			if string.find(string.lower(unitDef.humanName), 'construction') then
				addOrderImportance(unitDefID, skip, 6000000)
			elseif string.find(string.lower(unitDef.tooltip), 'minelayer') or string.find(string.lower(unitDef.tooltip), 'assist') or string.find(string.lower(unitDef.tooltip), 'engineer') then
				addOrderImportance(unitDefID, skip, 4000000)
			else
				addOrderImportance(unitDefID, skip, 5000000)
			end
		end
	end
	-- if unitDef.isImmobile or  unitDef.isBuilding then
	--   if unitDef.floater or unitDef.floatOnWater then
	--     addOrderImportance(unitDefID, skip, 11000000)
	--   elseif unitDef.modCategories['underwater'] or unitDef.modCategories['canbeuw'] or unitDef.modCategories['notland'] then
	--     addOrderImportance(unitDefID, skip, 10000000)
	--   else
	--     addOrderImportance(unitDefID, skip, 12000000)
	--   end
	-- else
	--   if unitDef.modCategories['ship'] then
	--     addOrderImportance(unitDefID, skip, 9000000)
	--   elseif unitDef.modCategories['hover'] then
	--     addOrderImportance(unitDefID, skip, 8000000)
	--   elseif unitDef.modCategories['tank'] then
	--     addOrderImportance(unitDefID, skip, 7000000)
	--   elseif unitDef.modCategories['bot'] then
	--     addOrderImportance(unitDefID, skip, 6000000)
	--   elseif unitDef.isAirUnit then
	--     addOrderImportance(unitDefID, skip, 5000000)
	--   elseif unitDef.modCategories['underwater'] or unitDef.modCategories['canbeuw'] or unitDef.modCategories['notland'] then
	--     addOrderImportance(unitDefID, skip, 8600000)
	--   end
	-- end


	unitOrder[unitDefID] = math_max(1, math_floor(unitOrder[unitDefID]))

	-- make more expensive units of the same kind lower in the list
	unitOrder[unitDefID] = unitOrder[unitDefID] + 1000000
	addOrderImportance(unitDefID, skip, -(unitDef.energyCost / 70))
	addOrderImportance(unitDefID, skip, -unitDef.metalCost)

	unitOrder[unitDefID] = math_max(1, math_floor(unitOrder[unitDefID]))
end

local function getHighestOrderedUnit()
	local highest = { 0, 0 }
	for unitDefID, orderValue in pairs(unitOrder) do
		if orderValue > highest[2] then
			highest = { unitDefID, orderValue }
		end
	end
	return highest[1]
end

local unitsOrdered = {}
local unitOrderDebug = {}
for unitDefID, unitDef in pairs(UnitDefs) do
	local uDefID = getHighestOrderedUnit()
	unitsOrdered[#unitsOrdered + 1] = uDefID
	unitOrderDebug[uDefID] = unitOrder[uDefID]
	unitOrder[uDefID] = nil
end

if not showOrderDebug then
	unitOrderDebug = nil
end
unitOrder = unitsOrdered
unitsOrdered = nil

--for k, unitDefID in pairs(unitOrder) do
--  Spring.Echo(k..'  '..unitHumanName[unitDefID])
--end


-- load all icons to prevent briefly showing white unit icons (will happen due to the custom texture filtering options)
local function cacheUnitIcons()
	local minC = minColls
	local maxC = maxColls
	if not dynamicIconsize then
		minC = defaultColls
		maxC = defaultColls
	end
	if minC > maxC then
		maxC = minC
	end -- just to be sure

	local activeArea = { backgroundRect[1] + (stickToBottom and bgpadding or 0) + activeAreaMargin, backgroundRect[2] + (stickToBottom and 0 or bgpadding) + activeAreaMargin, backgroundRect[3] - bgpadding - activeAreaMargin, backgroundRect[4] - bgpadding - activeAreaMargin }
	local contentWidth = activeArea[3] - activeArea[1]
	local colls = minC
	local cellSize = math_floor((contentWidth / colls) + 0.33)
	local cellPadding = math_floor(cellSize * cfgCellPadding)
	local cellInnerSize = cellSize - cellPadding - cellPadding
	local newTextureDetail = math_floor(cellInnerSize * (1 + defaultCellZoom) * texDetailMult)
	local newRadariconTextureDetail = math_floor(math_floor((cellInnerSize * cfgRadariconSize) + 0.5) * radartexDetailMult)
	if not textureDetail or textureDetail ~= newTextureDetail then
		while colls <= maxC do
			-- these are globals so it can be re-used (hover highlight)
			gl.Color(1, 1, 1, 0.001)
			for id, unit in pairs(UnitDefs) do
				-- only caching for defaultCellZoom
				if unitBuildPic[id] then
					gl.Texture(':lr' .. newTextureDetail .. ',' .. newTextureDetail .. ':unitpics/' .. unitBuildPic[id])
					if textureDetail then	-- delete old texture
						gl.DeleteTexture(':lr' .. textureDetail .. ',' .. textureDetail .. ':unitpics/' .. unitBuildPic[id])
					end
				end
				if unitIconType[id] and iconTypesMap[unitIconType[id]] then
					gl.TexRect(-1, -1, 0, 0)
					gl.Texture(':lr' .. newRadariconTextureDetail .. ',' .. newRadariconTextureDetail .. ':' .. iconTypesMap[unitIconType[id]])
					gl.TexRect(-1, -1, 0, 0)
					if radariconTextureDetail then	-- delete old texture
						gl.DeleteTexture(':lr' .. radariconTextureDetail .. ',' .. radariconTextureDetail .. ':' .. iconTypesMap[unitIconType[id]])
					end
				end
				gl.Texture(false)
			end
			gl.Color(1, 1, 1, 1)
			colls = colls + 1
		end
		textureDetail = newTextureDetail
		radariconTextureDetail = newRadariconTextureDetail
	end
end

local function refreshUnitIconCache()
	if dlistCache then
		dlistCache = gl.DeleteList(dlistCache)
	end
	dlistCache = gl.CreateList(function()
		cacheUnitIcons()
	end)
end


function IsOnRect(x, y, BLcornerX, BLcornerY, TRcornerX, TRcornerY)
	return x >= BLcornerX and x <= TRcornerX and y >= BLcornerY and y <= TRcornerY
end

local function checkGuishader(force)
	if WG['guishader'] then
		if force and dlistGuishader then
			dlistGuishader = gl.DeleteList(dlistGuishader)
		end
		if not dlistGuishader then
			dlistGuishader = gl.CreateList(function()
				RectRound(backgroundRect[1], backgroundRect[2], backgroundRect[3], backgroundRect[4], elementCorner)
			end)
			if selectedBuilderCount > 0 then
				WG['guishader'].InsertDlist(dlistGuishader, 'buildmenu')
			end
		end
	elseif dlistGuishader then
		dlistGuishader = gl.DeleteList(dlistGuishader)
	end
end

function widget:PlayerChanged(playerID)
	isSpec = Spring.GetSpectatingState()
	myTeamID = Spring.GetMyTeamID()
	myPlayerID = Spring.GetMyPlayerID()
end

local function RefreshCommands()
	cmds = {}
	cmdsCount = 0

	if preGamestartPlayer then
		if startDefID then

			local cmdUnitdefs = {}
			for i, udefid in pairs(UnitDefs[startDefID].buildOptions) do
				if showWaterUnits or not isWaterUnit[udefid] then
					cmdUnitdefs[udefid] = i
				end
			end
			for k, uDefID in pairs(unitOrder) do
				if cmdUnitdefs[uDefID] then
					cmdsCount = cmdsCount + 1
					-- mimmick output of spGetActiveCmdDescs
					cmds[cmdsCount] = {
						id = uDefID * -1,
						name = UnitDefs[uDefID].name,
						params = {}
					}
				end
			end
		end
	else

		local activeCmdDescs = spGetActiveCmdDescs()
		if smartOrderUnits then
			local cmdUnitdefs = {}
			for index, cmd in pairs(activeCmdDescs) do
				if type(cmd) == "table" then
					if string_sub(cmd.action, 1, 10) == 'buildunit_' then
						-- not cmd.disabled and cmd.type == 20 or
						if showWaterUnits or not isWaterUnit[cmd.id * -1] then
							cmdUnitdefs[cmd.id * -1] = index
						end
					end
				end
			end
			for k, uDefID in pairs(unitOrder) do
				if cmdUnitdefs[uDefID] then
					cmdsCount = cmdsCount + 1
					cmds[cmdsCount] = activeCmdDescs[cmdUnitdefs[uDefID]]
				end
			end
		else
			for index, cmd in pairs(activeCmdDescs) do
				if type(cmd) == "table" then
					if string_sub(cmd.action, 1, 10) == 'buildunit_' then
						-- not cmd.disabled and cmd.type == 20 or
						if showWaterUnits or not isWaterUnit[cmd] then
							cmdsCount = cmdsCount + 1
							cmds[cmdsCount] = cmd
						end
					end
				end
			end
		end
	end
end

function widget:ViewResize()
	vsx, vsy = Spring.GetViewGeometry()

	font2 = WG['fonts'].getFont(fontFile, 1.2, 0.28, 1.6)

	if WG['minimap'] then
		minimapEnlarged = WG['minimap'].getEnlarged()
		minimapHeight = WG['minimap'].getHeight()
	end

	local widgetSpaceMargin = Spring.FlowUI.elementMargin
	bgpadding = Spring.FlowUI.elementPadding
	elementCorner = Spring.FlowUI.elementCorner
	bgtexSize = bgpadding * bgtexScale
	buttonBgtexSize = bgpadding * buttonBgtexScale

	activeAreaMargin = math_ceil(bgpadding * cfgActiveAreaMargin)

	if stickToBottom then
		posY = math_floor(0.14 * ui_scale * vsy) / vsy
		posY2 = 0
		posX = math_floor(ordermenuLeft*vsx) + widgetSpaceMargin
		posX2 = advplayerlistLeft - widgetSpaceMargin
		width = posX2 - posX
		height = posY
		minColls = math_max(8, math_floor((width/vsx)*25))
		maxColls = 30
	else
		posY = 0.606
		posY2 = math_floor(0.14 * ui_scale * vsy) / vsy
		posY2 = posY2 + (widgetSpaceMargin/vsy)
		posX = 0
		minColls = 4
		maxColls = 5

		if minimapEnlarged then
			posY = math_max(0.4615, (vsy - minimapHeight) / vsy) - 0.0064
			if WG['minimap'] then
				posY = 1 - (WG['minimap'].getHeight() / vsy) - (widgetSpaceMargin/vsy)
				if posY > maxPosY then
					posY = maxPosY
				end
			end
		else
			if WG['ordermenu'] then
				local oposX, oposY, owidth, oheight = WG['ordermenu'].getPosition()
				if oposY > 0.5 then
					posY = oposY - oheight - ((widgetSpaceMargin)/vsy)
				end
			end
		end

		posY = math_floor(posY * vsy) / vsy
		posX = math_floor(posX * vsx) / vsx

		height = (posY - posY2)
		width = 0.212

		width = width / (vsx / vsy) * 1.78        -- make smaller for ultrawide screens
		width = width * ui_scale

		posX2 = math_floor(width * vsx)

		-- make pixel aligned
		width = math_floor(width * vsx) / vsx
		height = math_floor(height * vsy) / vsy
	end

	backgroundRect = { posX, (posY - height) * vsy, posX2, posY * vsy }

	checkGuishader(true)
	refreshUnitIconCache()
	clear()
	doUpdate = true
end

local function hijacklayout()
	local function dummylayouthandler(xIcons, yIcons, cmdCount, commands)
		--gets called on selection change
		widgetHandler.commands = commands
		widgetHandler.commands.n = cmdCount
		widgetHandler:CommandsChanged() --call widget:CommandsChanged()
		local iconList = { [1337] = 9001 }
		local custom_cmdz = widgetHandler.customCommands
		return "", xIcons, yIcons, {}, custom_cmdz, {}, {}, {}, {}, {}, iconList
	end
	widgetHandler:ConfigLayoutHandler(dummylayouthandler) --override default build/ordermenu layout
	Spring.ForceLayoutUpdate()
end


function widget:Initialize()
	if WG['lang'] then
		local translations = WG['lang'].getText('unitnames')
		for name,text in pairs(translations) do
			if UnitDefNames[name] then
				unitHumanName[UnitDefNames[name].id] = text
			end
		end
		translations = WG['lang'].getText('unittooltips')
		for name,text in pairs(translations) do
			if UnitDefNames[name] then
				unitTooltip[UnitDefNames[name].id] = text
			end
		end
	end
	hijacklayout()

	iconTypesMap = {}
	if Script.LuaRules('GetIconTypes') then
		iconTypesMap = Script.LuaRules.GetIconTypes()
	end

	-- Get our starting unit
	if preGamestartPlayer then
		SetBuildFacing()
		if not startDefID or startDefID ~= spGetTeamRulesParam(myTeamID, 'startUnit') then
			startDefID = spGetTeamRulesParam(myTeamID, 'startUnit')
			doUpdate = true
		end
	end

	widget:ViewResize()
	widget:SelectionChanged(spGetSelectedUnits())

	WG['buildmenu'] = {}
	WG['buildmenu'].getGroups = function()
		return groups, unitGroup
	end
	WG['buildmenu'].getOrder = function()
		return unitOrder
	end
	WG['buildmenu'].getMakeFancy = function()
		return makeFancy
	end
	WG['buildmenu'].setMakeFancy = function(value)
		makeFancy = value
		doUpdate = true
	end
	WG['buildmenu'].getShowPrice = function()
		return showPrice
	end
	WG['buildmenu'].setShowPrice = function(value)
		showPrice = value
		doUpdate = true
	end
	WG['buildmenu'].getAlwaysShow = function()
		return alwaysShow
	end
	WG['buildmenu'].setAlwaysShow = function(value)
		alwaysShow = value
		doUpdate = true
	end
	WG['buildmenu'].getShowRadarIcon = function()
		return showRadarIcon
	end
	WG['buildmenu'].setShowRadarIcon = function(value)
		showRadarIcon = value
		doUpdate = true
	end
	WG['buildmenu'].getShowGroupIcon = function()
		return showGroupIcon
	end
	WG['buildmenu'].setShowGroupIcon = function(value)
		showGroupIcon = value
		doUpdate = true
	end
	WG['buildmenu'].getShowShortcuts = function()
		return showShortcuts
	end
	WG['buildmenu'].setShowShortcuts = function(value)
		showShortcuts = value
		doUpdate = true
	end
	WG['buildmenu'].getShowTooltip = function()
		return showTooltip
	end
	WG['buildmenu'].setShowTooltip = function(value)
		showTooltip = value
		doUpdate = true
	end
	WG['buildmenu'].getDynamicIconsize = function()
		return dynamicIconsize
	end
	WG['buildmenu'].setDynamicIconsize = function(value)
		dynamicIconsize = value
		doUpdate = true
	end
	WG['buildmenu'].getMinColls = function()
		return minColls
	end
	WG['buildmenu'].setMinColls = function(value)
		minColls = value
		doUpdate = true
		refreshUnitIconCache()
	end
	WG['buildmenu'].getMaxColls = function()
		return maxColls
	end
	WG['buildmenu'].setMaxColls = function(value)
		maxColls = value
		doUpdate = true
		refreshUnitIconCache()
	end
	WG['buildmenu'].getDefaultColls = function()
		return defaultColls
	end
	WG['buildmenu'].setDefaultColls = function(value)
		defaultColls = value
		doUpdate = true
		refreshUnitIconCache()
	end
	WG['buildmenu'].factionChange = function(unitDefID)
		startDefID = unitDefID
		doUpdate = true
	end
	WG['buildmenu'].getBottomPosition = function()
		return stickToBottom
	end
	WG['buildmenu'].setBottomPosition = function(value)
		stickToBottom = value
		widget:Update(1000)
		widget:ViewResize()
		doUpdate = true
	end
	WG['buildmenu'].getSize = function()
		return posY, posY2
	end

	refreshUnitIconCache()
end

function clear()
	dlistBuildmenu = gl.DeleteList(dlistBuildmenu)
	dlistBuildmenuBg = gl.DeleteList(dlistBuildmenuBg)
end

function widget:Shutdown()
	if hijackedlayout and not WG['red_buildmenu'] then
		widgetHandler:ConfigLayoutHandler(true)
		Spring.ForceLayoutUpdate()
	end
	clear()
	if WG['guishader'] and dlistGuishader then
		WG['guishader'].DeleteDlist('buildmenu')
		dlistGuishader = nil
	end
	if dlistCache then
		dlistCache = gl.DeleteList(dlistCache)
	end
	WG['buildmenu'] = nil
end

-- update queue number
function widget:UnitFromFactory(unitID, unitDefID, unitTeam, factID, factDefID, userOrders)
	if spIsUnitSelected(factID) then
		doUpdateClock = os_clock() + 0.01
	end
end

local sec = 0
function widget:Update(dt)
	sec = sec + dt
	if sec > 0.33 then
		sec = 0
		checkGuishader()
		if ui_scale ~= Spring.GetConfigFloat("ui_scale", 1) then
			ui_scale = Spring.GetConfigFloat("ui_scale", 1)
			refreshUnitIconCache()
			widget:ViewResize()
			doUpdate = true
		end
		if ui_opacity ~= Spring.GetConfigFloat("ui_opacity", 0.6) then
			ui_opacity = Spring.GetConfigFloat("ui_opacity", 0.6)
			glossMult = 1 + (2 - (ui_opacity * 2))
			clear()
			doUpdate = true
		end
		if WG['minimap'] and minimapEnlarged ~= WG['minimap'].getEnlarged() then
			refreshUnitIconCache()
			widget:ViewResize()
			doUpdate = true
		end
		if WG['options'] and WG['options'].waterDetected then
			showWaterUnits = WG['options'].waterDetected()
		end

		if stickToBottom then
			if WG['advplayerlist_api'] ~= nil then
				local prevPos = advplayerlistPos
				local advplayerlistPos = WG['advplayerlist_api'].GetPosition()		-- returns {top,left,bottom,right,widgetScale}
				local prevAdvplayerlistLeft = advplayerlistLeft
				advplayerlistLeft = advplayerlistPos[2]
			end
			local prevOrdermenuLeft = ordermenuLeft
			local prevOrdermenuHeight = ordermenuHeight
			if WG['ordermenu'] then
				local oposX, oposY, owidth, oheight = WG['ordermenu'].getPosition()
				ordermenuLeft = oposX + owidth
				ordermenuHeight = oheight
			end
			if not prevAdvplayerlistLeft or advplayerlistLeft ~= prevAdvplayerlistLeft or not prevOrdermenuLeft or ordermenuLeft ~= prevOrdermenuLeft  or not prevOrdermenuHeight or ordermenuHeight ~= prevOrdermenuHeight then
				widget:ViewResize()
			end
		end

		disableInput = disableInputWhenSpec and isSpec
		if Spring.IsGodModeEnabled() then
			disableInput = false
		end
	end
end

function drawBuildmenuBg()
	WG['buildmenu'].selectedID = nil
	UiElement(backgroundRect[1], backgroundRect[2], backgroundRect[3], backgroundRect[4], (posX > 0 and 1 or 0), 1, ((posY-height > 0 or posX <= 0) and 1 or 0), 0)
end

local function drawCell(cellRectID, usedZoom, cellColor, progress, highlightColor, edgeAlpha, disabled)
	local uDefID = cmds[cellRectID].id * -1

	-- encapsulating cell background
	--RectRound(cellRects[cellRectID][1]+cellPadding, cellRects[cellRectID][2]+cellPadding, cellRects[cellRectID][3]-cellPadding, cellRects[cellRectID][4]-cellPadding, cellSize*0.03, 1,1,1,1, {0.3,0.3,0.3,0.95},{0.22,0.22,0.22,0.95})

	-- unit icon
	if disabled then
		glColor(0.4, 0.4, 0.4, 1)
	else
		glColor(1, 1, 1, 1)
	end
	--local textureDetail = math_floor(cellInnerSize * (1 + usedZoom) * texDetailMult)
	--glTexture(':lr' .. textureDetail .. ',' .. textureDetail .. ':unitpics/' .. unitBuildPic[uDefID])
	--glTexRect(cellRects[cellRectID][1]+cellPadding+iconPadding, cellRects[cellRectID][2]+cellPadding+iconPadding, cellRects[cellRectID][3]-cellPadding-iconPadding, cellRects[cellRectID][4]-cellPadding-iconPadding)
	UiUnit(
		cellRects[cellRectID][1] + cellPadding + iconPadding,
		cellRects[cellRectID][2] + cellPadding + iconPadding,
		cellRects[cellRectID][3] - cellPadding - iconPadding,
		cellRects[cellRectID][4] - cellPadding - iconPadding,
		cornerSize, 1,1,1,1,
		usedZoom,
		nil, disabled and 0 or nil,
		':l' .. (disabled and 'g' or '') ..'r' .. textureDetail .. ',' .. textureDetail .. ':unitpics/' .. unitBuildPic[uDefID],
		((unitIconType[uDefID] and iconTypesMap[unitIconType[uDefID]]) and ':l' .. (disabled and 't0.35,0.35,0.35' or '') ..'r' .. radariconTextureDetail .. ',' .. radariconTextureDetail .. ':' .. iconTypesMap[unitIconType[uDefID]] or nil),
		groups[unitGroup[uDefID]] and ':l' .. (disabled and 'gt0.4,0.4,0.4:' or ':') ..groups[unitGroup[uDefID]] or nil,
		{unitMetalCost[uDefID], unitEnergyCost[uDefID]},
		cmds[cellRectID].params[1]
	)

	-- colorize/highlight unit icon
	if cellColor then
		glBlending(GL_DST_ALPHA, GL_ONE_MINUS_SRC_COLOR)
		glColor(cellColor[1], cellColor[2], cellColor[3], cellColor[4])
		glTexture(':lr' .. (disabled and 'g' or '') .. textureDetail .. ',' .. textureDetail .. ':unitpics/' .. unitBuildPic[uDefID])
		UiUnit(
			cellRects[cellRectID][1] + cellPadding + iconPadding,
			cellRects[cellRectID][2] + cellPadding + iconPadding,
			cellRects[cellRectID][3] - cellPadding - iconPadding,
			cellRects[cellRectID][4] - cellPadding - iconPadding,
			cornerSize, 1,1,1,1,
			usedZoom
		)
		if cellColor[4] > 0 then
			glBlending(GL_SRC_ALPHA, GL_ONE)
			UiUnit(
				cellRects[cellRectID][1] + cellPadding + iconPadding,
				cellRects[cellRectID][2] + cellPadding + iconPadding,
				cellRects[cellRectID][3] - cellPadding - iconPadding,
				cellRects[cellRectID][4] - cellPadding - iconPadding,
				cornerSize, 1,1,1,1,
				usedZoom
			)
		end
		glBlending(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
	end
	glTexture(false)

	-- price
	if showPrice then
		--doCircle(x, y, z, radius, sides)
		local text
		if disabled then
			text = "\255\125\125\125" .. unitMetalCost[uDefID] .. "\n\255\135\135\135"
		else
			text = "\255\245\245\245" .. unitMetalCost[uDefID] .. "\n\255\255\255\000"
		end
		font2:Print(text .. unitEnergyCost[uDefID], cellRects[cellRectID][1] + cellPadding + (cellInnerSize * 0.048), cellRects[cellRectID][2] + cellPadding + (priceFontSize * 1.35), priceFontSize, "o")
	end

	-- debug order value
	if showOrderDebug and smartOrderUnits and unitOrderDebug[uDefID] then
		local text = unitOrderDebug[uDefID]
		font2:Print("\255\175\175\175" .. text, cellRects[cellRectID][1] + cellPadding + (cellInnerSize * 0.05), cellRects[cellRectID][4] - cellPadding - priceFontSize, priceFontSize * 0.82, "o")
	end

	-- shortcuts
	if showShortcuts and enableShortcuts and not disableInput then
		local row = math_ceil(cellRectID / colls)
		local col = cellRectID - ((row - 1) * colls)
		local text = string.upper(string.char(buildKeys[row]) .. ' ' .. string.char(buildKeys[col]))
		font2:Print("\255\175\175\175" .. text, cellRects[cellRectID][1] + cellPadding + (cellInnerSize * 0.05), cellRects[cellRectID][4] - cellPadding - priceFontSize, priceFontSize, "o")
	end

	-- draw build progress pie on top of texture
	if progress and showBuildProgress then
		RectRoundProgress(cellRects[cellRectID][1] + cellPadding + iconPadding, cellRects[cellRectID][2] + cellPadding + iconPadding, cellRects[cellRectID][3] - cellPadding - iconPadding, cellRects[cellRectID][4] - cellPadding - iconPadding, cellSize * 0.03, progress, { 0.08, 0.08, 0.08, 0.6 })
	end

	-- factory queue number
	if cmds[cellRectID].params[1] then
		local pad = math_floor(cellInnerSize * 0.03)
		local textWidth = math_floor(font2:GetTextWidth(cmds[cellRectID].params[1] .. '  ') * cellInnerSize * 0.285)
		local pad2 = 0
		RectRound(cellRects[cellRectID][3] - cellPadding - iconPadding - textWidth - pad2, cellRects[cellRectID][4] - cellPadding - iconPadding - (cellInnerSize * 0.365) - pad2, cellRects[cellRectID][3] - cellPadding - iconPadding, cellRects[cellRectID][4] - cellPadding - iconPadding, cornerSize * 3.3, 0, 0, 0, 1, { 0.15, 0.15, 0.15, 0.95 }, { 0.25, 0.25, 0.25, 0.95 })
		RectRound(cellRects[cellRectID][3] - cellPadding - iconPadding - textWidth - pad2, cellRects[cellRectID][4] - cellPadding - iconPadding - (cellInnerSize * 0.15) - pad2, cellRects[cellRectID][3] - cellPadding - iconPadding, cellRects[cellRectID][4] - cellPadding - iconPadding, 0, 0, 0, 0, 0, { 1, 1, 1, 0 }, { 1, 1, 1, 0.05 })
		RectRound(cellRects[cellRectID][3] - cellPadding - iconPadding - textWidth - pad2 + pad, cellRects[cellRectID][4] - cellPadding - iconPadding - (cellInnerSize * 0.365) - pad2 + pad, cellRects[cellRectID][3] - cellPadding - iconPadding - pad2, cellRects[cellRectID][4] - cellPadding - iconPadding - pad2, cornerSize * 2.6, 0, 0, 0, 1, { 0.7, 0.7, 0.7, 0.1 }, { 1, 1, 1, 0.1 })
		font2:Print("\255\190\255\190" .. cmds[cellRectID].params[1],
			cellRects[cellRectID][1] + cellPadding + (cellInnerSize * 0.94) - pad2,
			cellRects[cellRectID][2] + cellPadding + (cellInnerSize * 0.715) - pad2,
			cellInnerSize * 0.29, "ro"
		)
	end
end

function drawBuildmenu()
	local activeArea = {
		backgroundRect[1] + (stickToBottom and bgpadding or 0) + activeAreaMargin,
		backgroundRect[2] + (stickToBottom and 0 or bgpadding) + activeAreaMargin,
		backgroundRect[3] - bgpadding - activeAreaMargin,
		backgroundRect[4] - bgpadding - activeAreaMargin
	}
	local contentHeight = activeArea[4] - activeArea[2]
	local contentWidth = activeArea[3] - activeArea[1]
	local maxCellSize = contentHeight/2
	-- determine grid size
	if not dynamicIconsize then
		colls = defaultColls
		cellSize = math_min(maxCellSize, math_floor((contentWidth / colls)))
		rows = math_floor(contentHeight / cellSize)
	else
		colls = minColls
		cellSize = math_min(maxCellSize, math_floor((contentWidth / colls)))

		rows = math_floor(contentHeight / cellSize)
		if minColls < maxColls then
			while cmdsCount > rows * colls do
				colls = colls + 1
				cellSize = math_min(maxCellSize, math_floor((contentWidth / colls)))
				rows = math_floor(contentHeight / cellSize)
				if colls == maxColls then
					break
				end
			end
		end
		if stickToBottom then
			if rows > 1 and cmdsCount <= (colls-1) * rows then
				colls = colls - 1
				cellSize = math_min(maxCellSize, math_floor((contentHeight / rows)))
			end
			--cellSize = math_min(contentHeight*0.6, math_floor((contentHeight / rows) + 0.5))
			--colls = math_min(minColls, math_floor(contentWidth / cellSize))
			--if contentWidth / colls < contentWidth / cellSize then
			--	rows = rows + 1
			--	cellSize = math_min(contentHeight*0.6, math_floor((contentHeight / rows) + 0.5))
			--	colls = math_min(minColls, math_floor(contentWidth / cellSize))
			--end
		end
	end

	-- adjust grid size when pages are needed
	local paginatorCellHeight = math_floor(contentHeight - (rows * cellSize))
	if cmdsCount > colls * rows then
		pages = math_ceil(cmdsCount / (colls * rows))
		-- when more than 1 page: reserve bottom row for paginator and calc again
		if pages > 1 then
			pages = math_ceil(cmdsCount / (colls * (rows - 1)))
		end
		if currentPage > pages then
			currentPage = pages
		end

		-- remove a row if there isnt enough room for the paginator UI
		if not stickToBottom then
			if paginatorCellHeight < (0.06 * (1 - ((colls / 4) * 0.25))) * vsy then
				rows = rows - 1
				paginatorCellHeight = math_floor(contentHeight - (rows * cellSize))
			end
		else
			if paginatorCellHeight < (0.06 * (1 - ((rows / 4) * 0.25))) * vsx then
				colls = colls - 1
				paginatorCellHeight = math_floor(contentHeight - (colls * cellSize))
			end
		end
	else
		currentPage = 1
		pages = 1
	end

	-- these are globals so it can be re-used (hover highlight)
	cellPadding = math_floor(cellSize * cfgCellPadding)
	iconPadding = math_max(1, math_floor(cellSize * cfgIconPadding))
	cornerSize = math_floor(cellSize * cfgIconCornerSize)
	cellInnerSize = cellSize - cellPadding - cellPadding
	radariconSize = math_floor((cellInnerSize * cfgRadariconSize) + 0.5)
	radariconOffset = math_floor(((cellInnerSize * cfgRadariconOffset) + cellPadding + iconPadding) + 0.5)
	groupiconSize = math_floor((cellInnerSize * cfgGroupiconSize) + 0.5)
	priceFontSize = math_floor((cellInnerSize * cfgPriceFontSize) + 0.5)

	cellRects = {}
	local numCellsPerPage = rows * colls
	local cellRectID = numCellsPerPage * (currentPage - 1)
	local maxCellRectID = numCellsPerPage * currentPage
	if maxCellRectID > cmdsCount then
		maxCellRectID = cmdsCount
	end
	font2:Begin()
	local iconCount = 0
	for row = 1, rows do
		if cellRectID >= maxCellRectID then
			break
		end
		for coll = 1, colls do
			if cellRectID >= maxCellRectID then
				break
			end

			iconCount = iconCount + 1
			cellRectID = cellRectID + 1

			local uDefID = cmds[cellRectID].id * -1
			if stickToBottom then
				cellRects[cellRectID] = {
					activeArea[1] + ((coll - 1) * cellSize),
					activeArea[4] - ((row) * cellSize),
					activeArea[1] + (((coll)) * cellSize),
					activeArea[4] - ((row - 1) * cellSize)
				}
			else
				cellRects[cellRectID] = {
					activeArea[3] - ((colls - coll + 1) * cellSize),
					activeArea[4] - ((row) * cellSize),
					activeArea[3] - (((colls - coll)) * cellSize),
					activeArea[4] - ((row - 1) * cellSize)
				}
			end
			local cellIsSelected = (activeCmd and cmds[cellRectID] and activeCmd == cmds[cellRectID].name)
			local usedZoom = cellIsSelected and selectedCellZoom or defaultCellZoom

			if cellIsSelected then
				WG['buildmenu'].selectedID = uDefID
			end

			drawCell(cellRectID, usedZoom, cellIsSelected and { 1, 0.85, 0.2, 0.25 } or nil, nil, nil, nil, unitRestricted[uDefID])
		end
	end

	-- paginator
	if pages == 1 then
		paginatorRects = {}
	else
		local paginatorFontSize = math_max(0.016 * vsy, paginatorCellHeight * 0.2)
		local paginatorCellWidth = math_floor(contentWidth * 0.3)
		local paginatorBorderSize = math_floor(cellSize * ((cfgIconPadding + cfgCellPadding)))

		paginatorRects[1] = { activeArea[1], activeArea[2], activeArea[1] + paginatorCellWidth, activeArea[2] + paginatorCellHeight - cellPadding - activeAreaMargin }
		paginatorRects[2] = { activeArea[3] - paginatorCellWidth, activeArea[2], activeArea[3], activeArea[2] + paginatorCellHeight - cellPadding - activeAreaMargin }

		UiButton(paginatorRects[1][1] + cellPadding, paginatorRects[1][2] + cellPadding, paginatorRects[1][3] - cellPadding, paginatorRects[1][4] - cellPadding, 1,1,1,1, 1,1,1,1, nil, { 0, 0, 0, 0.8 }, { 0.2, 0.2, 0.2, 0.8 }, bgpadding * 0.5)
		UiButton(paginatorRects[2][1] + cellPadding, paginatorRects[2][2] + cellPadding, paginatorRects[2][3] - cellPadding, paginatorRects[2][4] - cellPadding, 1,1,1,1, 1,1,1,1, nil, { 0, 0, 0, 0.8 }, { 0.2, 0.2, 0.2, 0.8 }, bgpadding * 0.5)

		font2:Print("\255\245\245\245" .. currentPage .. "  \\  " .. pages, contentWidth * 0.5, activeArea[2] + (paginatorCellHeight * 0.5) - (paginatorFontSize * 0.25), paginatorFontSize, "co")
	end

	font2:End()
end

function widget:RecvLuaMsg(msg, playerID)
	if msg:sub(1, 18) == 'LobbyOverlayActive' then
		chobbyInterface = (msg:sub(1, 19) == 'LobbyOverlayActive1')
	end
end

local function GetBuildingDimensions(uDefID, facing)
	local bDef = UnitDefs[uDefID]
	if (facing % 2 == 1) then
		return 4 * bDef.zsize, 4 * bDef.xsize
	else
		return 4 * bDef.xsize, 4 * bDef.zsize
	end
end

local function DrawBuilding(buildData, borderColor, buildingAlpha, drawRanges)
	local bDefID, bx, by, bz, facing = buildData[1], buildData[2], buildData[3], buildData[4], buildData[5]
	local bw, bh = GetBuildingDimensions(bDefID, facing)

	gl.DepthTest(false)
	gl.Color(borderColor)

	gl.Shape(GL.LINE_LOOP, { { v = { bx - bw, by, bz - bh } },
							 { v = { bx + bw, by, bz - bh } },
							 { v = { bx + bw, by, bz + bh } },
							 { v = { bx - bw, by, bz + bh } } })

	if drawRanges then

		if isMex[bDefID] then
			gl.Color(1.0, 0.3, 0.3, 0.7)
			gl.DrawGroundCircle(bx, by, bz, Game.extractorRadius, 50)
		end

		local wRange = unitMaxWeaponRange[bDefID]
		if wRange then
			gl.Color(1.0, 0.3, 0.3, 0.7)
			gl.DrawGroundCircle(bx, by, bz, wRange, 40)
		end
	end

	gl.DepthTest(GL.LEQUAL)
	gl.DepthMask(true)
	gl.Color(1.0, 1.0, 1.0, buildingAlpha)

	gl.PushMatrix()
	gl.LoadIdentity()
	gl.Translate(bx, by, bz)
	gl.Rotate(90 * facing, 0, 1, 0)
	gl.UnitShape(bDefID, Spring.GetMyTeamID(), false, false, true)
	gl.PopMatrix()

	gl.Lighting(false)
	gl.DepthTest(false)
	gl.DepthMask(false)
end

local function DrawUnitDef(uDefID, uTeam, ux, uy, uz, scale)
	gl.Color(1, 1, 1, 1)
	gl.DepthTest(GL.LEQUAL)
	gl.DepthMask(true)
	gl.Lighting(true)

	gl.PushMatrix()
	gl.Translate(ux, uy, uz)
	if scale then
		gl.Scale(scale, scale, scale)
	end
	gl.UnitShape(uDefID, uTeam, false, true, true)
	gl.PopMatrix()

	gl.Lighting(false)
	gl.DepthTest(false)
	gl.DepthMask(false)
end

local function DoBuildingsClash(buildData1, buildData2)

	local w1, h1 = GetBuildingDimensions(buildData1[1], buildData1[5])
	local w2, h2 = GetBuildingDimensions(buildData2[1], buildData2[5])

	return math.abs(buildData1[2] - buildData2[2]) < w1 + w2 and
		math.abs(buildData1[4] - buildData2[4]) < h1 + h2
end

function widget:DrawScreen()
	if chobbyInterface then
		return
	end

	-- refresh buildmenu if active cmd changed
	local prevActiveCmd = activeCmd
	activeCmd = select(4, spGetActiveCommand())
	if activeCmd ~= prevActiveCmd then
		doUpdate = true
	end

	WG['buildmenu'].hoverID = nil
	if not preGamestartPlayer and selectedBuilderCount == 0 and not alwaysShow then
		if WG['guishader'] and dlistGuishader then
			WG['guishader'].RemoveDlist('buildmenu')
		end
	else
		local x, y, b, b2, b3 = spGetMouseState()
		local now = os_clock()
		if doUpdate or (doUpdateClock and now >= doUpdateClock) then
			if doUpdateClock and now >= doUpdateClock then
				doUpdateClock = nil
			end
			lastUpdate = now
			clear()
			RefreshCommands()
			doUpdate = nil
		end

		-- create buildmenu drawlists
		if WG['guishader'] and dlistGuishader then
			WG['guishader'].InsertDlist(dlistGuishader, 'buildmenu')
		end
		if not dlistBuildmenu then
			dlistBuildmenuBg = gl.CreateList(function()
				drawBuildmenuBg()
			end)
			dlistBuildmenu = gl.CreateList(function()
				drawBuildmenu()
			end)
		end

		local hovering = false
		if IsOnRect(x, y, backgroundRect[1], backgroundRect[2], backgroundRect[3], backgroundRect[4]) then
			Spring.SetMouseCursor('cursornormal')
			hovering = true
		end

		-- draw buildmenu background
		gl.CallList(dlistBuildmenuBg)
		if preGamestartPlayer or selectedBuilderCount ~= 0 then
			-- pre process + 'highlight' under the icons
			local hoveredCellID = nil
			if not WG['topbar'] or not WG['topbar'].showingQuit() then
				if hovering then
					for cellRectID, cellRect in pairs(cellRects) do
						if IsOnRect(x, y, cellRect[1], cellRect[2], cellRect[3], cellRect[4]) then
							hoveredCellID = cellRectID
							local cellIsSelected = (activeCmd and cmds[cellRectID] and activeCmd == cmds[cellRectID].name)
							local uDefID = cmds[cellRectID].id * -1
							WG['buildmenu'].hoverID = uDefID
							gl.Color(1, 1, 1, 1)
							local alt, ctrl, meta, shift = Spring.GetModKeyState()
							if showTooltip and WG['tooltip'] and not meta then
								-- when meta: unitstats does the tooltip
								local text = "\255\215\255\215" .. unitHumanName[uDefID] .. (unitRestricted[uDefID] and "  \255\166\166\166("..Spring.I18N('ui.buildMenu.disabled')..")" or "").. "\n\255\240\240\240" .. unitTooltip[uDefID]
								WG['tooltip'].ShowTooltip('buildmenu', text)
							end

							-- highlight --if b and not disableInput then
							glBlending(GL_SRC_ALPHA, GL_ONE)
							RectRound(cellRects[cellRectID][1] + cellPadding, cellRects[cellRectID][2] + cellPadding, cellRects[cellRectID][3] - cellPadding, cellRects[cellRectID][4] - cellPadding, cellSize * 0.03, 1, 1, 1, 1, { 0, 0, 0, 0.1 * ui_opacity }, { 0, 0, 0, 0.1 * ui_opacity })
							glBlending(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
							break
						end
					end
				end
			end

			-- draw buildmenu content
			gl.CallList(dlistBuildmenu)

			-- draw highlight
			local usedZoom
			local cellColor
			if not WG['topbar'] or not WG['topbar'].showingQuit() then
				if IsOnRect(x, y, backgroundRect[1], backgroundRect[2], backgroundRect[3], backgroundRect[4]) then

					-- paginator buttons
					local paginatorHovered = false
					if paginatorRects[1] and IsOnRect(x, y, paginatorRects[1][1], paginatorRects[1][2], paginatorRects[1][3], paginatorRects[1][4]) then
						paginatorHovered = 1
					end
					if paginatorRects[2] and IsOnRect(x, y, paginatorRects[2][1], paginatorRects[2][2], paginatorRects[2][3], paginatorRects[2][4]) then
						paginatorHovered = 2
					end
					if paginatorHovered then
						if WG['tooltip'] then
							local text = "\255\240\240\240" .. (paginatorHovered == 1 and Spring.I18N('ui.buildMenu.previousPage') or Spring.I18N('ui.buildMenu.nextPage'))
							WG['tooltip'].ShowTooltip('buildmenu', text)
						end
						RectRound(paginatorRects[paginatorHovered][1] + cellPadding, paginatorRects[paginatorHovered][2] + cellPadding, paginatorRects[paginatorHovered][3] - cellPadding, paginatorRects[paginatorHovered][4] - cellPadding, cellSize * 0.03, 2, 2, 2, 2, { 1, 1, 1, 0 }, { 1, 1, 1, (b and 0.35 or 0.15) })
						-- gloss
						RectRound(paginatorRects[paginatorHovered][1] + cellPadding, paginatorRects[paginatorHovered][4] - cellPadding - ((paginatorRects[paginatorHovered][4] - paginatorRects[paginatorHovered][2]) * 0.5), paginatorRects[paginatorHovered][3] - cellPadding, paginatorRects[paginatorHovered][4] - cellPadding, cellSize * 0.03, 2, 2, 0, 0, { 1, 1, 1, 0.015 }, { 1, 1, 1, 0.13 })
						RectRound(paginatorRects[paginatorHovered][1] + cellPadding, paginatorRects[paginatorHovered][2] + cellPadding, paginatorRects[paginatorHovered][3] - cellPadding, paginatorRects[paginatorHovered][2] + cellPadding + ((paginatorRects[paginatorHovered][4] - paginatorRects[paginatorHovered][2]) * 0.33), cellSize * 0.03, 0, 0, 2, 2, { 1, 1, 1, 0.025 }, { 1, 1, 1, 0 })
					end

					-- cells
					if hoveredCellID then
						local cellRectID = hoveredCellID
						local cellIsSelected = (activeCmd and cmds[cellRectID] and activeCmd == cmds[cellRectID].name)
						local uDefID = cmds[cellRectID].id * -1

						-- determine zoom amount and cell color
						usedZoom = hoverCellZoom
						if not cellIsSelected then
							if (b or b2) and cellIsSelected then
								usedZoom = clickSelectedCellZoom
							elseif cellIsSelected then
								usedZoom = selectedCellZoom
							elseif (b or b2) and not disableInput then
								usedZoom = clickCellZoom
							elseif b3 and not disableInput and cmds[cellRectID].params[1] then
								-- has queue
								usedZoom = rightclickCellZoom
							end
							-- determine color
							if (b or b2) and not disableInput then
								cellColor = { 0.3, 0.8, 0.25, 0.2 }
							elseif b3 and not disableInput then
								cellColor = { 1, 0.35, 0.3, 0.2 }
							else
								cellColor = { 0.63, 0.63, 0.63, 0 }
							end
						else
							-- selected cell
							if (b or b2 or b3) then
								usedZoom = clickSelectedCellZoom
							else
								usedZoom = selectedCellZoom
							end
							cellColor = { 1, 0.85, 0.2, 0.25 }
						end
						if not unitRestricted[uDefID] then

							local unsetShowPrice, unsetShowRadarIcon, unsetShowGroupIcon
							if not showPrice then
								unsetShowPrice = true
								showPrice = true
							end
							if not showRadarIcon then
								unsetShowRadarIcon = true
								showRadarIcon = true
							end
							if not showGroupIcon then
								unsetShowGroupIcon = true
								showGroupIcon = true
							end
							-- re-draw cell with hover zoom (and price shown)
							drawCell(cellRectID, usedZoom, cellColor, nil, { cellColor[1], cellColor[2], cellColor[3], 0.045 + (usedZoom * 0.45) }, 0.15, unitRestricted[uDefID])

							if unsetShowPrice then
								showPrice = false
								unsetShowPrice = nil
							end
							if unsetShowRadarIcon then
								showRadarIcon = false
								unsetShowRadarIcon = nil
							end
							if unsetShowGroupIcon then
								showGroupIcon = false
								unsetShowGroupIcon = nil
							end
							-- gloss highlight
							--glBlending(GL_SRC_ALPHA, GL_ONE)
							--RectRound(cellRects[cellRectID][1]+cellPadding, cellRects[cellRectID][4]-cellPadding-(cellInnerSize*0.5), cellRects[cellRectID][3]-cellPadding, cellRects[cellRectID][4]-cellPadding, cellSize*0.03, 1,1,0,0,{1,1,1,0.0}, {1,1,1,0.09})
							--RectRound(cellRects[cellRectID][1]+cellPadding, cellRects[cellRectID][2]+cellPadding, cellRects[cellRectID][3]-cellPadding, cellRects[cellRectID][2]+cellPadding+(cellInnerSize*0.15), cellSize*0.03, 0,0,1,1,{1,1,1,0.07}, {1,1,1,0})
							--glBlending(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
						end
					end
				end
			end

			-- draw builders buildoption progress
			if showBuildProgress then
				local numCellsPerPage = rows * colls
				local cellRectID = numCellsPerPage * (currentPage - 1)
				local maxCellRectID = numCellsPerPage * currentPage
				if maxCellRectID > cmdsCount then
					maxCellRectID = cmdsCount
				end
				-- loop selected builders
				for builderUnitID, _ in pairs(selectedBuilders) do
					local unitBuildID = spGetUnitIsBuilding(builderUnitID)
					if unitBuildID then
						local unitBuildDefID = spGetUnitDefID(unitBuildID)
						if unitBuildDefID then
							-- loop all shown cells
							local cellIsSelected
							for cellRectID, cellRect in pairs(cellRects) do
								cellIsSelected = false
								if cellRectID > maxCellRectID then
									break
								end
								local cellUnitDefID = cmds[cellRectID].id * -1
								if unitBuildDefID == cellUnitDefID then
									local progress = 1 - select(5, spGetUnitHealth(unitBuildID))
									if not usedZoom then
										if cellRectID == hoveredCellID and (b or b2 or b3) then
											usedZoom = clickSelectedCellZoom
										else
											cellIsSelected = (activeCmd and cmds[cellRectID] and activeCmd == cmds[cellRectID].name)
											usedZoom = cellIsSelected and selectedCellZoom or defaultCellZoom
										end
									end
									if cellColor and cellRectID ~= hoveredCellID then
										cellColor = nil
										usedZoom = cellIsSelected and selectedCellZoom or defaultCellZoom
									end

									local unsetShowPrice, unsetShowRadarIcon, unsetShowGroupIcon
									if cellRectID == hoveredCellID then
										if not showPrice then
											unsetShowPrice = true
											showPrice = true
										end
										if not showRadarIcon then
											unsetShowRadarIcon = true
											showRadarIcon = true
										end
										if not showGroupIcon then
											unsetShowGroupIcon = true
											showGroupIcon = true
										end
									end
									-- re-draw cell with hover zoom (and price shown)
									drawCell(cellRectID, usedZoom, cellColor, progress)
									if cellRectID == hoveredCellID then
										if unsetShowPrice then
											showPrice = false
											unsetShowPrice = nil
										end
										if unsetShowRadarIcon then
											showRadarIcon = false
											unsetShowRadarIcon = nil
										end
										if unsetShowGroupIcon then
											showGroupIcon = false
											unsetShowGroupIcon = nil
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function widget:DrawWorld()
	if chobbyInterface then
		return
	end

	-- draw pregamestart commander models on start positions
	if Spring.GetGameFrame() == 0 then
		glColor(1, 1, 1, 0.5)
		glDepthTest(false)
		for i = 1, #teamList do
			local teamID = teamList[i]
			local tsx, tsy, tsz = spGetTeamStartPosition(teamID)
			if tsx and tsx > 0 then
				local startUnitDefID = spGetTeamRulesParam(teamID, 'startUnit')
				if startUnitDefID then
					DrawUnitDef(startUnitDefID, teamID, tsx, spGetGroundHeight(tsx, tsz), tsz)
				end
			end
		end
		glColor(1, 1, 1, 1)
		glTexture(false)


		-- draw pregame build queue
		if preGamestartPlayer then
			local buildDistanceColor = { 0.3, 1.0, 0.3, 0.6 }
			local buildLinesColor = { 0.3, 1.0, 0.3, 0.6 }
			local borderNormalColor = { 0.3, 1.0, 0.3, 0.5 }
			local borderClashColor = { 0.7, 0.3, 0.3, 1.0 }
			local borderValidColor = { 0.0, 1.0, 0.0, 1.0 }
			local borderInvalidColor = { 1.0, 0.0, 0.0, 1.0 }
			local buildingQueuedAlpha = 0.5

			gl.LineWidth(1.49)

			-- We need data about currently selected building, for drawing clashes etc
			local selBuildData
			if selBuildQueueDefID then
				local x, y, b = spGetMouseState()
				local _, pos = spTraceScreenRay(x, y, true)
				if pos then
					local bx, by, bz = Spring.Pos2BuildPos(selBuildQueueDefID, pos[1], pos[2], pos[3])
					local buildFacing = Spring.GetBuildFacing()
					selBuildData = { selBuildQueueDefID, bx, by, bz, buildFacing }
				end
			end

			local sx, sy, sz = Spring.GetTeamStartPosition(myTeamID) -- Returns -100, -100, -100 when none chosen
			local startChosen = (sx ~= -100)
			if startChosen and startDefID then
				-- Correction for start positions in the air
				sy = Spring.GetGroundHeight(sx, sz)

				-- Draw the starting unit at start position
				--DrawUnitDef(startDefID, myTeamID, sx, sy, sz)		--(disabled: faction change widget does this now)

				-- Draw start units build radius
				gl.Color(buildDistanceColor)
				gl.DrawGroundCircle(sx, sy, sz, UnitDefs[startDefID].buildDistance, 40)
			end

			-- Check for faction change
			for b = 1, #buildQueue do
				local buildData = buildQueue[b]
				local buildDataId = buildData[1]
				if startDefID == UnitDefNames["armcom"].id then
					if corToArm[buildDataId] ~= nil then
						buildData[1] = corToArm[buildDataId]
						buildQueue[b] = buildData
					end
				elseif startDefID == UnitDefNames["corcom"].id then
					if armToCor[buildDataId] ~= nil then
						buildData[1] = armToCor[buildDataId]
						buildQueue[b] = buildData
					end
				end
			end

			-- Draw all the buildings
			local queueLineVerts = startChosen and { { v = { sx, sy, sz } } } or {}
			for b = 1, #buildQueue do
				local buildData = buildQueue[b]

				if selBuildData and DoBuildingsClash(selBuildData, buildData) then
					DrawBuilding(buildData, borderClashColor, buildingQueuedAlpha)
				else
					DrawBuilding(buildData, borderNormalColor, buildingQueuedAlpha)
				end

				queueLineVerts[#queueLineVerts + 1] = { v = { buildData[2], buildData[3], buildData[4] } }
			end

			-- Draw queue lines
			glColor(buildLinesColor)
			gl.LineStipple("springdefault")
			gl.Shape(GL.LINE_STRIP, queueLineVerts)
			gl.LineStipple(false)

			-- Draw selected building
			if selBuildData then
				if Spring.TestBuildOrder(selBuildQueueDefID, selBuildData[2], selBuildData[3], selBuildData[4], selBuildData[5]) ~= 0 then
					DrawBuilding(selBuildData, borderValidColor, 1.0, true)
				else
					DrawBuilding(selBuildData, borderInvalidColor, 1.0, true)
				end
			end

			-- Reset gl
			glColor(1, 1, 1, 1)
			gl.LineWidth(1.0)
		end
	end
end

function widget:UnitCommand(unitID, unitDefID, unitTeam, cmdID, cmdOpts, cmdParams, cmdTag)
	if isFactory[unitDefID] and cmdID < 0 then
		-- filter away non build cmd's
		if doUpdateClock == nil then
			doUpdateClock = os_clock() + 0.01
		end
	end
end

function widget:SelectionChanged(sel)
	if SelectedUnitsCount ~= spGetSelectedUnitsCount() then
		SelectedUnitsCount = spGetSelectedUnitsCount()
	end
	selectedBuilders = {}
	selectedBuilderCount = 0
	selectedFactories = {}
	selectedFactoryCount = 0
	if SelectedUnitsCount > 0 then
		for _, unitID in pairs(sel) do
			if isFactory[spGetUnitDefID(unitID)] then
				selectedFactories[unitID] = true
				selectedFactoryCount = selectedFactoryCount + 1
			end
			if isBuilder[spGetUnitDefID(unitID)] then
				selectedBuilders[unitID] = true
				selectedBuilderCount = selectedBuilderCount + 1
				doUpdate = true
			end
		end
	end
end

local function GetUnitCanCompleteQueue(uID)

	local uDefID = Spring.GetUnitDefID(uID)
	if uDefID == startDefID then
		return true
	end

	-- What can this unit build ?
	local uCanBuild = {}
	local uBuilds = UnitDefs[uDefID].buildOptions
	for i = 1, #uBuilds do
		uCanBuild[uBuilds[i]] = true
	end

	-- Can it build everything that was queued ?
	for i = 1, #buildQueue do
		if not uCanBuild[buildQueue[i][1]] then
			return false
		end
	end

	return true
end

function widget:GameFrame(n)

	-- handle the pregame build queue
	preGamestartPlayer = false
	if n <= 90 and #buildQueue > 0 then

		if n < 2 then
			return
		end -- Give the unit frames 0 and 1 to spawn

		-- inform gadget how long is our queue
		local t = 0
		for i = 1, #buildQueue do
			t = t + UnitDefs[buildQueue[i][1]].buildTime
		end
		if startDefID then
			local buildTime = t / UnitDefs[startDefID].buildSpeed
			Spring.SendCommands("luarules initialQueueTime " .. buildTime)
		end

		local tasker
		-- Search for our starting unit
		local units = Spring.GetTeamUnits(Spring.GetMyTeamID())
		for u = 1, #units do
			local uID = units[u]
			if GetUnitCanCompleteQueue(uID) then
				tasker = uID
				if Spring.GetUnitRulesParam(uID, "startingOwner") == Spring.GetMyPlayerID() then
					-- we found our com even if cooping, assigning queue to this particular unit
					break
				end
			end
		end
		if tasker then
			for b = 1, #buildQueue do
				local buildData = buildQueue[b]
				Spring.GiveOrderToUnit(tasker, -buildData[1], { buildData[2], buildData[3], buildData[4], buildData[5] }, { "shift" })
			end
			buildQueue = {}
		end
	end
end

function SetBuildFacing()
	local wx, wy, _, _ = Spring.GetScreenGeometry()
	local _, pos = spTraceScreenRay(wx / 2, wy / 2, true)
	if not pos then
		return
	end
	local x = pos[1]
	local z = pos[3]

	local facing
	if math.abs(Game.mapSizeX - 2 * x) > math.abs(Game.mapSizeZ - 2 * z) then
		if 2 * x > Game.mapSizeX then
			facing = 3
		else
			facing = 1
		end
	else
		if 2 * z > Game.mapSizeZ then
			facing = 2
		else
			facing = 0
		end
	end
	Spring.SetBuildFacing(facing)
end

local function setPreGamestartDefID(uDefID)
	selBuildQueueDefID = uDefID
	if isMex[uDefID] then
		if Spring.GetMapDrawMode() ~= "metal" then
			Spring.SendCommands("ShowMetalMap")
		end
	elseif Spring.GetMapDrawMode() == "metal" then
		Spring.SendCommands("ShowStandard")
	end
end

function widget:KeyPress(key, mods, isRepeat)
	if Spring.IsGUIHidden() then
		return
	end
	-- add buildfacing shortcuts (facing commands are only handled by spring if we have a building selected, which isn't possible pre-game)
	if preGamestartPlayer and selBuildQueueDefID then
		if key == 91 then
			-- [
			local facing = Spring.GetBuildFacing()
			facing = facing + 1
			if facing > 3 then
				facing = 0
			end
			Spring.SetBuildFacing(facing)
		end
		if key == 93 then
			-- ]
			local facing = Spring.GetBuildFacing()
			facing = facing - 1
			if facing < 0 then
				facing = 3
			end
			Spring.SetBuildFacing(facing)
		end
		if key == 27 then
			-- ESC
			setPreGamestartDefID()
		end
	end

	-- unit icon shortcuts
	if not disableInput and enableShortcuts and cmdsCount > 0 then
		if rowPressedClock and rowPressedClock < (os_clock() + 3) then
			rowPressed = nil
			rowPressedClock = nil
		end
		for k, buildKey in pairs(buildKeys) do
			if buildKey == key then
				if not rowPressed then
					rowPressed = k
					rowPressedClock = os_clock()
					return true
				else
					local cellRectID = k + ((rowPressed - 1) * colls)
					if cmds[cellRectID] and cmds[cellRectID].id then
						Spring.SetActiveCommand(spGetCmdDescIndex(cmds[cellRectID].id), 1, true, false, Spring.GetModKeyState())
					end
					rowPressed = nil
					rowPressedClock = nil
					return true
				end
				break
			end
		end
		rowPressed = nil
	end
end

function widget:MousePress(x, y, button)
	if Spring.IsGUIHidden() then
		return
	end
	if WG['topbar'] and WG['topbar'].showingQuit() then
		return
	end

	if IsOnRect(x, y, backgroundRect[1], backgroundRect[2], backgroundRect[3], backgroundRect[4]) then
		if selectedBuilderCount > 0 or (preGamestartPlayer and startDefID) then
			local paginatorHovered = false
			if paginatorRects[1] and IsOnRect(x, y, paginatorRects[1][1], paginatorRects[1][2], paginatorRects[1][3], paginatorRects[1][4]) then
				currentPage = currentPage - 1
				if currentPage < 1 then
					currentPage = pages
				end
				doUpdate = true
			end
			if paginatorRects[2] and IsOnRect(x, y, paginatorRects[2][1], paginatorRects[2][2], paginatorRects[2][3], paginatorRects[2][4]) then
				currentPage = currentPage + 1
				if currentPage > pages then
					currentPage = 1
				end
				doUpdate = true
			end
			if not disableInput then
				for cellRectID, cellRect in pairs(cellRects) do
					if cmds[cellRectID].id and unitHumanName[-cmds[cellRectID].id] and IsOnRect(x, y, cellRect[1], cellRect[2], cellRect[3], cellRect[4]) and not unitRestricted[-cmds[cellRectID].id] then
						if button ~= 3 then
							Spring.PlaySoundFile(sound_queue_add, 0.75, 'ui')
							if preGamestartPlayer then
								setPreGamestartDefID(cmds[cellRectID].id * -1)
							elseif spGetCmdDescIndex(cmds[cellRectID].id) then
								Spring.SetActiveCommand(spGetCmdDescIndex(cmds[cellRectID].id), 1, true, false, Spring.GetModKeyState())
							end
						else
							if cmds[cellRectID].params[1] then
								-- has queue
								Spring.PlaySoundFile(sound_queue_rem, 0.75, 'ui')
							end
							if preGamestartPlayer then
								setPreGamestartDefID(cmds[cellRectID].id * -1)
							elseif spGetCmdDescIndex(cmds[cellRectID].id) then
								Spring.SetActiveCommand(spGetCmdDescIndex(cmds[cellRectID].id), 3, false, true, Spring.GetModKeyState())
							end
						end
						doUpdateClock = os_clock() + 0.01
						return true
					end
				end
			end
			return true
		elseif alwaysShow then
			return true
		end

	elseif preGamestartPlayer then

		if selBuildQueueDefID then
			if button == 1 then

				local mx, my, button = spGetMouseState()
				local _, pos = spTraceScreenRay(mx, my, true)
				if not pos then
					return
				end
				local bx, by, bz = Spring.Pos2BuildPos(selBuildQueueDefID, pos[1], pos[2], pos[3])
				local buildFacing = Spring.GetBuildFacing()

				if Spring.TestBuildOrder(selBuildQueueDefID, bx, by, bz, buildFacing) ~= 0 then

					local buildData = { selBuildQueueDefID, bx, by, bz, buildFacing }
					local _, _, meta, shift = Spring.GetModKeyState()
					if meta then
						table.insert(buildQueue, 1, buildData)

					elseif shift then

						local anyClashes = false
						for i = #buildQueue, 1, -1 do
							if DoBuildingsClash(buildData, buildQueue[i]) then
								anyClashes = true
								table.remove(buildQueue, i)
							end
						end

						if not anyClashes then
							buildQueue[#buildQueue + 1] = buildData
						end
					else
						buildQueue = { buildData }
					end

					if not shift then
						setPreGamestartDefID(nil)
					end
				end

				return true

			elseif button == 3 then
				setPreGamestartDefID(nil)
				return true
			end
		end
	end
end

function widget:GetConfigData()
	--save config
	return {
		showPrice = showPrice,
		showRadarIcon = showRadarIcon,
		showGroupIcon = showGroupIcon,
		dynamicIconsize = dynamicIconsize,
		minColls = minColls,
		maxColls = maxColls,
		defaultColls = defaultColls,
		showShortcuts = showShortcuts,
		makeFancy = makeFancy,
		showTooltip = showTooltip,
		buildQueue = buildQueue,
		stickToBottom = stickToBottom,
		gameID = Game.gameID,
		alwaysShow = alwaysShow,
	}
end

function widget:SetConfigData(data)
	--load config
	if data.showPrice ~= nil then
		showPrice = data.showPrice
	end
	if data.showRadarIcon ~= nil then
		showRadarIcon = data.showRadarIcon
	end
	if data.showGroupIcon ~= nil then
		showGroupIcon = data.showGroupIcon
	end
	if data.dynamicIconsize ~= nil then
		dynamicIconsize = data.dynamicIconsize
	end
	if data.minColls ~= nil then
		minColls = data.minColls
	end
	if data.maxColls ~= nil then
		maxColls = data.maxColls
	end
	if data.defaultColls ~= nil then
		defaultColls = data.defaultColls
	end
	if data.showShortcuts ~= nil then
		showShortcuts = data.showShortcuts
	end
	if data.makeFancy ~= nil then
		makeFancy = data.makeFancy
	end
	if data.showTooltip ~= nil then
		showTooltip = data.showTooltip
	end
	if data.stickToBottom ~= nil then
		stickToBottom = data.stickToBottom
	end
	if data.buildQueue and Spring.GetGameFrame() == 0 and data.gameID and data.gameID == Game.gameID then
		buildQueue = data.buildQueue
	end
	if data.alwaysShow ~= nil then
		alwaysShow = data.alwaysShow
	end
end
