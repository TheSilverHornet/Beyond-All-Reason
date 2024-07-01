return {
	cordrag = {
		maxacc = 0,
		autoheal = 4,
		blocking = true,
		maxdec = 0,
		energycost = 0,
		metalcost = 8,
		buildpic = "CORDRAG.DDS",
		buildtime = 255,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "32 22 32",
		collisionvolumetype = "CylY",
		corpse = "ROCKTEETH",
		crushresistance = 250,
		explodeas = "WallExplosionConcrete",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		levelground = false,
		health = 2800,
		maxslope = 64,
		maxwaterdepth = 0,
		objectname = "Units/cordrag.s3o",
		repairable = false,
		script = "Units/cordrag.cob",
		seismicsignature = 0,
		selfdestructas = "WallExplosionConcrete",
		selfdestructcountdown = 1,
		sightdistance = 1,
		yardmap = "ffff",
		customparams = {
			unitgroup = "util",
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cordrag_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			objectify = true,
			paralyzemultiplier = 0,
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landutil",
		},
		featuredefs = {
			rockteeth = {
				animating = 0,
				animtrans = 0,
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				crushresistance = 0,
				damage = 500,
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 2,
				object = "Units/cor1X1A.s3o",
				reclaimable = true,
				resurrectable = 0,
				shadtrans = 1,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {},
		},
	},
}
