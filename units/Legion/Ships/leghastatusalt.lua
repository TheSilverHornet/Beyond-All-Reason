return {
	leghastatusalt = {
		maxacc = 0.04771,
		airsightdistance = 470,
		autoheal = 1.5,
		blocking = true,
		maxdec = 0.04771,
		energycost = 2700,
		metalcost = 400,
		buildpic = "leghastatusalt.DDS",
		buildtime = 4400,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -4 1",
		collisionvolumescales = "26 26 76",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "mediumExplosionGeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 2,
		idletime = 900,
		health = 2280,
		speed = 80,
		minwaterdepth = 6,
		movementclass = "BOAT4",
		nochasecategory = "VTOL UNDERWATER",
		objectname = "Units/leghastatusalt.s3o",
		script = "Units/leghastatusalt.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 375,
		waterline = 0,
		customparams = {
			unitgroup = 'weapon',
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.255500793457 0.0 -1.26264953613",
				collisionvolumescales = "20.0704803467 16.0 67.0992736816",
				collisionvolumetype = "Box",
				damage = 500,
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 3,
				height = 4,
				metal = 195,
				object = "Units/armpship_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1032,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 97.5,
				object = "Units/arm3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-medium",
				[2] = "custom:bowsplash-small",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			legheatray = {
				areaofeffect = 22,
				avoidfeature = false,
				beamburst = true,
				burst = 9,
				burstrate = 0.03,
				beamTTL = 6,
				beamdecay = 0.7,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-yellow",
				firestarter = 90,
				fireTolerance = 1820,
				tolerance = 1820,
				impulseboost = 0,
				impulsefactor = 0,
				name = "HeatRay",
				noselfdamage = true,
				range = 455,
				reloadtime = 1.3,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray1",
				soundtrigger = true,
				targetmoveerror = 0,
				turret = true,
				weapontype = "BeamLaser",
				damage = {
					default = 10,
					vtol = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "LIGHTAIRSCOUT UNDERWATER",
				def = "legheatray",
				maindir = "0 0 1",
				maxangledif = 310,
				onlytargetcategory = "NOTSUB",
				fastautoretargeting=true,
			},
			[2] = {
				badtargetcategory = "LIGHTAIRSCOUT UNDERWATER",
				def = "legheatray",
				onlytargetcategory = "NOTSUB",
				fastautoretargeting=true,
			},
			[3] = {
				badtargetcategory = "LIGHTAIRSCOUT UNDERWATER",
				def = "legheatray",
				slaveto=2,
				onlytargetcategory = "NOTSUB",
				fastautoretargeting=true,
			},
		},
	},
}
