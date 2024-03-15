return {
	legflak = {
		maxacc = 0,
		airsightdistance = 1000,
		maxdec = 0,
		buildangle = 8192,
		energycost = 13000,
		metalcost = 820,
		buildpic = "ARMFLAK.DDS",
		buildtime = 19000,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "55 85 55",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumBuildingexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1750,
		maxslope = 10,
		maxwaterdepth = 0,
		nochasecategory = "ALL",
		objectname = "Units/LEGFLAK.s3o",
		script = "Units/LEGFLAK.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 525,
		yardmap = "oooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/legflak_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'aa',
			model_author = "Cremuss",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "legion/defenses",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -15 0",
				collisionvolumescales = "55 55 55",
				collisionvolumetype = "Box",
				damage = 945,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 500,
				object = "Units/legflak_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 473,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 200,
				object = "Units/arm2X2C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-flak",
			},
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
			legflak_gun = {
				accuracy = 100,
				areaofeffect = 42,
				avoidfeature = false,
				avoidfriendly = false,
				burst = 3,
				burstrate = 0.02,
				burnblow = true,
				canattackground = false,
				cegtag = "flaktrailaa",
				collidefriendly = false,
				craterareaofeffect = 192,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				mygravity = 0.01,
				name = "Heavy antiair gatling gun",
				noselfdamage = true,
				predictboost = 1,
				range = 850,
				reloadtime = 0.15,
				--size = 4.5,
				--sizedecay = 0.08,
				smoketrail = false,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundhitvolume = 7.5,
				soundstartvolume = 5,
				stages = 0,
				turret = true,
				weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 3500,
				damage = {
					default = 40,
					vtol = 60,
				},
				rgbcolor = "1 0.33 0.7",
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				ownerExpAccWeight = 1.35,--does this affect sprayangle too?
				sprayangle = 600,
				thickness = 0.91,
				tolerance = 6000,
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "legflak_gun",
				onlytargetcategory = "VTOL",
			},
		},
	},
}

