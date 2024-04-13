return {
	raptor_land_assault_acid_t2_v1 = {
		maxacc = 0.414,
		airsightdistance = 650,
		maxdec = 0.46,
		energycost = 3520,
		metalcost = 152,
		builder = false,
		buildpic = "raptors/raptoracidassault.DDS",
		buildtime = 9000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE RAPTOR EMPABLE",
		collisionvolumeoffsets = "0 -5 0",
		collisionvolumescales = "27 48 60",
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		explodeas = "BIGBUG_DEATH_ACID",
		footprintx = 3,
		footprintz = 3,
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 1500,
		health = 11100,
		maxslope = 18,
		speed = 33.75,
		maxwaterdepth = 0,
		movementclass = "RAPTORBIGHOVER",
		noautofire = false,
		nochasecategory = "VTOL SPACE",
		objectname = "Raptors/raptoracidassault.s3o",
		script = "Raptors/raptora1.cob",
		seismicsignature = 0,
		selfdestructas = "BIGBUG_DEATH_ACID",
		side = "THUNDERBIRDS",
		sightdistance = 500,
		smoothanim = true,
		trackoffset = 7,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "RaptorTrack",
		trackwidth = 34,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 920,
		unitname = "raptore2",
		upright = false,
		waterline = 20,
		workertime = 0,
		customparams = {
			maxrange = "200",
			subfolder = "other/raptors",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
			paralyzemultiplier = 0,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
				[4] = "custom:blob_fire",
				[5] = "custom:blood_explode",
				[6] = "custom:blood_spray",
				[7] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			acidspit = {
				accuracy = 1024,
				areaofeffect = 150,
				collidefriendly = 0,
				collidefeature = 0,
				avoidfeature = 0,
				avoidfriendly = 0,
				burst = 2,
				burstrate = 0.5,
				cegtag = "blob_trail_green",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.63,
				explosiongenerator = "custom:acid-explosion-xl",
				impulseboost = 0,
				impulsefactor = 0.4,
				intensity = 0.7,
				interceptedbyshieldtype = 1,
				name = "GOOLAUNCHER",
				noselfdamage = true,
				range = 500,
				reloadtime = 3.6,
				rgbcolor = "0.8 0.99 0.11",
				nogap = false,
				size = 8,
				sizedecay = 0.03,
				alphaDecay = 0.14,
				stages = 9,
				soundhit = "bloodsplash3",
				soundstart = "alien_bombrel",
				sprayangle = 92,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.2,
				weaponvelocity = 520,
				damage = {
					default = 1, --damage done in unit_area_timed_damage.lua
					shields = 160,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL SPACE",
				def = "acidspit",
				maindir = "0 0 1",
				maxangledif = 125,
				onlytargetcategory = "NOTAIR",
			},
		},
	},
}
