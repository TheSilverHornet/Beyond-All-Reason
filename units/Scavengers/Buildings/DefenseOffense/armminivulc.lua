return {
	armminivulc = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 29096,
		energycost = 60000,
		metalcost = 2000,
		buildpic = "ARMMINIVULC.DDS",
		buildtime = 65000,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "32 64 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		health = 6700,
		maxslope = 13,
		maxwaterdepth = 0,
		objectname = "Units/scavbuildings/armminivulc.s3o",
		script = "Units/scavbuildings/armminivulc.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 700,
		--usepiececollisionvolumes = 1,
		yardmap = "ooo ooo ooo",
		customparams = {
			usebuildinggrounddecal = false,
			buildinggrounddecaltype = "decals/armminivulc_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "32 64 32",
				collisionvolumetype = "Box",
				damage = 3000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 6000,
				object = "Units/scavbuildings/armminivulc_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 3000,
				object = "Units/arm3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
			},
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
				[1] = "servlrg3",
			},
			select = {
				[1] = "servlrg3",
			},
		},
		weapondefs = {
			armminivulc_weapon = {
				accuracy = 700,
				areaofeffect = 44.8,
				avoidfeature = false,
				avoidfriendly = true,
				avoidground = true,
				cegtag = "arty-heavy",
				collidefriendly = false,
				craterboost = 0.02,
				cratermult = 0.02,
				edgeeffectiveness = 0.9,
				energypershot = 1000,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				gravityaffected = "true",
				impulseboost = 0.1,
				impulsefactor = 0.1,
				name = "Mini Rapid-fire long-range plasma cannon",
				noselfdamage = true,
				range = 1300,
				reloadtime = 0.4,
				rgbcolor = "1, 0.4, 0",
				soundhit = "xplomed3",
				soundhitwet = "splshbig",
				soundstart = "cannon2",
				turret = true,
				weapontimer = 14,
				weapontype = "Cannon",
				weaponvelocity = 660,
				damage = {
					default = 210,
					shields = 105,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMMINIVULC_WEAPON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
