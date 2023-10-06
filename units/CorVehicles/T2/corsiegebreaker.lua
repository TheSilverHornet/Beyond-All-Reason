return {
	corsiegebreaker = {
		acceleration = 0.0206,
		activatewhenbuilt = true,
		brakerate = 0.05321,
		buildcostenergy = 29000,
		buildcostmetal = 1050,
		buildpic = "CORPARROW.DDS",
		buildtime = 22181,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -8 2",
		collisionvolumescales = "28 24 48",
		collisionvolumetype = "BOX",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		usepiececollisionvolumes = 1,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 2300,
		maxslope = 12,
		maxvelocity = 1.3,
		movementclass = "ATANK3",
		nochasecategory = "VTOL",
		onoffable = true,
		objectname = "Units/CORSIEGEBREAKER.s3o",
		script = "Units/CORSIEGEBREAKER.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 1500,--500
		trackoffset = -6,
		trackstrength = 10,
		tracktype = "corparrowtracks",
		trackwidth = 46,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.21,
		turnrate = 200,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "gun",
			driftratio = "0.25",
			firingceg = "barrelshot-medium",
			flare1name = "flare",
			kickback = "-4",
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			restoretime = "3000",
			rockstrength = "5.5",
			sleevename = "sleeve",
			subfolder = "corvehicles/t2",
			techlevel = 2,
			turretname = "gun",
			wpn1turretx = "1",
			wpn1turrety = "1",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "4.526512146 -4.16978120361 3.13526153564",
				collisionvolumescales = "36.4536895752 11.1021575928 54.8021697998",
				collisionvolumetype = "Box",
				damage = 4000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 9,
				hitdensity = 100,
				metal = 642,
				object = "Units/corparrow_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "all",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 3000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				hitdensity = 100,
				metal = 257,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "all",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
				[2] = "custom:DUST_CLOUD",
				[3] = "custom:barrelshot-large-impulse",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			dreadshot = {
				areaofeffect = 40,
				avoidfeature = false,
				beamtime = 0.7,
				corethickness = 0.39,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 1,--150
				explosiongenerator = "custom:burnblackbig",
				firestarter = 70,
				impulseboost = 0.4,
				impulsefactor = 1.0,
				laserflaresize = 8.25,
				name = "Dreadshot Ion Accelerator",
				noselfdamage = true,
				proximitypriority = -1.5,
				range = 820,
				reloadtime = 6,
				rgbcolor = "0 1 0.8",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 1.6,
				tolerance = 10000,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 1250,
				damage = {
					bombers = 60,
					default = 1370,
					fighters = 60,
					subs = 185,
					vtol = 60,
				},
			},
			dreadovercharge = {
				areaofeffect = 60,
				avoidfeature = false,
				beamtime = 0.7,
				corethickness = 0.49,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 1,--450
				explosiongenerator = "custom:burnblackbig",
				firestarter = 70,
				impulseboost = 1.3,
				impulsefactor = 1.8,
				laserflaresize = 12.25,
				name = "Overcharged Dreadshot Ion Accelerator",
				noselfdamage = true,
				proximitypriority = -1.5,
				range = 910,
				reloadtime = 12,
				rgbcolor = "0 1 0.8",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 2.6,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1250,
				damage = {
					bombers = 60,
					default = 4000,
					fighters = 60,
					subs = 185,
					vtol = 60,
				},

			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "DREADSHOT",
				maindir = "0 0 1",
				maxangledif = 40,
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "DREADOVERCHARGE",
				maindir = "0 0 1",
				maxangledif = 30,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
