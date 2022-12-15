return {
	corassistdrone = {
		acceleration = 0.5,
		blocking = false,
		brakerate = 0.5,
		buildcostenergy = 25000,
		buildcostmetal = 500,
		builddistance = 100,
		builder = true,
		buildpic = "CORASSISTDRONE.DDS",
		buildtime = 25000,
		cancapture = true,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE NOTLAND NOTSUB VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 100,
		explodeas = "smallexplosiongeneric-builder",
		energymake = 15,
		footprintx = 1,
		footprintz = 1,
		hoverattack = false,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 335,
		maxslope = 10,
		maxvelocity = 10,
		maxwaterdepth = 0,
		objectname = "Units/scavboss/CORASSISTDRONE.s3o",
		script = "Units/CORCA.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 200,
		terraformspeed = 225,
		turninplaceanglelimit = 360,
		turnrate = 740,
		workertime = 150,
		buildoptions = {
			"corsolar",
			"corwin",
			"cormstor",
			"corestor",
			"cormex",
			"cormakr",
			"corlab",
			"corvp",
			"corap",
			"coreyes",
			"corrad",
			"cordrag",
			"corllt",
			"corrl",
			"cordl",
			"cortide",
			"coruwms",
			"coruwes",
			-- "coruwmex",
			"corfmkr",
			"corsy",
			"corfdrag",
			"cortl",
			"corfrt",
			"corfrad",
			-- Experimental:
			"corhp",
			"corfhp",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "cormex",
			model_author = "Mr Bob, Flaka",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "coraircraft",
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
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			repair = "repair2",
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
				[1] = "vtolcrac",
			},
		},
	},
}
