return {
	corcsa = {
		maxacc = 0.072,
		blocking = false,
		maxdec = 0.4275,
		energycost = 8200,
		metalcost = 140,
		builddistance = 136,
		builder = true,
		buildpic = "CORCSA.DDS",
		buildtime = 12000,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE NOTSUB VTOL NOWEAPON NOTSHIP NOTHOVER CANBEUW",
		collide = true,
		cruisealtitude = 55,
		energymake = 20,
		energystorage = 75,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		idleautoheal = 5,
		idletime = 1800,
		health = 435,
		maxslope = 10,
		speed = 217.5,
		maxwaterdepth = 255,
		objectname = "Units/CORCSA.s3o",
		script = "Units/CORCSA.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 351,
		terraformspeed = 300,
		turninplaceanglelimit = 360,
		turnrate = 240,
		workertime = 85,
		buildoptions = {
			[1] = "corsolar",
			[2] = "coradvsol",
			[3] = "corwin",
			[4] = "corgeo",
			[5] = "cormstor",
			[6] = "corestor",
			[7] = "cormex",
			[8] = "corexp",
			[9] = "cormakr",
			[10] = "corlab",
			[11] = "corvp",
			[12] = "corap",
			[13] = "corhp",
			[14] = "cornanotc",
			[15] = "cornanotcplat",
			[16] = "coreyes",
			[17] = "corrad",
			[18] = "cordrag",
			[19] = "cormaw",
			[20] = "corllt",
			[21] = "corhllt",
			[22] = "corhlt",
			[23] = "corpun",
			[24] = "corrl",
			[25] = "cormadsam",
			[26] = "corerad",
			[27] = "cordl",
			[28] = "corjamt",
			[29] = "corjuno",
			[30] = "corfhp",
			[31] = "corsy",
			[32] = "coramsub",
			[33] = "corplat",
			[34] = "cortide",
			--[35] = "coruwmex",
			[36] = "corfmkr",
			[37] = "coruwms",
			[38] = "coruwes",
			[39] = "corfdrag",
			[40] = "corfrad",
			[41] = "corfhlt",
			[42] = "corfrt",
			[43] = "cortl",
			[44] = "coruwgeo",
			[45] = "corasp",
			[46] = "corfasp",
			[47] = "corasy",
			[48] = "coraap",
		},
		customparams = {
			unitgroup = 'builder',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corseaplanes",
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
				[1] = "airdeathceg2-builder",
				[2] = "airdeathceg3-builder",
				[3] = "airdeathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "seapsel2",
			},
		},
	},
}
