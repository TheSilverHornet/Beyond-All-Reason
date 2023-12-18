return {
	freefusion = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 4096,
		energycost = 50,
		metalcost = 40,
		buildpic = "FREEFUSION.DDS",
		buildtime = 800,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		corpse = "DEAD",
		energymake = 850,
		energystorage = 150,
		explodeas = "fusionExplosion",
		footprintx = 5,
		footprintz = 5,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		health = 560,
		maxslope = 20,
		maxwaterdepth = 0,
		objectname = "Units/freefusion.s3o",
		seismicsignature = 0,
		selfdestructas = "fusionExplosionSelfd",
		sightdistance = 250,
		yardmap = "ooooooooooooooooooooooooo",
		customparams = {
			removestop = true,
			removewait = true,
			subfolder = "other",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				damage = 2500,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				hitdensity = 100,
				metal = 30,
				object = "Units/freefusion_dead.s3o",
				reclaimable = true,
				customparams = {
					faction = "none",
				},
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1350,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 5,
				hitdensity = 100,
				metal = 10,
				object = "Units/arm5X5A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
	},
}
