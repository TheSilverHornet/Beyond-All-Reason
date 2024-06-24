return {
	legpontus = {
		maxacc = 0.05,
		activatewhenbuilt = true,
		airsightdistance = 800,
		autoheal = 1.5,
		maxdec = 0.06473,
		energycost = 1700,
		metalcost = 250,
		buildpic = "CORPT.DDS",
		buildtime = 2900,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -3 -1",
		collisionvolumescales = "20 20 60",
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 900,
		health = 1050,
		speed = 62.0,
		minwaterdepth = 6,
		movementclass = "BOAT3",
		movestate = 0,
		nochasecategory = "VTOL UNDERWATER",
		objectname = "Units/legpontus.s3o",
		radardistance = 720,
		radaremitheight = 25,
		script = "Units/legpontus.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 670,
		sonardistance = 500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 520.5,
		waterline = 0,
		customparams = {
			unitgroup = 'weaponaa',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.5,
			subfolder = "corships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-3.69921112061 1.72119140629e-06 -0.0",
				collisionvolumescales = "32.8984222412 14.8354034424 64.0",
				collisionvolumetype = "Box",
				damage = 500,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 97.5,
				object = "Units/corpt_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1432,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 48.75,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-tiny",
				[2] = "custom:radarpulse_t1",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			armseap_weapon1 = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = true,
				burnblow = true,
				cegtag = "torpedotrail-tiny",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.25,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 3,
				gravityaffected = "false",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo.s3o",
				name = "Homing torpedo launcher",
				noselfdamage = true,
				predictboost = 0.3,
				range = 490,
				reloadtime = 6,
				soundhit = "xplodep1",
				soundhitwet = "splsmed",
				soundstart = "torpedo1",
				soundhitvolume = 3,
				soundhitwetvolume = 12,
				startvelocity = 45,
				tolerance = 12000,
				tracks = true,
				turnrate = 4500,
				turret = true,
				waterweapon = true,
				weaponacceleration = 2,
				weapontimer = 4,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 200,
				damage = {
					commanders = 150,
					default = 342,
					vtol = 15,
				},
				customparams = {
					speceffect = "torpwaterpen",
					when = "ypos<0",
				},
			},

			depthcharge = {
				areaofeffect = 24,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.9,
				explosiongenerator = "custom:genericshellexplosion-medium-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cortorpedo.s3o",
				name = "Depthcharge launcher",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 3.5,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				startvelocity = 130,
				tolerance = 1000,
				tracks = false,
				turnrate = 6000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 18,
				weapontimer = 3.25,
				weapontype = "MissileLauncher",
				weaponvelocity = 250,
				damage = {
					default = 225,
				},
			},
		},
		weapons = {
			[1] = {

				badtargetcategory = "HOVER NOTSUB",	
				def = "armseap_weapon1",
				--maindir = "0 -1 0",
				--maxangledif = 179,
				onlytargetcategory = "NOTHOVER",

			},
		},
	},
}
