return {
	chicken_turrets = {
		acceleration = 0.0115,
		activatewhenbuilt = true,
		autoheal = 1,
		bmcode = "0",
		brakerate = 0.0115,
		buildcostenergy = 3000,
		buildcostmetal = 120,
		builddistance = 500,
		builder = false,
		buildpic = "chickens/chickend1.DDS",
		buildtime = 2700,
		canattack = true,
		canreclaim = false,
		canrestore = false,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		collisionvolumeoffsets = "0 15 0",
		collisionvolumescales = "14 50 14",
		collisionvolumetype = "box",
		energystorage = 500,
		explodeas = "bug_death",
		extractsmetal = 0.001,
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 15,
		idletime = 300,
		levelground = false,
		mass = 700,
		maxdamage = 1670,
		maxslope = 255,
		maxvelocity = 0,
		maxwaterdepth = 0,
		movementclass = "NANO",
		noautofire = false,
		nochasecategory = "MOBILE",
		objectname = "Chickens/tube.s3o",
		reclaimspeed = 200,
		script = "Chickens/chickend1.cob",
		seismicsignature = 0,
		selfdestructas = "bug_death",
		side = "THUNDERBIRDS",
		sightdistance = 500,
		smoothanim = true,
		tedclass = "METAL",
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "chickend1",
		upright = false,
		waterline = 1,
		workertime = 200,
		customparams = {
			subfolder = "other/chickens",
			model_author = "LathanStanley, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
			treeshader = "yes",
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
				areaofeffect = 128,
				avoidfriendly = false,
				--burst = 2,
				--burstrate = 0.1,
				cegtag = "sporetrail-large",
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				cameraShake = 700,
				dance = 20,
				edgeeffectiveness = 0.35,
				explosiongenerator = "custom:genericshellexplosion-huge-bomb",
				firestarter = 0,
				--fixedLauncher = true,
				flighttime = 5,
				--groundbounce = 1,
				--heightmod = 0.5,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				--laserFlareSize = 25,
				metalpershot = 0,
				model = "SimpleFlareXL.s3o",
				name = "Deadly Defensive Spores",
				noselfdamage = true,
				range = 500,
				reloadtime = 10,
				--size = 8,
				smoketrail = true,
				smokePeriod = 10,
				smoketime = 45,
				smokesize = 10.5,
				smokecolor = 1.0,
				soundhit = "spore_explo",
				soundstart = "spore_xl",
				--soundhitvolume = 6,
				soundstartvolume = 9,
				startvelocity = 200,
				texture1 = "orangenovaexplo",
				texture2 = "sporetrail_xl",
				tolerance = 60000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 60000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 40,
				weapontype = "MissileLauncher",
				weaponvelocity = 475,
				wobble = 32000,
				damage = {
					chicken = 0.1,
					bombers = 400,
					default = 1000,
					fighters = 400,
					vtol = 400,
				},
				customparams = {
					expl_light_life_mult = 1.5,
					expl_light_radius_mult = 1.3,
					expl_light_mult = 1.25,
					light_radius_mult = "0.85",
					light_mult = 3,
					light_color = "1 0.55 0.05",
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
