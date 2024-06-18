return {
	corsiegebreaker = {
		acceleration = 0.0206,
		activatewhenbuilt = true,
		brakerate = 0.05321,
		buildcostenergy = 15000,
		buildcostmetal = 1100,
		buildpic = "CORSIEGEBREAKER.DDS",
		buildtime = 20000,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "3.5 3 2",
		collisionvolumescales = "32 18 55",
		collisionvolumetype = "BOX",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 4,
		footprintz = 5,
		idleautoheal = 5,
		usepiececollisionvolumes = 1,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 3000,
		maxslope = 12,
		maxvelocity = 1.8,
		movementclass = "HTANK4",
		nochasecategory = "VTOL GROUNDSCOUT",
		onoffable = true,
		objectname = "Units/CORSIEGEBREAKER.s3o",
		script = "Units/CORSIEGEBREAKER.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 500,--500
		trackoffset = -6,
		trackstrength = 10,
		tracktype = "corparrowtracks",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.21,
		turnrate = 250,
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
			onoffname = "dreadshot",
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
				collisionvolumeoffsets = "0 -8 2",
				collisionvolumescales = "28 24 48",
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
				object = "Units/corsiegebreaker_dead.s3o",
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
				avoidfriendly = true,
				beamtime = 0.1,
				collidefeature = true,
				collidefriendly = false,
				corethickness = 0.39,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 100,
				explosiongenerator = "custom:laserhit-medium-blue",
				firestarter = 70,
				fireTolerance = 2000,
				impulseboost = 0.3,
				impulsefactor = 0.4,
				laserflaresize = 8.25,
				minintensity = 1,
				name = "Dreadshot Ion Accelerator",
				noselfdamage = true,
				predictboost = 1,
				range = 820,
				reloadtime = 3,
				rgbcolor = "0 1 0.8",
				rgbcolor2 = "0 0.8 0.6",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 1.6,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 3060,
				damage = {
					commanders = 200,
					default = 500,
				},
			},
			dreadovercharge = {
				areaofeffect = 60,
				avoidfeature = false,
				avoidfriendly = true,
				beamtime = 0.7,
				collidefeature = true,
				collidefriendly = true,
				corethickness = 0.49,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 1400,
				explosiongenerator = "custom:laserhit-large-blue",
				firestarter = 70,
				fireTolerance = 2000,
				impulseboost = 0.8,
				impulsefactor = 1.2,
				largebeamlaser = true,
				laserflaresize = 12.25,
				minintensity = 0.5,
				name = "Overcharged Dreadshot Ion Accelerator",
				noselfdamage = true,
				predictboost = 1,
				range = 910,
				reloadtime = 10,
				rgbcolor = "0 1 0.8",
				rgbcolor2 = "0.3 1 0.9",
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
					commanders = 700,
					default = 6666,--at max range is same dps as starlight. isn't 'over' units like the starlight or magic bullet like the sniper, and deals FF damage. these are intentionally hard to mass fire in this mode as tradeoff for high alpha. may still be too dps inefficient even now, esp compared to starlight which can kite and be screened
				},

			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "DREADOVERCHARGE",
				maindir = "0 0 1",
				maxangledif = 50,
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
				weaponAimAdjustPriority = 125,
			},
			[2] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "DREADSHOT",
				maindir = "0 0 1",
				maxangledif = 50,
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
				weaponAimAdjustPriority = 125,
			},
		},
	},
}
