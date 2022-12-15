return {
	scavengerdroppod = {
		acceleration = 0,
		activatewhenbuilt = true,
		autoheal = 1.8,
		bmcode = "0",
		blocking = false,
		brakerate = 0,
		buildcostenergy = 10,
		buildcostmetal = 10,
		--builder = true,
		buildpic = "scavengers/scavengerdroppod.DDS",
		buildtime = 10,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		canmove = false,
		capturable = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "0 0 0",
		collisionvolumetype = "box",
		explodeas = "",
		footprintx = 0,
		footprintz = 0,
		idleautoheal = 10,
		idletime = 90,
		levelground = false,
		mass = 10,
		maxdamage = 11,
		maxvelocity = 0,
		noautofire = false,
		objectname = "scavs/cube.s3o",
		script = "scavs/droppod.cob",
		seismicsignature = 4,
		selfdestructcountdown = 5,
		selfdestructas = "",
		smoothanim = true,
		tedclass = "ENERGY",
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 0,
		unitname = "scavengerdroppod",
		upright = false,
		waterline = 0,
		yardmap = "",
		customparams = {
			subfolder = "scavengers",
			normaltex = "unittextures/cor_normal.dds",
		},
		featuredefs = {},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:dirtpoof",
			},
		},
		weapondefs = {
			weapon = {
				alwaysVisible = true,
				areaofeffect = 0,
				avoidfriendly = 0,
				cegtag = "scaspawn-trail",
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:dirtpoof",
				firestarter = 70,
				flighttime = 100,
				impulsefactor = 0.1,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "scavs/scavbeacondroppodbyar.s3o",
				name = "Droppod",
				range = 29999,
				reloadtime = 5,
				rgbcolor = "0.85 0 1",
				smoketrail = true,
				smokePeriod = 9,
				smoketime = 25,
				smokesize = 10,
				smokecolor = 0.9,
				smokeTrailCastShadow = true,
				castshadow = true, --projectile
				soundstart = "voice/scavengers/scavspawn",
				soundhit = "voice/scavengers/scavdropspawn",
				startvelocity = 1,
				targetborder = 0.75,
				texture1 = "null",
				texture2 = "smoketrailaaflak",
				turret = 1,
				weaponacceleration = 1800,
				weapontimer = 2,
				weapontype = "MissileLauncher",
				weaponvelocity = 1500,
				wobble = 50,
				customparams = {
					expl_light_color = "0.85 0.10 1",
					expl_light_life_mult = 1.2,
					expl_light_mult = 1.0,
					expl_light_radius_mult = 1.0,
				},
				damage = {
					chicken = 0,
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
			},
		},
	},
}
