return {
	legatrans = {
		maxacc = 0.09,
		blocking = false,
		maxdec = 0.75,
		energycost = 2200,
		metalcost = 80,
		buildpic = "LEGATRANS.DDS",
		buildtime = 5100,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealtitude = 100,
		explodeas = "mediumexplosiongeneric",
		footprintx = 2,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		loadingradius = 300,
		health = 300,
		maxslope = 10,
		speed = 190.0,
		maxwaterdepth = 0,
		objectname = "Units/LEGATRANS.s3o",
		releaseheld = true,
		script = "Units/LEGATRANS.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 260,
		transportcapacity = 1,
		transportmass = 4999,
		transportsize = 3,
		transportunloadmethod = 0,
		turninplaceanglelimit = 360,
		turnrate = 650,
		verticalspeed = 3.75,
		customparams = {
			model_author = "ZephyrSkies",
			normaltex = "unittextures/leg_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "Legion/Air",
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg2",
				[2] = "airdeathceg3",
				[3] = "airdeathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
