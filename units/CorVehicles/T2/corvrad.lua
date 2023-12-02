return {
	corvrad = {
		maxacc = 0.01043,
		activatewhenbuilt = true,
		maxdec = 0.02086,
		energycost = 1300,
		metalcost = 92,
		buildpic = "CORVRAD.DDS",
		buildtime = 4220,
		canattack = true,
		canmove = true,
		category = "ALL TANK MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "24 18 29",
		collisionvolumetype = "box",
		corpse = "dead",
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 570,
		maxslope = 16,
		speed = 48.0,
		maxwaterdepth = 0,
		movementclass = "TANK3",
		objectname = "Units/CORVRAD.s3o",
		onoffable = false,
		radardistance = 2200,
		script = "Units/CORVRAD.cob",
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 900,
		sonardistance = 0,
		trackstrength = 10,
		tracktype = "corwidetracks",
		trackwidth = 23,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.825,
		turnrate = 210,
		customparams = {
			maxrange = 500,
			unitgroup = 'util',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corvehicles/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.611381530762 -0.0270607836914 -0.43489074707",
				collisionvolumescales = "23.1105194092 8.20951843262 32.5806274414",
				collisionvolumetype = "Box",
				damage = 546,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 64,
				object = "Units/corvrad_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 450,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 48,
				object = "Units/cor2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:radarpulse_t2",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "cvradsel",
			},
		},
		weapondefs = {
			corvrad_xrangexfinder = {
				areaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				metalpershot = 0,
				noselfdamage = true,
				range = 500,
				reloadtime = 16,
				smokeTrailCastShadow = false,
				castshadow = true,
				tolerance = 4000,
				turnrate = 15000,
				weaponacceleration = 100,
				weapontimer = 3,
				weapontype = "Cannon",
				weaponvelocity = 100,
				damage = {
					default = 1,
				},
				customparams = {
					bogus = 1,
				}
			},
		},
		weapons = {
			[1] = {
				def = "corvrad_xrangexfinder",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
