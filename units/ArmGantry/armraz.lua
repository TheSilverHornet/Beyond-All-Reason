return {
	armraz = {
		acceleration = 0.2369,
		brakerate = 0.9039,
		buildcostenergy = 68000,
		buildcostmetal = 3800,
		buildpic = "ARMRAZ.DDS",
		buildtime = 88566,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0.0 -2 -2",
		collisionvolumescales = "50 60 42",
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "explosiont3",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		maxdamage = 13300,
		maxslope = 15,
		maxvelocity = 2.3,
		maxwaterdepth = 22,
		movementclass = "HBOT4",
		objectname = "Units/ARMRAZ.s3o",
		script = "Units/armraz.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xl",
		sightdistance = 450,
		strafetoattack = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.518,
		turnrate = 768.20001,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "PtaQ",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armgantry",
			techlevel = 3,
			wpn1turretx = 200,
			wpn1turrety = 200,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.43661499023 -1.36986116943 12.126411438",
				collisionvolumescales = "61.6002807617 54.8114776611 71.5794219971",
				collisionvolumetype = "Box",
				damage = 1500,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 2325,
				object = "Units/armraz_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 2000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 930,
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
				[1] = "mavbok1",
			},
			select = {
				[1] = "mavbsel1",
			},
		},
		weapondefs = {
			mech_rapidlaser = {
				accuracy = 32,
				areaofeffect = 32,
				avoidfeature = false,
				beamburst = true,
				beamdecay = 1,
				beamtime = 0.07,
				burst = 6,
				burstrate = 0.06667,
				corethickness = 0.35,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-red",
				firestarter = 10,
				impulseboost = 0,
				impulsefactor = 0,
				largebeamlaser = true,
				laserflaresize = 8.8,
				name = "Rapid-fire close quarters g2g armor-piercing laser",
				noselfdamage = true,
				proximitypriority = 1.3,
				pulsespeed = 8,
				range = 475,
				reloadtime = 0.63333,
				rgbcolor = "0.75 0 0",
				rgbcolor2 = "0.9 0.9 0.6",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasfirerc",
				soundtrigger = 1,
				targetborder = 0.2,
				thickness = 2.4,
				tolerance = 4500,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 920,
				damage = {
					bombers = 87,
					default = 116,
					fighters = 87,
					vtol = 87,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "MECH_RAPIDLASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
