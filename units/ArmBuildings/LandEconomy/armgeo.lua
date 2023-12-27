return {
	armgeo = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 2048,
		energycost = 13000,
		metalcost = 560,
		buildpic = "ARMGEO.DDS",
		buildtime = 13100,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -4 0",
		collisionvolumescales = "60 70 60",
		collisionvolumetype = "Box",
		corpse = "dead",
		energymake = 300,
		energystorage = 1000,
		explodeas = "geo",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		health = 1940,
		maxslope = 20,
		maxwaterdepth = 5,
		objectname = "Units/ARMGEO.s3o",
		script = "Units/ARMGEO.cob",
		seismicsignature = 0,
		selfdestructas = "geo",
		sightdistance = 273,
		yardmap = "h cbobbobc boboobob obbggbbo bogbbgob bogbbgob obbggbbo boboobob cbobbobc",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armgeo_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'energy',
			cvbuildable = true,
			geothermal = 1,
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/landeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "60 70 60",
				collisionvolumetype = "Box",
				damage = 1050,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 40,
				hitdensity = 100,
				metal = 338,
				object = "Units/armgeo_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 525,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 135,
				object = "Units/arm4X4B.s3o",
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
				[1] = "geothrm1",
			},
		},
	},
}
