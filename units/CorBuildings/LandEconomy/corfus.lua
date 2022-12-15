return {
	corfus = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 26000,
		buildcostmetal = 4500,
		buildpic = "CORFUS.DDS",
		buildtime = 75424,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		corpse = "DEAD",
		energymake = 1100,
		energystorage = 2500,
		explodeas = "fusionExplosion",
		footprintx = 5,
		footprintz = 5,
		hidedamage = true,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 5000,
		maxslope = 10,
		maxwaterdepth = 1,
		objectname = "Units/CORFUS.s3o",
		script = "Units/CORFUS.cob",
		seismicsignature = 0,
		selfdestructas = "fusionExplosionSelfd",
		sightdistance = 273,
		yardmap = "ooooooooooooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corfus_aoplane.dds",
			buildinggrounddecalsizey = 7,
			buildinggrounddecalsizex = 7,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'energy',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landeconomy",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "3.32994842529 0.0812156738281 2.24537658691",
				collisionvolumescales = "116.287948608 73.0596313477 95.7222900391",
				collisionvolumetype = "Box",
				damage = 5100,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				hitdensity = 100,
				metal = 2927,
				object = "Units/corfus_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2550,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 1171,
				object = "Units/cor5X5D.s3o",
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
				[1] = "fusion2",
			},
		},
	},
}
