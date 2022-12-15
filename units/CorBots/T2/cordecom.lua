return {
	cordecom = {
		acceleration = 0.18,
		activatewhenbuilt = true,
		autoheal = 5,
		brakerate = 1.125,
		buildcostenergy = 13000,
		buildcostmetal = 750,
		builddistance = 145,
		builder = true,
		buildpic = "CORDECOM.DDS",
		buildtime = 26941,
		cancapture = true,
		candgun = true,
		canmove = true,
		capturespeed = 900,
		category = "ALL WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		cloakcost = 30,
		cloakcostmoving = 180,
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "28 52 28",
		collisionvolumetype = "CylY",
		decoyfor = "corcom",
		energymake = 15,
		energystorage = 50,
		explodeas = "decoycommander",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
   		holdsteady = true,
		icontype = "corcommander",
		idleautoheal = 5,
		idletime = 1800,
		mass = 4900,
		maxdamage = 3350,
		maxslope = 20,
		maxvelocity = 1.25,
		maxwaterdepth = 35,
		mincloakdistance = 50,
		movementclass = "COMMANDERBOT",
		nochasecategory = "VTOL",
		objectname = "Units/CORCOM-XMAS.s3o",
		radardistance = 50,
		reclaimable = false,
    releaseheld  = true,
		script = "Units/CORCOM_lus.lua",
		seismicsignature = 0,
		selfdestructas = "decoycommanderSelfd",
		showplayername = true,
		sightdistance = 450,
		terraformspeed = 750,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 1133,
		upright = true,
		workertime = 300,
		buildoptions = {
			[1] = "cormine1",
			[2] = "cormine2",
			[3] = "cormine3",
			[4] = "corsolar",
			[5] = "corwin",
			[6] = "cormstor",
			[7] = "corestor",
			[8] = "cormex",
			[9] = "cormakr",
			[10] = "corrad",
			[11] = "corllt",
			[12] = "corrl",
			[13] = "cortide",
			[14] = "coruwms",
			[15] = "coruwes",
			--[16] = "coruwmex",
			[16] = "corfmkr",
		},
		customparams = {
			unitgroup = 'buildert2',
			decoyfor = "corcom",
			area_mex_def = "cormex",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstepcom",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			cloak = "kloak2",
			repair = "repair2",
			uncloak = "kloak2un",
			underattack = "warning1",
			unitcomplete = "kccorsel",
			working = "reclaim1",
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
				[1] = "kcormov",
			},
			select = {
				[1] = "kccorsel",
			},
		},
		weapondefs = {
			armcomlaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.1,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 70,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5.5,
				name = "J7Laser",
				noselfdamage = true,
				range = 300,
				reloadtime = 0.4,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.05,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					bombers = 180,
					default = 75,
					fighters = 110,
					subs = 5,
				},
			},
			armcomsealaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.3,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-small-blue",
				firestarter = 35,
				firesubmersed = true,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.3,
				laserflaresize = 5.5,
				name = "J7NSLaser",
				noselfdamage = true,
				range = 260,
				reloadtime = 1,
				rgbcolor = "0.2 0.2 0.6",
				rgbcolor2 = "0.2 0.2 0.2",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "uwlasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.05,
				thickness = 5,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					default = 62.5,
					subs = 18.75,
				},
			},
			disintegrator = {
				areaofeffect = 36,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				bouncerebound = 0,
				cegtag = "dgunprojectile",
				commandfire = true,
				craterboost = 0,
				cratermult = 0.6,
				edgeeffectiveness = 0.15,
				energypershot = 150,
				explosiongenerator = "custom:expldgun",
				firestarter = 100,
				firesubmersed = false,
				groundbounce = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Disintegrator",
				noexplode = true,
				noselfdamage = true,
				range = 250,
				reloadtime = 0.9,
				soundhit = "xplomas2",
				soundhitwet = "sizzle",
				soundstart = "disigun1",
				soundtrigger = true,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 300,
				customparams = {
					expl_light_heat_radius = 12,
					expl_light_opacity = 0.32,
					expl_light_radius = 340,
					expl_light_color = "1 0.83 0.53",
				},
				damage = {
					default = 40,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ARMCOMLASER",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "ARMCOMSEALASER",
			},
			[3] = {
				def = "DISINTEGRATOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
