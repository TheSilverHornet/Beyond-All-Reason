return {
	armcir = {
		acceleration = 0,
		airsightdistance = 1060,
		brakerate = 0,
		buildangle = 65536,
		buildcostenergy = 7300,
		buildcostmetal = 750,
		buildpic = "ARMCIR.DDS",
		buildtime = 12000,
		canrepeat = false,
		category = "ALL WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "50 77 50",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumBuildingExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 4450,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/ARMCIR.s3o",
		script = "Units/ARMCIR.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 380,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armcir_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'aa',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			prioritytarget = "air",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "50 77 50",
				collisionvolumetype = "cylY",
				damage = 1500,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 370,
				object = "Units/armcir_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 750,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 150,
				object = "Units/arm3X3B.s3o",
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
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twrturn3",
			},
			select = {
				[1] = "twrturn3",
			},
		},
		weapondefs = {
			arm_cir = {
				areaofeffect = 48,
				avoidfeature = false,
				burnblow = true,
				burst = 4,
				burstrate = 0.26667,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 20,
				flighttime = 2.3,
				impulseboost = 0,
				impulsefactor = 0,
				model = "cormissile.s3o",
				name = "Rapid-fire long-range g2a missile barrel",
				noselfdamage = true,
				projectiles = 1,
				proximitypriority = -2,
				range = 1125,
				reloadtime = 1.6,
				smoketrail = true,
				smokePeriod = 8,
				smoketime = 12,
				smokesize = 5.4,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundstart = "rocklit1",
				soundtrigger = true,
				texture1 = "null",
				texture2 = "smoketrailaa3",
				tolerance = 100000,
				tracks = true,
				turnrate = 42000,
				turret = true,
				startvelocity = 250,
				weaponacceleration = 300,
				weapontype = "MissileLauncher",
				weaponvelocity = 1300,
				customparams = {
					expl_light_color = "1 0.4 0.5",
					expl_light_mult = 1.59,
					expl_light_radius_mult = 1.67,
					light_color = "1 0.5 0.6",
				},
				damage = {
					bombers = 265,
					fighters = 215,
					vtol = 170,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_CIR",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
