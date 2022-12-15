return {
	coruwes = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 2700,
		buildcostmetal = 300,
		buildpic = "CORUWES.DDS",
		buildtime = 7241,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE UNDERWATER EMPABLE",
		corpse = "DEAD",
		energystorage = 6000,
		explodeas = "largeBuildingExplosionGeneric-uw",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3400,
		maxslope = 20,
		minwaterdepth = 31,
		objectname = "Units/CORUWES.s3o",
		script = "Units/CORUWES.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd-uw",
		sightdistance = 169,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/coruwes_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'energy',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/seaeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "5.91815185547 -0.0585083374023 -0.949203491211",
				collisionvolumescales = "57.7583618164 50.6997833252 64.7775878906",
				collisionvolumetype = "Box",
				damage = 1825,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 182,
				object = "Units/coruwes_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 913,
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 73,
				object = "Units/cor4X4D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
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
				[1] = "storngy2",
			},
		},
	},
}
