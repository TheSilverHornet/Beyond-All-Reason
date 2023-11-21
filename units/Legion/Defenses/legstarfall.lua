return {
	legstarfall = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 29096,
		buildcostenergy = 700000,
		buildcostmetal = 60000,
		buildpic = "legstarfall.DDS",
		buildtime = 1400000,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "80 130 80",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "advancedFusionExplosion",
		hightrajectory = 1,
		firestate = 0,
		footprintx = 8,
		footprintz = 8,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 33500,
		maxslope = 13,
		maxwaterdepth = 0,
		objectname = "Units/legstarfall.s3o",
		script = "Units/legstarfall.cob",
		seismicsignature = 0,
		selfdestructas = "advancedFusionExplosionSelfd",
		sightdistance = 700,
		yardmap = "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corbhmth_aoplane.dds",
			buildinggrounddecalsizey = 8,
			buildinggrounddecalsizex = 8,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "corbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "80 160 80",
				collisionvolumetype = "CylY",
				damage = 26000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 20,
				hitdensity = 100,
				metal = 30000,
				object = "Units/legstarfall_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "80 10 80",
				damage = 12000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 4,
				hitdensity = 100,
				metal = 14000,
				object = "Units/cor7X7A.s3o",
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
				[1] = "servlrg4",
			},
			select = {
				[1] = "servlrg4",
			},
		},
		weapondefs = {
			starfire = {
				accuracy = 0,
				areaofeffect = 256,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				burst = 61,
				burstrate = 0.01,
				
				sprayangle = 500,
				highTrajectory = 1,
				
				cegtag = "starfire",
				collidefriendly = false,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.95,
				energypershot = 12000,
				explosiongenerator = "custom:starfire-explosion",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "Starfire Barrage Launcher",
				noselfdamage = true,
				range = 6100,
				reloadtime = 15,
				rgbcolor = "0.7 0.7 1.0 1.0 1.0 1.0 1.0 1.0",
				soundhit = "rflrpcexplo",
				soundhitwet = "splshbig",
				soundstart = "lrpcshot",
				soundhitvolume = 36,
				turret = true,
				weapontimer = 14,
				weapontype = "Cannon",
				weaponvelocity = 900,
				damage = {
					default = 900,
					shields = 565,
					subs = 300,
				},
			},
			starburstfire = {
				accuracy = 750,
				areaofeffect = 256,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				burst = 20,
				burstrate = 0.2,
				cegtag = "arty-huge",
				collidefriendly = false,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.95,
				energypershot = 12000,
				
				fixedLauncher = true,
				wobble = 4,
				dance = 4,
				startVelocity = 300,
				accuracy = 20,
				
				explosiongenerator = "custom:genericshellexplosion-huge",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "Starfire Barrage Launcher",
				noselfdamage = true,
				range = 6100,
				reloadtime = 10,
				rgbcolor = "0.8, 0.8, 1",
				soundhit = "rflrpcexplo",
				soundhitwet = "splshbig",
				soundstart = "lrpcshot",
				soundhitvolume = 36,
				turret = true,
				weapontimer = 14,
				weapontype = "Starburst",
				weaponvelocity = 1150,
				damage = {
					default = 1330,
					shields = 665,
					subs = 400,
				},
			}
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "starfire",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
