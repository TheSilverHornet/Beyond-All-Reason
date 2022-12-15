return {
	armgate = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 2048,
		buildcostenergy = 54000,
		buildcostmetal = 3000,
		buildpic = "ARMGATE.DDS",
		buildtime = 55000,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 1",
		collisionvolumescales = "57 37 57",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energystorage = 1000,
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3550,
		maxslope = 10,
		maxwaterdepth = 0,
		noautofire = true,
		objectname = "Units/ARMGATE.s3o",
		onoffable = false,
		script = "Units/ARMGATE.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 273,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armgate_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'util',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			shield_color_mult = 0.8,
			shield_power = 3250,
			shield_radius = 550,
			subfolder = "armbuildings/landutil",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -2.91625976558e-05 -0.414924621582",
				collisionvolumescales = "57.2399902344 32.5033416748 63.3298492432",
				collisionvolumetype = "Box",
				damage = 1900,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 2000,
				object = "Units/armgate_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 900,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 800,
				object = "Units/arm2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
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
				[1] = "drone1",
			},
			select = {
				[1] = "drone1",
			},
		},
		weapondefs = {
			repulsor = {
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				name = "PlasmaRepulsor",
				range = 550,
				soundhitwet = "sizzle",
				weapontype = "Shield",
				damage = {
					default = 100,
				},
				shield = {
					alpha = 0.17,
					armortype = "shields",
					energyuse = 0,
					force = 2.5,
					intercepttype = 1,
					power = 3250,
					powerregen = 52,
					powerregenenergy = 562.5,
					radius = 550,
					repulser = true,
					smart = true,
					startingpower = 1100,
					visiblerepulse = true,
					badcolor = {
						[1] = 1,
						[2] = 0.2,
						[3] = 0.2,
						[4] = 0.2,
					},
					goodcolor = {
						[1] = 0.2,
						[2] = 1,
						[3] = 0.2,
						[4] = 0.17,
					},
				},
			},
		},
		weapons = {
			[1] = {
				def = "REPULSOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
