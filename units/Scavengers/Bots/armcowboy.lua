return {
	armcowboy = {
		maxacc = 0.138,
		activatewhenbuilt = true,
		maxdec = 1.29375,
		energycost = 6300,
		metalcost = 300,
		buildpic = "ARMFIDO.DDS",
		buildtime = 6230,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 1",
		collisionvolumescales = "26 32 28",
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "mediumExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1280,
		maxslope = 14,
		speed = 69.0,
		maxwaterdepth = 12,
		movementclass = "BOT4",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/cowboyfido.s3o",
		onoffable = true,
		script = "Units/scavboss/armcowboy.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 400,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.518,
		turnrate = 1138.5,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			onoffname = "gauss",
			subfolder = "armbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-2.33637237549 -5.01163688965 -4.31414794922",
				collisionvolumescales = "32.719619751 19.6731262207 35.1108398438",
				collisionvolumetype = "Box",
				damage = 1000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 164,
				object = "Units/armfido_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 600,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 66,
				object = "Units/arm2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small-impulse",
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			gauss = {
				areaofeffect = 8,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small",
				impactonly = 1,
				name = "Anti-swarm g2g gauss-impulse guns",
				noselfdamage = true,
				predictboost = 0.3,
				range = 365,
				reloadtime = 1,
				separation = 1.0,
				nogap = false,
				sizeDecay = 0.01,
				stages = 12,
				alphaDecay = 0.10,
				soundhit = "xplomed5",
				soundhitwet = "splshbig",
				soundstart = "mavgun4",
				tolerance = 4000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					default = 265,
					vtol = 65,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "GAUSS",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
