return {
	corsd = {
		activatewhenbuilt = true,
		buildangle = 4096,
		energycost = 6700,
		metalcost = 750,
		buildpic = "CORSD.DDS",
		buildtime = 12000,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "65 10 60",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energyupkeep = 125,
		explodeas = "mediumBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		levelground = false,
		health = 2800,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/CORSD.s3o",
		onoffable = true,
		script = "Units/CORSD.cob",
		seismicdistance = 2000,
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 225,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corsd_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'util',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landutil",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.15772247314 -1.86200052979 2.43579101563",
				collisionvolumescales = "68.8967437744 12.3805389404 66.8254699707",
				collisionvolumetype = "Box",
				damage = 1500,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				metal = 584,
				object = "Units/corsd_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 750,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				metal = 234,
				object = "Units/cor4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
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
			activate = "targon2",
			canceldestruct = "cancel2",
			deactivate = "targoff2",
			underattack = "warning1",
			working = "targsel2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "targsel2",
			},
		},
	},
}
