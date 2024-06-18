return {
	armcomlvl8	= {
		maxacc = 0.18,
		activatewhenbuilt = true,
		autoheal = 5,
		maxdec = 1.125,
		energycost = 90000,
		metalcost = 9000,
		builddistance = 201,
		builder = true,
		buildpic = "ARMCOM.DDS",
		buildtime = 162000,
		cancapture = true,
		cancloak = true,
		canmanualfire = true,
		canmove = true,
		canselfrepair = true,
		capturable = false,
		capturespeed = 1800,
		category = "ALL WEAPON NOTSUB COMMANDER NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		cloakcost = 100,
		cloakcostmoving = 1000,
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "28 52 28",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		damagemodifier = 0.1,
		energymake = 850,
		energystorage = 500,
		explodeas = "commanderExplosion",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
    	holdsteady = true,
		icontype = "armcom",
		idleautoheal = 112,
		idletime = 450,
		sightemitheight = 40,
		mass = 99999,
		health = 11400,
		maxslope = 20,
		speed = 60,
		maxwaterdepth = 35,
		metalmake = 34,
		metalstorage = 500,
		mincloakdistance = 50,
		movementclass = "COMMANDERBOT",
		nochasecategory = "ALL",
		objectname = "Units/ARMCOM"..(Spring.GetModOptions().xmas and '-XMAS' or '')..".s3o",
		pushresistant = true,
		radardistance = 1200,
		radaremitheight = 40,
		reclaimable = false,
   		releaseheld  = true,
		script = "Units/ARMCOMHILVL.lua",
		seismicsignature = 0,
		selfdestructas = "commanderexplosion",
		selfdestructcountdown = 5,
		showplayername = true,
		sightdistance = 600,
		sonardistance = 600,
		terraformspeed = 1500,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 1148,
		upright = true,
		workertime = 1207,
		buildoptions = {
			"armmoho",
			"armadvsol",
			"armwin",
			"armfus",
			"armmmkr",
			"armageo",
			"armamex",
			"armtide",
			"armuwadves",
			"armuwadvms",
			"armuwmmm",
			"armlab",
			"armvp",
			"armap",
			"armeyes",
			"armarad",
			"armmine1",
			"armmine2",
			"armmine3",
			"armdrag",
			"armfort",
			"armjamt",
			"armclaw",
			"armbeamer",
			"armpb",
			"armanni",
			"armatl",
			"armflak",
			"armmercury",
			"armdl",
			"armamb",
			"armjuno",
			"armfflak",
			"armuwmme",
			"armuwageo",
			"armsy",
			"armnanotc",
			"armnanotcplat",
			"armfdrag",
			"armfrad",
			"armhp",
			"armfhp",
			"armasp",
			"armdecom",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "armmex",
			iscommander = true,
			isevocom = true,
			--energyconv_capacity = 70,
			--energyconv_efficiency = 1/70,
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "",
			evolution_announcement = "Armada commanders have upgraded to level 9",
			evolution_announcement_size = 18.5,
			evolution_health_transfer = "percentage",
			evolution_target = "armcomlvl9",
			evolution_condition = "timer",
			evolution_timer = 99999,
			combatradius = 0,
			stockpileLimit = 30,
			workertimeboost = 4,
			wtboostunittype = "MOBILE",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "35 12 54",
				collisionvolumetype = "CylY",
				damage = 36000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 1250,
				object = "Units/armcom_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35 12 54",
				collisionvolumetype = "cylY",
				damage = 5000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 500,
				object = "Units/arm2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstep-medium",
				[4] = "custom:genericshellexplosion-huge-lightning",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
			cloak = "kloak1",
			repair = "repair1",
			uncloak = "kloak1un",
			underattack = "warning2",
			unitcomplete = "armcomsel",
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
				[1] = "armcom1",
				[2] = "armcom2",
				[3] = "armcom3",
				[4] = "armcom4",
			},
			select = {
				[1] = "armcomsel",
			},
		},
		weapondefs = {
			longgun = {
				areaofeffect = 8,
				avoidfeature = false,
				beamttl = 1,
				burst = 10,
				burstrate = 0.03333,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 1,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:genericshellexplosion-medium-lightning2",
				firestarter = 50,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 24,
				name = "Lightening Cannon",
				noselfdamage = true,
				range = 600,
				reloadtime = 8,
				rgbcolor = "1.0, 0.7, 0.0",
				soundhit = "lghthvy2",
				soundhitwet = "sizzle",
				soundstart = "lghthvy1",
				soundtrigger = true,
				targetmoveerror = 0,
				thickness = 2,
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 800,
				customparams = {
					spark_ceg = "genericshellexplosion-splash-lightning",
					spark_forkdamage = "0.33",
					spark_maxunits = "8",
					spark_range = "100",
				},
				damage = {
					default = 1300,
				},
			},
			armcomsealaser = {
				areaofeffect = 70,
				avoidfeature = false,
				beamtime = 0.16,
				camerashake = 0,
				corethickness = 0.5,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-blue",
				firestarter = 90,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.6,
				laserflaresize = 5.5,
				name = "UWSupernovaBeam",
				noselfdamage = true,
				range = 500,
				reloadtime = 0.40,
				rgbcolor = "0.1 0.2 0.7",
				rgbcolor2 = "0.9 0.9 0.9",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "uwlasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 3.5,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					default = 1400,
					subs = 700,
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
				cratermult = 0.15,
				edgeeffectiveness = 0.15,
				energypershot = 500,
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
				soundhitwet = "sizzlexs",
				soundstart = "disigun1",
				soundhitvolume = 36,
				soundstartvolume = 96,
				soundtrigger = true,
				tolerance = 20000,
				turret = true,
				waterweapon = true,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 300,
				damage = {
					commanders = 0,
					default = 99999,
					scavboss = 1000,
					raptorqueen = 1000,
				},
			},
			repulsor1 = {
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				name = "Plasma repulsor",
				range = 50,
				soundhitwet = "sizzle",
				weapontype = "Shield",
				damage = {
					default = 100,
				},
				shield = {
					alpha = 0.25,
					force = 2.5,
					intercepttype = 479,
					power = 1000,
					powerregen = 20,
					powerregenenergy = 0,
					radius = 30,
					repulser = false,
					smart = true,
					startingpower = 1000,
					visible = false,
					visiblehitframes = 0,
					badcolor = {
						[1] = 1,
						[2] = 0.2,
						[3] = 0.2,
						[4] = 0.25,
					},
					goodcolor = {
						[1] = 0.2,
						[2] = 1,
						[3] = 0.2,
						[4] = 0.2,
					},
				},
			},
			shortgun = {
				areaofeffect = 8,
				avoidfeature = false,
				beamttl = 1,
				burst = 3,
				burstrate = 0.03333,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 1,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:genericshellexplosion-medium-lightning2",
				firestarter = 50,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 24,
				name = "Short-Range Lightening Discharge",
				noselfdamage = true,
				range = 250,
				reloadtime = 0.1,
				rgbcolor = "1.0, 0.7, 0.0",
				soundhit = "",
				soundhitwet = "",
				soundstart = "lghthvy2",
				soundtrigger = true,
				stockpile = true,
				stockpiletime = 0.33,
				targetmoveerror = 0,
				thickness = 1.5,
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 400,
				customparams = {
					spark_ceg = "genericshellexplosion-splash-lightning",
					spark_forkdamage = "0.33",
					spark_maxunits = "8",
					spark_range = "100",
					},
					damage = {
						default = 66,
					},
			},
			rollingbombdrones = {
				allowNonBlockingAim  = true,
				areaofeffect = 4,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				collidefriendly = false,
				collidefeature = false,
				collideground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-large-lightning-thor",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "DronePointer",
				noselfdamage = true,
				range = 450,
				reloadtime = 5,
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
					carried_unit = "babyarmvader",  --Name of the unit spawned by this carrier unit.
					engagementrange = 450,
					spawns_surface = "LAND",    -- "LAND" or "SEA". The SEA option has not been tested currently.
					spawnrate = 20, 			--Spawnrate roughly in seconds.
					maxunits = 4,				--Will spawn units until this amount has been reached.
					energycost = 3000,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					metalcost = 0,				--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					controlradius = 550,			--The spawned units should stay within this radius. Unfinished behavior may cause exceptions. Planned: radius = 0 to disable radius limit.
					decayrate = 1,
					carrierdeaththroe = "control",
					dockingarmor = 0,
					dockinghealrate = 16,
					docktohealthreshold = 0,
					holdfireradius = 300,		--defines the radius for drones to wander when "hold fire" firestate issued
					dockingHelperSpeed = 100,
					dockingpiecestart = 14,		--First model piece to be used for docking.
					dockingpieceinterval = 0,	--Number of pieces to skip when docking the next unit.
					dockingpieceend = 14,		--Last model piece used for docking. Will loop back to first when exceeded.
					dockingradius = 1,			--The range at which the units snap to the carrier unit when docking.
				}
			},
			empflashbang = {
				areaofeffect = 50,
				avoidfeature = false,
				beamdecay = .8,
				beamttl = 0.8,
				burnblow = true,
				collideenemy = false,
				collidefeature = false,
				collidefriendly = false,
				collideground = false,
				collideneutral = false,
				corethickness = 1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.001,
				explosiongenerator = "custom:genericshellexplosion-huge-lightning",
				falloffrate = 0,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8.8,
				name = "Long Range EMP laser",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 8,
				range = 3,
				reloadtime = 0.25,
				rgbcolor = "1 1 1",
				soundhitdry = "",
				soundhitwet = "",
				soundstart = "xplosml5",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 6,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 1,
				damage = {
					default = 20000,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ROLLINGBOMBDRONES",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "ARMCOMSEALASER",
				onlytargetcategory = "NOTAIR"
			},
			[3] = {
				def = "DISINTEGRATOR",
				onlytargetcategory = "NOTSUB",
			},
            [4] = {
				def = "LONGGUN",
				onlytargetcategory = "NOTSUB",
			},
			[5] = {
				def = "SHORTGUN",
				onlytargetcategory = "NOTSUB",
                fastautoretargeting = true,
			},
			[6] = {
				def = "EMPFLASHBANG",
				onlytargetcategory = "COMMANDER",
			},
		},
	},
}
