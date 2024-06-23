return {
	armcrus = {
		maxacc = 0.02952,
		activatewhenbuilt = true,
		maxdec = 0.02952,
		buildangle = 16384,
		energycost = 12000,
		metalcost = 1000,
		buildpic = "ARMCRUS.DDS",
		buildtime = 17000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -8 0",
		collisionvolumescales = "32 32 112",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "largeexplosiongeneric",
		floater = true,
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		health = 5600,
		speed = 60,
		minwaterdepth = 30,
		movementclass = "BOAT5",
		nochasecategory = "VTOL",
		objectname = "Units/ARMCRUS.s3o",
		script = "Units/ARMCRUS.cob",
		seismicsignature = 0,
		selfdestructas = "largeexplosiongenericSelfd",
		sightdistance = 600,
		sonardistance = 375,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 270,
		waterline = 0,
		customparams = {
			unitgroup = 'weaponsub',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-3.49415588379 -0.469155969238 -4.06915588379",
				collisionvolumescales = "48.6282958984 40.4258880615 146.154632568",
				collisionvolumetype = "Box",
				damage = 5408,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 500,
				object = "Units/armcrus_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 250,
				object = "Units/arm2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:waterwake-medium",
				[3] = "custom:bowsplash-medium",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			depthcharge = {
				areaofeffect = 32,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.95,
				explosiongenerator = "custom:genericshellexplosion-medium-uw",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cordepthcharge.s3o",
				name = "Medium depthcharge launcher",
				noselfdamage = true,
				range = 450,
				reloadtime = 2,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 150,
				tolerance = 32767,
				tracks = true,
				turnrate = 9800,
				turret = false,
				waterweapon = true,
				weaponacceleration = 25,
				weapontimer = 10,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 225,
				damage = {
					default = 225,
				},
			},
			gauss = {
				areaofeffect = 16,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Long-range g2g gauss cannon",
				noselfdamage = true,
				range = 500,
				reloadtime = 1.666,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundstart = "cannhvy1",
				targetmoveerror = 0.1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 550,
				damage = {
					default = 220,
					subs = 220,
					vtol = 40,
				},
			},
			laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.15,
				corethickness = 0.175,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 15,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 9.35,
				name = "Light close-quarters g2g laser",
				noselfdamage = true,
				range = 430,
				reloadtime = 0.333,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 2.5,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					default = 75,
					vtol = 8,
				},
			},
		},
		weapons = {
			[1] = {
				def = "GAUSS",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "LASER",
				onlytargetcategory = "NOTSUB",
			},
			[3] = {
				def = "DEPTHCHARGE",
				onlytargetcategory = "CANBEUW UNDERWATER",
			},
		},
	},
}
