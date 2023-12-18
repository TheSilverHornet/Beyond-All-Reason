return {
	legionnaire = {
		acceleration = 0.35,
		airsightdistance = 1100,
		blocking = false,
		brakerate = 0.0875,
		buildcostenergy = 6200,
		buildcostmetal = 180,
		buildpic = "legionnaire.DDS",
		buildtime = 10000,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 160,
		explodeas = "smallExplosionGenericAir",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxacc = 0.4,
		maxaileron = 0.016,
		maxbank = 0.72,
		maxdamage = 480,
		maxelevator = 0.013,
		maxpitch = 0.745,
		maxrudder = 0.015,
		maxslope = 15,
		maxvelocity = 10,
		maxwaterdepth = 0,
		nochasecategory = "NOTAIR",
		objectname = "Units/legionnaire.s3o",
		script = "Units/legionnaire.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericAir",
		sightdistance = 250,
		speedtofront = 0.06475,
		stealth = false,
		turnradius = 32,
		turnrate = 1500,
		usesmoothmesh = true,
		wingangle = 0.06363,
		wingdrag = 0.21,
		customparams = {
			unitgroup = 'aa',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "coraircraft/t2",
			techlevel = 2,
			fighter = 1,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-tiny",
				[2] = "crashing-tiny2",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg3",
				[2] = "airdeathceg4",
				[3] = "airdeathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
		weapondefs = {
			leggun = {
				accuracy = 5,
				areaofeffect = 2,
				avoidfeature = true,
				avoidfriendly = false,
				burst = 10,
				burstrate = 0.04,
				burnblow = false,
				collideFriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.0,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				minIntensity = 0.8,
				name = "Rapid-fire dual A2A machine guns",
				noselfdamage = true,
				ownerExpAccWeight = 8.0,
				predictboost = 1,
				proximitypriority = 3,
				range = 600,
				reloadtime = 0.50,
				rgbcolor = "1 0.4 0.95",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 2,
				sprayangle = 125,
				thickness = 0.6,
				tolerance = 2400,
				turret = true,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 2500,
				damage = {
					commanders = 1,
					default = 2,
					vtol = 80,
				},
			},
		
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "leggun",
				maindir = "0 0 1",
				maxangledif = 18,
				onlytargetcategory = "VTOL",
				weaponAimAdjustPriority = 20,
				fastAutoRetargeting = true,
			},
		},
	},
}
