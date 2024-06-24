return {
	legsy = {
		maxacc = 0,
		maxdec = 0,
		energycost = 1200,
		metalcost = 600,
		builder = true,
		buildpic = "legsy.dds",
		buildtime = 6600,
		canmove = true,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "124 59 122",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 100,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 8,
		footprintz = 8,
		idleautoheal = 5,
		idletime = 1800,
		health = 4300,
		metalstorage = 100,
		minwaterdepth = 30,
		objectname = "Units/CORSY.s3o",
		script = "Units/CORSY.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 340,
		terraformspeed = 500,
		waterline = 1,
		workertime = 165,
		yardmap = "oyyyyyyoyccccccyyccccccyyccccccyyccccccyyccccccyyccccccyoyyyyyyo",
		buildoptions = {
			[1] = "legcs",
			[2] = "legstingray",--
			[3] = "legvelite",--
			[4] = "legpontus",
			[5] = "leghastatus",
			[6] = "legtriarius",--
			[7] = "legsub",--
			[8] = "correcl",
			[9] = "legoptio",
			[10] = "leghastatusalt",
			[11] = "legportent",
			[12] = "legtriariusdrone",
			[13] = "legtriariusheatray"--mortar

		},
		customparams = {
			unitgroup = 'builder',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 -10 -4",
				collisionvolumescales = "116 56 120",
				collisionvolumetype = "Box",
				damage = 1794,
				footprintx = 7,
				footprintz = 7,
				height = 4,
				metal = 400,
				object = "Units/corsy_dead.s3o",
				reclaimable = true,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:WhiteLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pshpactv",
			},
		},
	},
}
