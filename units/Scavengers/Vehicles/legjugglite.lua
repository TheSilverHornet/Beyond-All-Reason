return {
	legjugglite = {
		activatewhenbuilt = true,
		maxacc = 0.04,
		maxdec = 0.08,
		energycost = 47750,
		metalcost = 2500,
		buildpic = "CORSALA.DDS",
		buildtime = 80000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5.5 0",
		collisionvolumescales = "31 34 31", --defined in collisionvolumes.lua
		collisionvolumetype = "BOX",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 9000,
		maxslope = 12,
		speed = 72.0,
		maxwaterdepth = 12,
		movementclass = "ATANK3",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/legjugglite.s3o",
		script = "Units/scavboss/legjugglite.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 600,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "corwidetracks",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.73,
		turnrate = 450,
		usePieceCollisionVolumes=true,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			paralyzemultiplier = 0.04125,
			cannon1name = "barrel1",
			cannon2name = "barrel2",
			driftratio = "0.2",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			flare2name = "flare2",
			kickback = "-2.4",
			model_author = "Hornet, via kitbash",
			normaltex = "unittextures/cor_normal.dds",
			restoretime = "3000",
			rockstrength = "4.5",
			sleevename = "sleeves",
			subfolder = "corvehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "45",
			wpn1turrety = "75",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.710494995117 -1.1132812503e-06 0.9375",
				collisionvolumescales = "31.2236328125 16.1107177734 37.8449707031",
				collisionvolumetype = "Box",
				damage = 2000,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 236,
				object = "Units/corseal_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 118,
				object = "Units/cor2X2E.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:DUST_CLOUD",
				[3] = "custom:pilotlight",
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
			corkorg_laser = {
				areaofeffect = 72,
				avoidfeature = false,
				beamtime = 0.6,
				camerashake = 0.1,
				corethickness = 0.35,
				craterareaofeffect = 72,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 350,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8.25,
				name = "'Rescued' Juggernaut Heatray",
				noselfdamage = true,
				proximitypriority = -1,
				range = 900,
				reloadtime = 4,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray2",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 6,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 1200,
					default = 5500,
					vtol = 2750,
				},
			},
		},
		weapons = {
			[1] = {
				def = "corkorg_laser",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
