return {
	corape = {
		acceleration = 0.20,
		blocking = false,
		brakerate = 0.20,
		buildcostenergy = 6800,
		buildcostmetal = 370,
		buildpic = "CORAPE.DDS",
		buildtime = 14500,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = true,
		collisionvolumeoffsets = "0 5 3",
		collisionvolumescales = "48 18 48",
		collisionvolumetype = "CylY",
		cruisealt = 100,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1560,
		maxslope = 10,
		maxvelocity = 5.3,
		maxwaterdepth = 0,
		nochasecategory = "VTOL",
		objectname = "Units/CORAPE.s3o",
		script = "Units/CORAPE.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 550,
		turninplaceanglelimit = 360,
		turnrate = 600,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Flaka",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "coraircraft/t2",
			techlevel = 2,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg3",
				[2] = "airdeathceg4",
				[3] = "airdeathceg2",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
		weapondefs = {
			vtol_rocket = {
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				cegtag = "missiletrailsmall-simple",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				firestarter = 70,
				flighttime = 2,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cormissile2fast.s3o",
				name = "Heavy a2g shrapnel rockets",
				noselfdamage = true,
				range = 410,
				reloadtime = 1.1,
				smoketrail = true,
				smokePeriod = 7,
				smoketime = 14,
				smokesize = 9,
				smokecolor = 0.55,
				smokeTrailCastShadow = false,
				castshadow = true, --projectile
				soundhit = "rockhit",
				soundhitwet = "splsmed",
				soundstart = "rocklit3",
				soundtrigger = true,
				startvelocity = 300,
				texture1 = "null",
				texture2 = "smoketrailbar",
				tolerance = 8000,
				turnrate = 9000,
				turret = false,
				weaponacceleration = 200,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 700,
				damage = {
					bombers = 15,
					commanders = 61,
					default = 122,
					fighters = 15,
					subs = 61,
					vtol = 15,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "VTOL_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
