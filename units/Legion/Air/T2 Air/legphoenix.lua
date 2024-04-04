return {
	legphoenix = {
		maxacc= 0.05,
		blocking = false,
		maxdec = 0.045,
		energycost = 25000,
		metalcost = 450,
		buildpic = "LEGPHOENIX.DDS",
		buildtime = 40000,
		canfly = true,
		canattack = true,
		canmove = true,
		--hoverattack = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL NOTSUB NOTSHIP NOTHOVER",
		collisionvolumeoffsets = "0 0 5",
		collisionvolumescales = "110 20 60",--yes this is unconventional but needs to be this way (passes the Drivver Test)
		collisionvolumetype = "Box",
		collide = false,
		cruisealtitude = 220,
		explodeas = "largeexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		maxacc = 0.0525,
		maxaileron = 0.01273,
		maxbank = 0.8,
		health = 2300,
		maxelevator = 0.00898,
		maxpitch = 0.625,
		maxrudder = 0.00498,
		maxslope = 10,
		speed = 270,
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
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "110 10 45",
				collisionvolumetype = "Box",
				damage = 1200,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 200,
				object = "Units/legphoenix_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 600,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 110,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
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
			skybeam = {
				areaofeffect = 120,
				avoidfeature = false,
				beamtime = 0.033,
				beamttl = 0.099,
				--beamBurst = true,
				--burst = 20,
				--burstRate = 0.066,
				camerashake = 0.1,
				--collidefriendly = false,
				corethickness = 0.4,
				craterareaofeffect = 120,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.45,
				energypershot = 17,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				firetolerance = 300,
				impulseboost = 0,
				impulsefactor = 0,
				--intensity = 10,
				laserflaresize = 6,
				name = "Phoenix Flame",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -1,
				range = 950,--this is VERTICAL, not lateral
				reloadtime = 8,
				rgbcolor = "1 0.5 0",
				rgbcolor2 = "0.9 1.0 0.5",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "",
				soundstartvolume = 0,
				soundtrigger = 0,
				--sweepfire = true,
				targetmoveerror = 0.1,
				thickness = 4.5,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 125,
					default = 145,
					vtol = 5,
				},
			},
			legphtarg = {--targetting only
				areaofeffect = 121,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.4,
				craterareaofeffect = 0,
				collidefriendly = false,
				commandfire = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = -0.99,
				explosiongenerator = "custom:noexplosion",
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				model = "empty.s3o",
				mygravity = 0.4,
				name = "Targetting System",
				noselfdamage = true,
				range = 1280,
				reloadtime = 7,
				weapontype = "AircraftBomb",
				--weaponvelocity = 650,
				damage = {
					default = 0,
					subs = 0,
				},
				customparams = {
					bogus = 1,
				},
			},
			legphsound = {
				areaofeffect = 0,
				impactonly = 1,
				name = "PhoenixBlast",
				noselfdamage = true,
				SoundHitDry = "heatray3lp",
				SoundHitDryVolume = 18,
				--soundstartvolume = 48,
				weapontype = "Cannon",
				customparams = {
					noexplosionlight = 1,
				},
				damage = {
					default = 0,
				},
				customparams = {
					bogus = 1,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "legphtarg",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "MOBILE",
				def = "skybeam",
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "LEGPHSOUND",
			},
		},
	},
}
