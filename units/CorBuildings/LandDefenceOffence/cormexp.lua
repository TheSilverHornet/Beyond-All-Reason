return {
	cormexp = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 2048,
		energycost = 12000,
		metalcost = 2400,
		buildingmask = 0,
		buildpic = "CORMEXP.DDS",
		buildtime = 32500,
		canattack = true,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "75 44 75",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		damagemodifier = 0.5,
		decoyfor = "cormoho",
		energyupkeep = 20,
		explodeas = "hugeBuildingexplosiongeneric",
		extractsmetal = 0.004,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 7800,
		maxslope = 30,
		maxwaterdepth = 20,
		metalstorage = 600,
		nochasecategory = "MOBILE",
		objectname = "Units/CORMEXP.s3o",
		onoffable = true,
		script = "Units/CORMEXP.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 676,
		yardmap = "h oooooooo osssssso osssssso ossoosso ossoosso osssssso osssssso oooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cormoho_aoplane.dds",
			buildinggrounddecalsizey = 7.6,
			buildinggrounddecalsizex = 7.6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'metal',
			cvbuildable = true,
			metal_extractor = 4,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "corbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 0.0263531005859 -0.0",
				collisionvolumescales = "85.8415527344 30.0151062012 74.3409423828",
				collisionvolumetype = "Box",
				damage = 1200,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				metal = 1442,
				object = "Units/cormexp_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 600,
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 577,
				object = "Units/cor5X5A.s3o",
				reclaimable = true,
				resurrectable = 0,
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
			activate = "mohorun2",
			canceldestruct = "cancel2",
			deactivate = "mohooff2",
			underattack = "warning1",
			working = "mohorun2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "twractv3",
			},
			select = {
				[1] = "mohoon2",
			},
		},
		weapondefs = {
			cormexp_rocket = {
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				burst = 5,
				burstrate = 0.3,
				cegtag = "missiletrailsmall",
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				firestarter = 70,
				flighttime = 1.3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cormissile.s3o",
				name = "Heavy g2g/g2a barrage missile launcher",
				noselfdamage = true,
				range = 650,
				reloadtime = 5.9,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splsmed",
				soundstart = "rocklit1",
				startvelocity = 450,
				texture1 = "null",
				turret = true,
				weaponacceleration = 150,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 750,
				damage = {
					default = 260,
					vtol = 45,
				},
			},
			corsumo_weapon = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.15,
				corethickness = 0.18,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 50,
				explosiongenerator = "custom:laserhit-medium-green",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7.7,
				name = "High energy g2g laser",
				noselfdamage = true,
				range = 650,
				reloadtime = 0.53333,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrhvy3",
				soundtrigger = 1,
				targetmoveerror = 0.25,
				thickness = 2.4,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					default = 215,
					vtol = 50,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORSUMO_WEAPON",
				onlytargetcategory = "NOTSUB",
				fastautoretargeting = true,
			},
			[2] = {
				def = "CORMEXP_ROCKET",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
