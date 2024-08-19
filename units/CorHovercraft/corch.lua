return {
	corch = {
		maxacc = 0.03792,
		maxdec = 0.11,
		energycost = 3000,
		metalcost = 190,
		builddistance = 150,
		builder = true,
		buildpic = "CORCH.DDS",
		buildtime = 4580,
		canmove = true,
		category = "ALL HOVER MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "27 26 40",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energymake = 11,
		energystorage = 75,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 1490,
		maxslope = 16,
		speed = 60.899,
		maxwaterdepth = 0,
		movementclass = "HOVER3",
		objectname = "Units/CORCH.s3o",
		radardistance = 50,
		script = "Units/CORCH.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 338,
		terraformspeed = 550,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.518,
		turnrate = 410,
		workertime = 115,
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
			[44] = "coravp",
			[45] = "corasy",
			[46] = "coruwgeo",
		},
		customparams = {
			unitgroup = 'builder',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corhovercraft",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "27 18 38",
				collisionvolumetype = "Box",
				damage = 805,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 100,
				object = "Units/corch_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 403,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 40,
				object = "Units/cor3X3D.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-small-hover",
				[2] = "custom:bowsplash-small-hover",
				[3] = "custom:hover-wake-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
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
				[1] = "hovmdok2",
			},
			select = {
				[1] = "hovmdsl2",
			},
		},
	},
}
