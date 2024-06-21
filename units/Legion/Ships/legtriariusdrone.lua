return {
	legtriariusdrone = {
		maxacc = 0.02757,
		activatewhenbuilt = true,
		maxdec = 0.02757,
		buildangle = 16384,
		energycost = 8000,
		metalcost = 920,
		buildpic = "legtriariusdrone.DDS",
		buildtime = 11500,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5 1",
		collisionvolumescales = "34 34 82",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 4000,
		speed = 58,
		minwaterdepth = 12,
		movementclass = "BOAT4",
		movestate = 0,
		nochasecategory = "VTOL",
		objectname = "Units/legtriariusdrone.s3o",
		script = "Units/legtriariusdrone.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 500,
		sonardistance = 400,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 280,
		waterline = 0,
		customparams = {
			unitgroup = 'weaponsub',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0580749511719 -0.062504465332 -0.201034545898",
				collisionvolumescales = "33.2652587891 20.5109710693 79.4415893555",
				collisionvolumetype = "Box",
				damage = 3360,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 480,
				object = "Units/corroy_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 4032,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 240,
				object = "Units/cor5X5D.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:waterwake-small",
				[3] = "custom:bowsplash-small",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			heatroy = {
				areaofeffect = 72,
				avoidfeature = false,
				beamtime = 0.033,
				beamttl = 0.033,
				camerashake = 0.1,
				corethickness = 0.3,
				craterareaofeffect = 72,
				craterboost = 0,
				cratermult = 0,
				beamtime = 0.8,
				beamttl = 0.8,
				edgeeffectiveness = 0.15,
				energypershot = 17,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				firetolerance = 300,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 5,
				laserflaresize = 6,
				name = "Roybeam",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -1,
				range = 700,
				reloadtime = 2.2,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 1",
				soundhitdry = "flamhit1",
				soundhitwet = "sizzle",
				soundstart = "heatray3",
				soundstartvolume = 28,
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 3.5,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1200,
				damage = {
					commanders = 205,
					default = 410,
					vtol = 110,
				},
			},



			rangefinder = {
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Rangefinder",
				noselfdamage = true,
				range = 1000,
				reloadtime = 2.5,
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
				customparams = {
					carried_unit = "legdrone",     --Name of the unit spawned by this carrier unit.
					engagementrange = 1000,
					spawns_surface = "SEA",    -- "LAND" or "SEA". The SEA option has not been tested currently.
					spawnrate = 8, 				--Spawnrate roughly in seconds.
					maxunits = 2,				--Will spawn units until this amount has been reached.
					energycost = 500,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					metalcost = 15,				--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					controlradius = 1100,			--The spawned units should stay within this radius. Unfinished behavior may cause exceptions. Planned: radius = 0 to disable radius limit.
					decayrate = 4,
					carrierdeaththroe = "death",
					dockingarmor = 0.2,
					dockinghealrate = 16,
					docktohealthreshold = 66,
					enabledocking = true,		--If enabled, docking behavior is used. Currently docking while moving or stopping, and undocking while attacking. Unfinished behavior may cause exceptions.
					dockingHelperSpeed = 5,
					dockingpiecestart = 10,		--First model piece to be used for docking.
					dockingpieceinterval = 1,	--Number of pieces to skip when docking the next unit.
					dockingpieceend = 11,		--Last model piece used for docking. Will loop back to first when exceeded.
					dockingradius = 80,			--The range at which the units snap to the carrier unit when docking.
				}
			},


		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "heatroy",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
		
			[2] = {
				badtargetcategory = "VTOL",
				def = "rangefinder",
				onlytargetcategory = "SURFACE",
			},

		},
	},
}
