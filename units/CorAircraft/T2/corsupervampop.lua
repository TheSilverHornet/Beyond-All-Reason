return {
	corsupervamp = {
		acceleration = 0.35,
		airsightdistance = 1100,
		blocking = false,
		brakerate = 0.0875,
		buildcostenergy = 4750,
		buildcostmetal = 135,
		buildpic = "CORVAMP.DDS",
		buildtime = 8400,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 160,
		explodeas = "smallExplosionGenericAir",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxacc = 0.2075,
		maxaileron = 0.01488,
		maxbank = 0.8,
		maxdamage = 290,
		maxelevator = 0.01113,
		maxpitch = 0.625,
		maxrudder = 0.00663,
		maxslope = 10,
		maxvelocity = 12.65,
		maxwaterdepth = 0,
		nochasecategory = "NOTAIR",
		objectname = "Units/corvamp.s3o",
		script = "Units/corsupervamp.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericAir",
		sightdistance = 260,
		speedtofront = 0.06475,
		stealth = true,
		turnradius = 60,
		turnrate = 1000,
		usesmoothmesh = true,
		wingangle = 0.06363,
		wingdrag = 0.21,
		customparams = {
			unitgroup = 'aa',
			model_author = "Mr Bob",
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
			corsvtol_advmissile = {
				areaofeffect = 8,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailfighter",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny-air",
				firestarter = 0,
				flighttime = 1.4,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Guided a2a/a2g missile launcher",
				noselfdamage = true,
				range = 740,
				reloadtime = 1,
				smoketrail = false,
				smokePeriod = 4,
				smoketime = 8,
				smokesize = 1.8,
				smokecolor = 0.55,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundstart = "Rocklit3",
				startvelocity = 515,
				texture1 = "null",
				texture2 = "smoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 28000,
				weaponacceleration = 450,
				weapontimer = 7,
				weapontype = "MissileLauncher",
				weaponvelocity = 935,
				damage = {
					commanders = 8,
					default = 24,
					vtol = 500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "CORSVTOL_ADVMISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
