return {
	legphoenix = {
		acceleration = 0.05,
		blocking = false,
		brakerate = 0.045,
		buildcostenergy = 55000,
		buildcostmetal = 900,
		buildpic = "CORHURC.DDS",
		buildtime = 85000,
		canfly = true,
		canattack = true,
		canmove = true,
		--hoverattack = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 220,
		explodeas = "largeexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxacc = 0.0525,
		maxaileron = 0.01273,
		maxbank = 0.8,
		maxdamage = 3900,
		maxelevator = 0.00898,
		maxpitch = 0.625,
		maxrudder = 0.00498,
		maxslope = 10,
		maxvelocity = 8.98,
		maxwaterdepth = 0,
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "Units/legphoenix.s3o",
		script = "Units/legphoenix.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 300,
		speedtofront = 0.063,
		turnradius = 64,
		turnrate = 400,
		usesmoothmesh = true,
		wingangle = 0.06148,
		wingdrag = 0.125,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "legionaircraft/t2",
			techlevel = 2,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:gausscannonprojectilexl",
			},
			crashexplosiongenerators = {
				[1] = "crashing-large",
				[2] = "crashing-large",
				[3] = "crashing-large2",
				[4] = "crashing-large3",
				[5] = "crashing-large3",
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
			legphtarg = {--not used atm
				areaofeffect = 180,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.2,
				craterareaofeffect = 180,
				collidefriendly = false,
				commandfire = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "airbombt2.s3o",
				mygravity = 0.4,
				name = "Heavy a2g incinerating warheads",
				noselfdamage = true,
				range = 1280,
				reloadtime = 7,
				soundhit = "bombsmed2",
				soundhitwet = "splslrg",
				soundstart = "bombrelxl",
				weapontype = "AircraftBomb",
				damage = {
					default = 333,
					subs = 100,
				},
			},
			skybeam = {
				areaofeffect = 120,
				avoidfeature = false,
				beamtime = 0.033,
				camerashake = 0.1,
				--collidefriendly = false,
				corethickness = 0.4,
				craterareaofeffect = 120,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 17,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				firetolerance = 300,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 6,
				name = "Phoenix Flame",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -1,
				range = 550,
				reloadtime = 8,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "raptorlaser",
				soundstartvolume = 20,
				soundtrigger = 1,
				--sweepfire = true,
				targetmoveerror = 0.1,
				thickness = 4.5,
				turret = false,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 16,
					default = 33,
					vtol = 11,
				},
			},
			coradvbomb = {
				areaofeffect = 180,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.2,
				craterareaofeffect = 0,
				collidefriendly = false,
				commandfire = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.85,
				--explosiongenerator = "custom:genericshellexplosion-large-bomb",--swap to fake
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				--model = "airbombt2.s3o",--swap to hollow model
				mygravity = 0.4,
				name = "targetting test",
				noselfdamage = true,
				range = 1280,
				reloadtime = 7,
				weapontype = "AircraftBomb",
				damage = {
					default = 0,
					subs = 0,
				},
			},

		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "coradvbomb",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				badtargetcategory = "MOBILE",
				def = "skybeam",
				onlytargetcategory = "NOTSUB",
			}--might need second fake weapon for a bomb aimer
		},
	},
}
