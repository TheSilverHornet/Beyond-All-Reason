function widget:GetInfo()
	return {
		name = "Awards",
		desc = "UI with awards after game ends",
		author = "Floris (original: Bluestone)",
		date = "July 2021",
		license = "GNU GPL, v2 or later",
		layer = -3,
		enabled = true
	}
end

local glCallList = gl.CallList

local thisAward
local cachedAwards = {}

local widgetScale = 1

local drawAwards = false
local centerX, centerY -- coords for center of screen
local widgetX, widgetY -- coords for top left hand corner of box
local width = 880
local height = 550
local widgetWidthScaled = math.floor(width * widgetScale)
local widgetHeightScaled = math.floor(height * widgetScale)
local quitRightX = math.floor(100 * widgetScale)
local graphsRightX = math.floor(250 * widgetScale)
local closeRightX = math.floor(30 * widgetScale)

local Background
local FirstAward, SecondAward, ThirdAward, FourthAward
local threshold = 150000
local CowAward
local OtherAwards

local chobbyLoaded = (Spring.GetMenuName and string.find(string.lower(Spring.GetMenuName()), 'chobby') ~= nil)

local white = "\255" .. string.char(251) .. string.char(251) .. string.char(251)

local playerListByTeam = {} -- does not contain specs

local fontfile = "fonts/" .. Spring.GetConfigString("bar_font", "Poppins-Regular.otf")
local fontfile2 = "fonts/" .. Spring.GetConfigString("bar_font2", "Exo2-SemiBold.otf")
local viewScreenX, viewScreenY = Spring.GetViewGeometry()
local fontfileScale = (0.7 + (viewScreenX * viewScreenY / 7000000))
local fontfileSize = 40
local fontfileOutlineSize = 8
local fontfileOutlineStrength = 1.45
local titleFont
local font = gl.LoadFont(fontfile, fontfileSize * fontfileScale, fontfileOutlineSize * fontfileScale, fontfileOutlineStrength)
local font2 = gl.LoadFont(fontfile2, fontfileSize * fontfileScale, fontfileOutlineSize * fontfileScale, fontfileOutlineStrength)

local UiElement

local function colourNames(teamID)
	if teamID < 0 then
		return ""
	end
	local nameColourR, nameColourG, nameColourB, nameColourA = Spring.GetTeamColor(teamID)
	local R255 = math.floor(nameColourR * 255)  --the first \255 is just a tag (not colour setting) no part can end with a zero due to engine limitation (C)
	local G255 = math.floor(nameColourG * 255)
	local B255 = math.floor(nameColourB * 255)
	if R255 % 10 == 0 then
		R255 = R255 + 1
	end
	if G255 % 10 == 0 then
		G255 = G255 + 1
	end
	if B255 % 10 == 0 then
		B255 = B255 + 1
	end
	return "\255" .. string.char(R255) .. string.char(G255) .. string.char(B255) --works thanks to zwzsg
end

local function round(num, idp)
	return string.format("%." .. (idp or 0) .. "f", num)
end

local function findPlayerName(teamID)
	local plList = playerListByTeam[teamID]
	local name

	if plList[1] then
		name = plList[1]
		if #plList > 1 then
			name = Spring.I18N('ui.awards.coop', { name = name })
		end
	else
		name = Spring.I18N('ui.awards.unknown')
	end

	return name
end

local function createAward(pic, award, note, noteColour, winnersTable, offset)
	local winnerTeamID, secondTeamID, thirdTeamID = winnersTable[1].teamID, winnersTable[2].teamID, winnersTable[3].teamID
	local winnerScore, secondScore, thirdScore = winnersTable[1].score, winnersTable[2].score, winnersTable[3].score
	local winnerName, secondName, thirdName

	--award is: 0 for a normal award, 1 for the cow award, 2 for the no-cow awards
	local notAwardedText = Spring.I18N('ui.awards.notAwarded')

	winnerName = winnerTeamID >= 0 and findPlayerName(winnerTeamID) or notAwardedText
	secondName = secondTeamID >= 0 and findPlayerName(secondTeamID) or notAwardedText
	thirdName  = thirdTeamID  >= 0 and findPlayerName(thirdTeamID)  or notAwardedText

	thisAward = gl.CreateList(function()
		font:Begin()
		--names
		if award ~= 2 then
			--if its a normal award or a cow award
			gl.Color(1, 1, 1, 1)
			local pic = ':l:LuaRules/Images/' .. pic .. '.png'
			gl.Texture(pic)
			gl.TexRect(widgetX + math.floor(12*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(70*widgetScale), widgetX + math.floor(108*widgetScale), widgetY + widgetHeightScaled - offset + math.floor(25*widgetScale))

			font:Print(colourNames(winnerTeamID) .. winnerName, widgetX + math.floor(120*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(10*widgetScale), 18*widgetScale, "o")
			font:Print(noteColour .. note, widgetX + math.floor(120*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(50*widgetScale), 15*widgetScale, "o")
		else
			--if the cow is not awarded, we replace it with minor awards (just text)
			local heightoffset = 0
			if winnerTeamID >= 0 then
				font:Print(Spring.I18N('ui.awards.resourcesProduced', { playerColor = colourNames(winnerTeamID), player = winnerName, textColor = white, score = math.floor(winnerScore) }), widgetX + math.floor(70*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(10*widgetScale) - heightoffset, 14*widgetScale, "o")
				heightoffset = heightoffset + (17 * widgetScale)
			end
			if secondTeamID >= 0 then
				font:Print(Spring.I18N('ui.awards.damageTaken', { playerColor = colourNames(secondTeamID), player = secondName, textColor = white, score = math.floor(secondScore) }), widgetX + math.floor(70*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(10*widgetScale) - heightoffset, 14*widgetScale, "o")
				heightoffset = heightoffset + (17 * widgetScale)
			end
			if thirdTeamID >= 0 then
				font:Print(Spring.I18N('ui.awards.sleptLongest', { playerColor = colourNames(thirdTeamID), player = thirdName, textColor = white, score = math.floor(thirdScore / 60) }), widgetX + math.floor(70*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(10*widgetScale) - heightoffset, 14*widgetScale, "o")
			end
		end

		--scores
		if award == 0 then
			--normal awards
			if winnerTeamID >= 0 then
				if pic == 'comwreath' then
					winnerScore = round(winnerScore, 2)
				else
					winnerScore = math.floor(winnerScore)
				end
				font:Print(colourNames(winnerTeamID) .. winnerScore, widgetX + widgetWidthScaled / 2 + math.floor(275*widgetScale), widgetY + widgetHeightScaled - offset - 5, 14*widgetScale, "o")
			else
				font:Print('-', widgetX + widgetWidthScaled / 2 + math.floor(275*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(5*widgetScale), 17*widgetScale, "o")
			end
			font:Print(Spring.I18N('ui.awards.runnersUp'), widgetX + math.floor(500*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(5*widgetScale), 14*widgetScale, "o")

			if secondScore > 0 then
				if pic == 'comwreath' then
					secondScore = round(secondScore, 2)
				else
					secondScore = math.floor(secondScore)
				end
				font:Print(colourNames(secondTeamID) .. secondName, widgetX + math.floor(520*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(25*widgetScale), 14*widgetScale, "o")
				font:Print(colourNames(secondTeamID) .. secondScore, widgetX + widgetWidthScaled / 2 + math.floor(275*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(25*widgetScale), 14*widgetScale, "o")
			end

			if thirdScore > 0 then
				if pic == 'comwreath' then
					thirdScore = round(thirdScore, 2)
				else
					thirdScore = math.floor(thirdScore)
				end
				font:Print(colourNames(thirdTeamID) .. thirdName, widgetX + math.floor(520*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(45*widgetScale), 14*widgetScale, "o")
				font:Print(colourNames(thirdTeamID) .. thirdScore, widgetX + widgetWidthScaled / 2 + math.floor(275*widgetScale), widgetY + widgetHeightScaled - offset - math.floor(45*widgetScale), 14*widgetScale, "o")
			end
		end
		font:End()

	end)

	return thisAward
end

function widget:ViewResize(viewSizeX, viewSizeY)
	UiElement = WG.FlowUI.Draw.Element

	viewScreenX, viewScreenY = Spring.GetViewGeometry()
	local newFontfileScale = (0.5 + (viewScreenX * viewScreenY / 5700000))
	if fontfileScale ~= newFontfileScale then
		fontfileScale = newFontfileScale
		gl.DeleteFont(font)
		font = gl.LoadFont(fontfile, fontfileSize * fontfileScale, fontfileOutlineSize * fontfileScale, fontfileOutlineStrength)
		gl.DeleteFont(font2)
		font2 = gl.LoadFont(fontfile2, fontfileSize * fontfileScale, fontfileOutlineSize * fontfileScale, fontfileOutlineStrength)
	end

	--fix geometry
	widgetScale = (0.75 + (viewScreenX * viewScreenY / 7500000))
	widgetWidthScaled = math.floor(width * widgetScale)
	widgetHeightScaled = math.floor(height * widgetScale)
	centerX = math.floor(viewScreenX / 2)
	centerY = math.floor(viewScreenY / 2)
	widgetX = math.floor(centerX - (widgetWidthScaled / 2))
	widgetY = math.floor(centerY - (widgetHeightScaled / 2))

	quitRightX = math.floor(100 * widgetScale)
	graphsRightX = math.floor(250 * widgetScale)
	closeRightX = math.floor(30 * widgetScale)
end

local function createBackground()
	if Background then
		gl.DeleteList(Background)
	end
	if WG['guishader'] then
		WG['guishader'].InsertRect(widgetX, widgetY, widgetX + widgetWidthScaled, widgetY + widgetHeightScaled, 'awards')
	end

	Background = gl.CreateList(function()
		UiElement(widgetX, widgetY, widgetX + widgetWidthScaled, widgetY + widgetHeightScaled, 1,1,1,1, 1,1,1,1, Spring.GetConfigFloat("ui_opacity", 0.6) + 0.2)

		gl.Color(1, 1, 1, 1)

		titleFont:Begin()
		titleFont:Print("\255\254\184\64" .. Spring.I18N('ui.awards.awards'), widgetX + widgetWidthScaled / 2, widgetY + widgetHeightScaled - math.floor(75*widgetScale), 72 * widgetScale, "c")
		titleFont:End()

		font:Begin()
		font:Print(Spring.I18N('ui.awards.score'), widgetX + widgetWidthScaled / 2 + math.floor(275*widgetScale), widgetY + widgetHeightScaled - math.floor(65*widgetScale), 15*widgetScale, "o")
		font:End()
	end)
end

local function ProcessAwards(awards)
	cachedAwards = awards

	local traitorWinner = awards.traitor[1]
	local cowAwardWinner = awards.goldenCow[1].teamID

	local compoundAwards = {}
	table.insert(compoundAwards, awards.eco[1])
	table.insert(compoundAwards, awards.damageReceived[1])
	table.insert(compoundAwards, awards.sleep[1])

	-- create awards ui
	local addY = 0
	if traitorWinner.score > threshold then
		addY = 100
		widgetHeightScaled = 600
	end
	createBackground()
	FirstAward = createAward('fuscup', 0, Spring.I18N('ui.awards.resourcesDestroyed'), white, awards.ecoKill, 100)
	SecondAward = createAward('bullcup', 0, Spring.I18N('ui.awards.enemiesDestroyed'), white, awards.fightKill, 200)
	ThirdAward = createAward('comwreath', 0, Spring.I18N('ui.awards.resourcesEfficiency'), white, awards.efficiency, 300)
	if cowAwardWinner ~= -1 then
		CowAward = createAward('cow', 1, Spring.I18N('ui.awards.didEverything'), white, awards.goldenCow, 400 + addY)
	else
		OtherAwards = createAward('', 2, '', white, compoundAwards, 400 + addY)
	end
	if traitorWinner.score > threshold then
		FourthAward = createAward('traitor', 0, Spring.I18N('ui.awards.traitor'), white, awards.traitor, 400)
	end
	drawAwards = true

	-- don't show graph
	Spring.SendCommands('endgraph 0')
end

function widget:MousePress(x, y, button)
	if drawAwards then
		if button ~= 1 then
			return
		end

		-- Leave button
		if (x > widgetX + widgetWidthScaled - quitRightX - math.floor(5*widgetScale)
				and (x < widgetX + widgetWidthScaled - quitRightX + math.floor(20*widgetScale) * font:GetTextWidth(Spring.I18N('ui.awards.leave')) + math.floor(5*widgetScale))
				and (y > widgetY + math.floor((50 - 5)*widgetScale))
				and (y < widgetY + math.floor((50 + 17 + 5)*widgetScale))) then
			if chobbyLoaded then
				Spring.Reload("")
			else
				Spring.SendCommands("quitforce")
			end
		end

		-- Show Graphs button
		if (x > widgetX + widgetWidthScaled - graphsRightX - math.floor(5*widgetScale))
				and (x < widgetX + widgetWidthScaled - graphsRightX + math.floor(20*widgetScale) * font:GetTextWidth(Spring.I18N('ui.awards.showGraphs')) + math.floor(5*widgetScale))
				and (y > widgetY + math.floor((50 - 5)*widgetScale)
					and (y < widgetY + math.floor((50 + 17 + 5)*widgetScale))) then
			Spring.SendCommands('endgraph 2')

			if WG['guishader'] then
				WG['guishader'].RemoveRect('awards')
			end
			drawAwards = false
		end

		-- Close button
		if (x > widgetX + widgetWidthScaled - closeRightX - math.floor(5*widgetScale))
				and (x < widgetX + widgetWidthScaled - closeRightX + math.floor(20*widgetScale) * font:GetTextWidth('X') + math.floor(5*widgetScale))
				and (y > widgetY + widgetHeightScaled - math.floor((10 + 17 + 5)*widgetScale)
				and (y < widgetY + widgetHeightScaled - math.floor((10 - 5)*widgetScale))) then
			if WG['guishader'] then
				WG['guishader'].RemoveRect('awards')
			end
			drawAwards = false
		end
	end
end

function widget:DrawScreen()
	if not drawAwards then
		return
	end

	gl.PushMatrix()

	if Background then
		glCallList(Background)
	end

	if FirstAward and SecondAward and ThirdAward then
		glCallList(FirstAward)
		glCallList(SecondAward)
		glCallList(ThirdAward)
	end

	if CowAward then
		glCallList(CowAward)
	elseif OtherAwards then
		glCallList(OtherAwards)
	end

	if FourthAward then
		glCallList(FourthAward)
	end

	--draw buttons, wastefully, but it doesn't matter now game is over
	local x, y = Spring.GetMouseState()

	local quitColour
	local graphColour

	font2:Begin()

	-- Leave button
	if (x > widgetX + widgetWidthScaled - quitRightX - math.floor(5*widgetScale))
			and (x < widgetX + widgetWidthScaled - quitRightX + math.floor(20*widgetScale) * font2:GetTextWidth(Spring.I18N('ui.awards.leave')) + math.floor(5*widgetScale))
			and (y > widgetY + math.floor((50 - 5)*widgetScale))
			and (y < widgetY + math.floor((50 + 17 + 5)*widgetScale)) then
		quitColour = "\255" .. string.char(201) .. string.char(51) .. string.char(51)
	else
		quitColour = "\255" .. string.char(201) .. string.char(201) .. string.char(201)
	end
	font2:Print(quitColour .. Spring.I18N('ui.awards.leave'), widgetX + widgetWidthScaled - quitRightX, widgetY + math.floor(50*widgetScale), 20*widgetScale, "o")

	-- Show Graphs button
	if (x > widgetX + widgetWidthScaled - graphsRightX - (5*widgetScale))
			and (x < widgetX + widgetWidthScaled - graphsRightX + math.floor(20*widgetScale) * font2:GetTextWidth(Spring.I18N('ui.awards.showGraphs')) + math.floor(5*widgetScale))
			and (y > widgetY + math.floor((50 - 5)*widgetScale))
			and (y < widgetY + math.floor((50 + 17 + 5))*widgetScale) then
		graphColour = "\255" .. string.char(201) .. string.char(51) .. string.char(51)
	else
		graphColour = "\255" .. string.char(201) .. string.char(201) .. string.char(201)
	end
	font2:Print(graphColour .. Spring.I18N('ui.awards.showGraphs'), widgetX + widgetWidthScaled - graphsRightX, widgetY + math.floor(50*widgetScale), 20*widgetScale, "o")

	-- Close button
	if (x > widgetX + widgetWidthScaled - closeRightX - (5*widgetScale))
			and (x < widgetX + widgetWidthScaled - closeRightX + math.floor(20*widgetScale) * font2:GetTextWidth('X') + math.floor(5*widgetScale))
			and (y > widgetY + widgetHeightScaled - math.floor((10 + 17 + 5)*widgetScale))
			and (y < widgetY + widgetHeightScaled - math.floor((10 - 5))*widgetScale) then
		graphColour = "\255" .. string.char(201) .. string.char(51) .. string.char(51)
	else
		graphColour = "\255" .. string.char(201) .. string.char(201) .. string.char(201)
	end
	font2:Print(graphColour .. 'X', widgetX + widgetWidthScaled - closeRightX, widgetY + widgetHeightScaled - math.floor((10 + 17)*widgetScale), 20*widgetScale, "o")

	font2:End()

	gl.PopMatrix()
end

function widget:LanguageChanged()
	if next(cachedAwards) ~= nil then
		ProcessAwards(cachedAwards)
	end
end

function widget:Initialize()
	Spring.SendCommands('endgraph 2')

	titleFont = WG['fonts'].getFont(fontfile2, 4, 0.2, 1)
	widget:ViewResize(viewScreenX, viewScreenY)
	widgetHandler:RegisterGlobal('GadgetReceiveAwards', ProcessAwards)

	-- load a list of players for each team into playerListByTeam
	local teamList = Spring.GetTeamList()
	for _, teamID in pairs(teamList) do
		local playerList = Spring.GetPlayerList(teamID)
		local list = {} --without specs
		for _, playerID in pairs(playerList) do
			local name, _, isSpec = Spring.GetPlayerInfo(playerID, false)
			if not isSpec then
				table.insert(list, name)
			end
		end
		playerListByTeam[teamID] = list
	end
end

function widget:Shutdown()
	widgetHandler:DeregisterGlobal('GadgetReceiveAwards')
	Spring.SendCommands('endgraph 2')

	gl.DeleteFont(font)
	if Background then
		gl.DeleteList(Background)
	end
	if WG['guishader'] then
		WG['guishader'].RemoveRect('awards')
	end
end
