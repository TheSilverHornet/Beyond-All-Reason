return {
	armpwt4 = {
		maxacc = 0.414,
		maxdec = 0.69,
		energycost = 150000,
		metalcost = 8000,
		buildpic = "scavengers/armpwt4.DDS",
		buildtime = 150000,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -1 -5",
		collisionvolumescales = "55 80 55",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "bantha",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		mass = 1000000,
		health = 16700,
		maxslope = 17,
		speed = 84.0,
		maxwaterdepth = 25,
		movementclass = "EPICBOT",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/armpwt4.s3o",
		script = "Units/scavboss/armpwt4.cob",
		seismicsignature = 0,
		selfdestructas = "banthaSelfd",
		sightdistance = 500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2,
		turnrate = 1200.44,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Kaiser",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "other/scavengers",
			techlevel = 3,
			wpn1turretx = 300,
			wpn1turrety = 300,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.979118347168 -0.453806965332 -0.796119689941",
				collisionvolumescales = "60.1392364502 36.4953460693 58.797164917",
				collisionvolumetype = "Box",
				damage = 7500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 40,
				hitdensity = 100,
				metal = 4000,
				object = "Units/scavboss/armpwt4_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg2",
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
				[1] = "servtny2",
			},
			select = {
				[1] = "servtny2",
			},
		},
		weapondefs = {
			emg = {
				areaofeffect = 10,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:plasmahit-huge",
				firestarter = 100,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 1.4,
				name = "Rapid-fire huge g2g plasma guns",
				noselfdamage = true,
				proximitypriority = -1.5,
				range = 450,
				reloadtime = 0.16667,
				rgbcolor = "1 0.95 0.4",
				size = 5.1,
				soundhit = "flashemgxlhit2",
				soundhitwet = "splshbig",
				soundstart = "flashemgxl",
				sprayangle = 200,
				targetmoveerror = 0.5,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 800,
				damage = {
					commanders = 50,
					default = 200,
					shields = 87,
					vtol = 50,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "EMG",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
