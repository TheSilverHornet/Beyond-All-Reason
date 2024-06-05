return {
	legperdition = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 8192,
		energycost = 15000,
		metalcost = 1250,
		buildpic = "legperdition.DDS",
		buildtime = 62000,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "80 70 80",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "nukeBuilding",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 4000,
		maxslope = 10,
		maxwaterdepth = 0,
		--noautofire = true,
		objectname = "Units/legperdition.s3o",
		script = "Units/legperdition.cob",
		seismicsignature = 0,
		selfdestructas = "nukeBuildingSelfd",
		sightdistance = 500,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/legperdition_aoplane.dds",
			buildinggrounddecalsizey = 7.5,
			buildinggrounddecalsizex = 7.5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Hornet, Tharsis",
			normaltex = "unittextures/leg_normal.dds",
			removewait = true,
			subfolder = "corbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "80 70 80",
				collisionvolumetype = "CylY",
				damage = 1920,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 445,
				object = "Units/legperdition_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 960,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 178,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
				[2] = "custom:dust_cloud_dirt",
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
				[1] = "servroc1",
			},
			select = {
				[1] = "servroc1",
			},
		},
		weapondefs = {
			napalmmissile = {
				areaofeffect = 425,
				avoidfeature = false,
				avoidfriendly = false,
				cegtag = "burnflamexl",
				collideenemy = false,
				collidefeature = false,
				collidefriendly = false,
				commandfire = true,
				cegtag = "burnflame-xs",
				--colormap = "0.75 0.73 0.67 0.024   0.37 0.4 0.30 0.021   0.22 0.21 0.14 0.018  0.024 0.014 0.009 0.03   0.0 0.0 0.0 0.008",
				craterareaofeffect = 360,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:burnfirecom-xl",
				gravityaffected = true,
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 2,

				flamegfxtime = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 500,
				model = "legbomb.s3o",
				name = "Long-Range Tactical Hellfire Napalm Shell",
				energypershot = 17000,
				noselfdamage = true,
				range = 2300,
				reloadtime = 2,

				soundhit = "xplolrg4",
				soundhitwet = "splslrg",
				soundstart = "cannhvy6",
				smoketrail = true,
				smokePeriod = 9,
				smoketime = 60,
				smokesize = 14.0,
				smokecolor = 0.7,
				stockpile = true,
				stockpiletime = 70,
				turret = true,
				weapontype = "Cannon",
				--weapontype = "MissileLauncher",
				weaponvelocity = 450,
				--mygravity = 1.2,


				--startvelocity = 240,
				texture1 = "null",
				texture2 = "railguntrail",
				tolerance = 9000,
				--turret = true,
				turnrate = 5000,
				--trajectoryheight = 1.35,
				weaponacceleration = 220,
				weapontimer = 5,
				weapontype = "Cannon",
				--weaponvelocity = 650,
				damage = {
					commanders = 700,
					default = 2000,--plus 150*15 within 150 area
				},
			},			
			
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTLAND",
				def = "napalmmissile",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
