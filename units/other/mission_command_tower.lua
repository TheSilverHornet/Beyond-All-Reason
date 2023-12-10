return {
	mission_command_tower = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 16384,
		energycost = 100000,
		metalcost = 10000,
		buildpic = "MISSION_COMMAND_TOWER.DDS",
		buildtime = 100000,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		energymake = 250,
		energyupkeep = 0,
		explodeas = "fusionExplosion",
		footprintx = 12,
		footprintz = 12,
		icontype = "building",
		idleautoheal = 5,
		idletime = 100,
		health = 11100,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/mission_command_tower.s3o",
		script = "mission_command_tower.cob",
		reclaimable = false,
		seismicsignature = 0,
		selfdestructas = "fusionExplosionSelfd",
		sightdistance = 100,
		yardmap = "oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/mission_command_tower_aoplane.dds",
			buildinggrounddecalsizey = 11.25,
			buildinggrounddecalsizex = 11.25,
			buildinggrounddecaldecayspeed = 30,
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "other",
			techlevel = 2,
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "geothrm1",
			},
		},
	},
}
