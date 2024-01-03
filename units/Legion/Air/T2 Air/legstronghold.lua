return {
	legstronghold = {
		maxacc = 0.12,
		blocking = false,
		maxdec = 0.6,
		energycost = 11000,
		metalcost = 550,
		buildpic = "legstronghold.DDS",
		buildtime = 20000,
		canfly = true,
		canmove = true,
		category = "ALL NOTSUB VTOL NOWEAPON NOTHOVER",
		collide = false,
		collisionvolumeoffsets = "1 -3 0",
		collisionvolumescales = "52 21 52",
		collisionvolumetype = "CylY",
		cruisealtitude = 135,
		explodeas = "hugeExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		health = 2600,
		maxslope = 10,
		speed = 175,
		maxwaterdepth = 0,
		objectname = "Units/legstronghold.s3o",
		releaseheld = true,
		script = "Units/legstronghold.cob",
		seismicsignature = 0,
		selfdestructas = "hugeExplosionGenericSelfd",
		sightdistance = 260,
		transportcapacity = 8,
		transportsize = 4,
		transportunloadmethod = 0,
		turninplaceanglelimit = 360,
		turnrate = 380,
		unloadspread = 0,
		upright = true,
		customparams = {
			model_author = "Mr Bob, Hornet",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.025,
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
			armmg_weapon = {
				accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				burst = 6,
				burstrate = 0.0675,
				burnblow = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.038,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				name = "Rapid-fire a2g machine guns",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				proximitypriority = 3,
				range = 575,
				reloadtime = 0.4,
				rgbcolor = "1 0.95 0.4",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 4.5,
				sprayangle = 968,
				thickness = 0.91,
				tolerance = 6000,
				turret = true,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 958,
				damage = {
					commanders = 5,
					default = 12,
					vtol = 12,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "armmg_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
