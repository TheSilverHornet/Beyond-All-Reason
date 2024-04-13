return {
	armaser = {
		maxacc = 0.138,
		activatewhenbuilt = true,
		maxdec = 0.5175,
		energycost = 1400,
		metalcost = 78,
		buildpic = "ARMASER.DDS",
		buildtime = 4940,
		canattack = false,
		canmove = true,
		category = "BOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -7 2",
		collisionvolumescales = "26 48 24",
		collisionvolumetype = "box",
		corpse = "DEAD",
		energyupkeep = 80,
		explodeas = "smallexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 340,
		maxslope = 32,
		speed = 48.3,
		maxwaterdepth = 112,
		movementclass = "BOT3",
		nochasecategory = "MOBILE",
		objectname = "Units/ARMASER.s3o",
		onoffable = true,
		radardistancejam = 450,
		script = "Units/ARMASER.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 260,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.0626,
		turnrate = 1201.75,
		customparams = {
			unitgroup = 'util',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbots/t2",
			techlevel = 2,
			off_on_stun = "true",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.136978149414 4.50317382814e-05 -6.27960205078",
				collisionvolumescales = "28.490814209 34.7166900635 16.3992004395",
				collisionvolumetype = "Box",
				damage = 250,
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 1,
				height = 40,
				metal = 47,
				object = "Units/armaser_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "21.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 150,
				footprintx = 1,
				footprintz = 1,
				height = 4,
				metal = 19,
				object = "Units/arm1X1A.s3o",
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
				[1] = "radjam1",
			},
		},
	},
}
