return {
	chickenw1c = {
		acceleration = 2,
		airsightdistance = 600,
		amphibious = true,
		bankscale = "1",
		bmcode = "1",
		brakerate = 0.2,
		buildcostenergy = 2200,
		buildcostmetal = 72,
		builder = false,
		buildpic = "chickens/chickenw1c.DDS",
		buildtime = 1875,
		cancrash = false,
		canfly = true,
		canguard = true,
		canland = true,
		canmove = true,
		canpatrol = true,
		canstop = true,
		cansubmerge = false,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER CHICKEN",
		collide = false,
		collisionvolumeoffsets = "0 7 -6",
		collisionvolumescales = "48 12 22",
		collisionvolumetype = "box",
		cruisealt = 150,
		defaultmissiontype = "VTOL_standby",
		explodeas = "TALON_DEATH",
		floater = true,
		footprintx = 1,
		footprintz = 1,
		hidedamage = 1,
		idleautoheal = 2,
		idletime = 0,
		maneuverleashlength = "1280",
		mass = 90,
		maxacc = 1.0325,
		maxaileron = 0.01718,
		maxbank = 0.8,
		maxdamage = 295,
		maxelevator = 0.01343,
		maxpitch = 0.625,
		maxrudder = 0.00893,
		maxvelocity = 8,
		moverate1 = "32",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "Chickens/chicken_pidgeonc.s3o",
		script = "Chickens/chickenw1c.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		separation = "0.2",
		side = "THUNDERBIRDS",
		sightdistance = 360,
		smoothanim = true,
		speedtofront = 0.07,
		steeringmode = "1",
		tedclass = "VTOL",
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "chickenw1c",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.435,
		workertime = 0,
		customparams = {
			subfolder = "other/chickens",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_m_normals.png",
			treeshader = "yes",
			--treeshader = "no",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			weapon = {
				accuracy = 200,
				areaofeffect = 32,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 0,
				model = "Chickens/spike.s3o",
				name = "Spike",
				noselfdamage = true,
				range = 400,
				reloadtime = 3,
				soundstart = "talonattack",
				startvelocity = 200,
				submissile = 1,
				turret = true,
				waterweapon = true,
				weaponacceleration = 100,
				weapontimer = 1,
				weaponvelocity = 425,
				damage = {
					default = 190,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "WEAPON",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
			},
		},
	},
}
