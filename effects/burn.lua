-- missileburn
-- electricburn
-- burn
-- burnold
-- burnblack
-- burngreen

return {
  ["burnblackbig-anim"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 2,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.91 0.9 0.9 0.3  0.95 1 0.9 1  0.93 0.9 0.85 0.6   0.16 0.12 0.09 0.36   0 0 0 0.08   0 0 0 0.05   0 0 0 0.03   0 0 0 0.01]],
        directional        = false,
        emitrot            = 65,
        emitrotspread      = 65,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 1,
        particlelife       = 55,
        particlelifespread = 40,
        particlesize       = 8,
        particlesizespread = 11,
        particlespeed      = 0.45,
        particlespeedspread = 0.4,
        rotParams          = [[-5 r10, 0, -180 r360]],
        animParams         = [[8,8,100 r50]],
        pos                = [[-3 r6, -3 r6, -3 r6]],
        sizegrowth         = 1.1,
        sizemod            = 0.98,
        texture            = [[FireBall02-anim]],
      },
    },
  },
  ["burnflame-anim"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.8 0.78 0.6 0.9   1.0 0.97 0.7 1  0.8 0.7 0.55 0.88   0.22 0.13 0.1 0.66   0.023 0.022 0.022 0.25   0 0 0 0.01]],
        directional        = false,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 0.7, 0.3]],
        gravity            = [[0, 0.06 r0.05, 0]],
        numparticles       = [[0.49 r0.60]],
        particlelife       = 24,
        particlelifespread = 9,
        particlesize       = 18.4,
        particlesizespread = 18.8,
        particlespeed      = 0.3,
        particlespeedspread = 0.6,
        rotParams          = [[-24 r48, -60 r120, -180 r360]],
        animParams         = [[16,6,40 r80]],
        pos                = [[-2 r4, 32 r8, -2 r4]],
        sizegrowth         = [[1.7 r1.9]],
        sizemod            = 0.93,
        texture            = [[BARFlame02]],
        drawOrder          = 1,
        castShadow         = true,
      },
    },
  },
  ["burnflame-anim-x2"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.8 0.78 0.6 0.9   1.0 0.97 0.7 1  0.8 0.7 0.55 0.88   0.22 0.13 0.1 0.66   0.023 0.022 0.022 0.25   0 0 0 0.01]],
        directional        = false,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 0.7, 0.3]],
        gravity            = [[0, 0.06 r0.05, 0]],
        numparticles       = [[1 r2.5]],
        particlelife       = 24,
        particlelifespread = 9,
        particlesize       = 18.4,
        particlesizespread = 18.8,
        particlespeed      = 0.3,
        particlespeedspread = 0.6,
        rotParams          = [[-24 r48, -60 r120, -180 r360]],
        animParams         = [[16,6,40 r80]],
        pos                = [[-2 r4, 32 r8, -2 r4]],
        sizegrowth         = [[1.7 r1.9]],
        sizemod            = 0.93,
        texture            = [[BARFlame02]],
        drawOrder          = 1,
        castShadow         = true,
      },
    },
  },
  ["missileburn"] = {
    groundflash = {
      circlealpha        = 0.1,
      circlegrowth       = 3,
      flashalpha         = 1,
      flashsize          = 12,
      ttl                = 8,
      color = {
        [1]  = 0.80000001192093,
        [2]  = 0.10000000149012,
        [3]  = 0,
      },
    },
    searingflame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.5 0.4 0.04   0.9 0.4 0.1 0.01  0.5 0.1 0.1 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0.5, 0.5, 0.5]],
        gravity            = [[0, 2, 0]],
        numparticles       = 10,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 15,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.5,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
  },

  ["electricburn"] = {
    groundflash = {
      circlealpha        = 0.1,
      circlegrowth       = 3,
      flashalpha         = 1,
      flashsize          = 12,
      ttl                = 8,
      color = {
        [1]  = 0,
        [2]  = 0.10000000149012,
        [3]  = 0.80000001192093,
      },
    },
    searingflame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.4 0.5 0.9 0.04   0.1 0.4 0.9 0.01  0.1 0.1 0.5 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 2,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.5,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    smokeandfire = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.70,
        colormap           = [[0.1 0.1 0.1 0.01    0.0 0.3 0.5 0.05    0.1 0.1 0.5 1.0    0.1 0.1 0.1 1.0    0.5 0.5 0.5 1.0   0 0 0 0.01]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0.0, 1, 0.0]],
        gravity            = [[0.0, 2, 0.0]],
        numparticles       = 3,
        particlelife       = 10,
        particlelifespread = 4,
        particlesize       = 0,
        particlesizespread = 5,
        particlespeed      = 0,
        particlespeedspread = 2,
        pos                = [[0.0, 1, 0.0]],
        sizegrowth         = 3,
        sizemod            = 0.5,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
  },

  ["burn"] = {
    dirtg = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.9 0.9 0.0 0.01	1.0 0.5 0.0 0.01	0.5 0.4 0.3 1.0		0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 5,
        particlelife       = 10,
        particlelifespread = 10,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 1,
        particlespeedspread = 5,
        pos                = [[r-3 r3, 1.5, r-3 r3]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = false,
      },
    },
    dirtw1 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      underwater         = 1,
      water              = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.9 0.9 0.9 1.0	0.5 0.5 0.9 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 10,
        particlelife       = 15,
        particlelifespread = 10,
        particlesize       = 3,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 5,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = false,
      },
    },
    groundflash = {
      air                = true,
      circlealpha        = 0.0,
      circlegrowth       = 6,
      flashalpha         = 0.9,
      flashsize          = 25,
      ground             = true,
      ttl                = 3,
      underwater         = 1,
      water              = true,
      color = {
        [1]  = 1,
        [2]  = 0.5,
        [3]  = 0,
      },
    },
    shatter = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.9 0.0 0.04	1.0 0.5 0.0 0.01	1.0 0.5 0.0 0.00]],
        directional        = true,
        emitrot            = 35,
        emitrotspread      = 1,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 4,
        particlelife       = 7,
        particlelifespread = 0,
        particlesize       = 2,
        particlesizespread = 2,
        particlespeed      = 7,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[longshot]],
        useairlos          = false,
      },
    },
  },

  ["burnold"] = {
    groundflash = {
      circlealpha        = 0.1,
      circlegrowth       = 3,
      flashalpha         = 1,
      flashsize          = 12,
      ttl                = 8,
      color = {
        [1]  = 0.80000001192093,
        [2]  = 0.10000000149012,
        [3]  = 0,
      },
    },
    searingflame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.5 0.4 0.04   0.9 0.4 0.1 0.01  0.5 0.1 0.1 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 2, 0]],
        numparticles       = 10,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 15,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.5,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    smokeandfire = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.70,
        colormap           = [[0.1 0.1 0.1 0.01    0.5 0.3 0.0 0.05    0.5 0.1 0.1 1.0    0.1 0.1 0.1 1.0    0.5 0.5 0.5 1.0   0 0 0 0.01]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0.0, 1, 0.0]],
        gravity            = [[0.0, 2, 0.0]],
        numparticles       = 3,
        particlelife       = 10,
        particlelifespread = 4,
        particlesize       = 0,
        particlesizespread = 5,
        particlespeed      = 0,
        particlespeedspread = 2,
        pos                = [[0.0, 1, 0.0]],
        sizegrowth         = 3,
        sizemod            = 0.5,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
  },

  ["pilotlight"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.55,
        colormap           = [[1 0.98 0.85 0.4   0.85 0.58 0.22 0.1   0.3 0.18 0.02 0.01  0 0 0 0.01]],
        directional        = true,
        emitrot            = 5,
        emitrotspread      = 22,
        emitvector         = [[dir]],
        gravity            = [[0, 0.35, 0]],
        numparticles       = 1,
        particlelife       = 3.5,
        particlelifespread = 2,
        particlesize       = 1,
        particlesizespread = 0.8,
        particlespeed      = 1.4,
        particlespeedspread = 2.9,
        pos                = [[-0.5 r1, 1, -0.5 r1]],
        sizegrowth         = 0.9,
        sizemod            = 1.0,
        texture            = [[fire]],
        useairlos          = false,
      },
    },
  },

  ["burnblack"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.7 0.4 0.1 0.3   1 1 1 1   0.95 0.8 0.66 1   0.45 0.25 0.1 0.6   0.023 0.022 0.022 0.3   0.023 0.022 0.022 0.05   0 0 0 0.03   0 0 0 0.01]],
        directional        = true,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.11, 0]],
        numparticles       = 1,
        particlelife       = 18,
        particlelifespread = 32,
        particlesize       = 20,
        particlesizespread = 16,
        particlespeed      = 0.5,
        particlespeedspread = 0.7,
        pos                = [[-3 r6, -3 r6, -3 r6]],
        sizegrowth         = [[1.5 r2.1]],
        sizemod            = 0.97,
        rotParams          = [[-8 r16, 0, -180 r360]],
        animParams         = [[16,6,80 r55]],
        texture            = [[BARFlame02]],
        castShadow         = true,
      },
    },
  },
  ["burnthermite"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.7 0.4 0.1 0.3   1 1 1 1   0.95 0.8 0.66 1   0.45 0.25 0.1 0.6   0.023 0.022 0.022 0.3   0.023 0.022 0.022 0.05   0 0 0 0.03   0 0 0 0.01]],
        directional        = true,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.11, 0]],
        numparticles       = 1,
        particlelife       = 9,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 16,
        particlespeed      = 0.5,
        particlespeedspread = 0.7,
        pos                = [[-3 r6, -3 r6, -3 r6]],
        sizegrowth         = [[1.2 r2.99]],--0.3 d+5
        sizemod            = 0.97,
        rotParams          = [[-8 r16, 0, -180 r360]],
        animParams         = [[16,6,80 r55]],
        texture            = [[BARFlame02]],
        castShadow         = true,
      },
    },
  },

  ["burnblackxl"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        --colormap           = [[0.9 0.8 0.7 0.3   1 0.9 0.8 1   0.95 0.8 0.66 1   0.45 0.25 0.1 0.6   0.023 0.022 0.022 0.3   0.023 0.022 0.022 0.05   0 0 0 0.03   0 0 0 0.01]],
        colormap           = [[0.85 0.85 0.7 0.9   1.0 0.97 0.7 1  0.8 0.7 0.55 0.88   0.22 0.13 0.1 0.66   0.023 0.022 0.022 0.25   0 0 0 0.01]],
        directional        = true,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[-0.03 r0.05, 0.08 r0.06, -0.03 r0.05]],
        numparticles       = [[1 r1]],
        particlelife       = 24,
        particlelifespread = 36,
        particlesize       = 30,
        particlesizespread = 39,
        particlespeed      = 0.5,
        particlespeedspread = 0.7,
        pos                = [[-4 r8, -4 r8, -4 r8]],
        sizegrowth         = [[2.2 r2.99]],
        sizemod            = 0.98,
        rotParams          = [[-8 r16, 0, -180 r360]],
        animParams         = [[16,6,40 r60]],
        texture            = [[BARFlame02]],
      },
    },
  },

  ["burnblackbig"] = {
    flame1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.7 0.4 0.1 0.3   1 1 1 1   0.95 0.8 0.66 1   0.45 0.25 0.1 0.6   0.023 0.022 0.022 0.3   0.023 0.022 0.022 0.05   0 0 0 0.03   0 0 0 0.01]],
        directional        = true,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.11, 0]],
        numparticles       = 2,
        particlelife       = 24,
        particlelifespread = 34,
        particlesize       = 45,
        particlesizespread = 60,
        particlespeed      = 0.5,
        particlespeedspread = 0.7,
        pos                = [[-2 r4, 0 r8, -2 r4]],
        sizegrowth         = [[1.0 r2.0]],
        sizemod            = 0.97,
        rotParams          = [[-8 r16, 0, -180 r360]],
        animParams         = [[16,6,80 r55]],
        texture            = [[BARFlame02]],
      },
    },
    flame2 = {
          air                = true,
          class              = [[CSimpleParticleSystem]],
          count              = 1,
          ground             = true,
          properties = {
            airdrag            = 0.88,
            colormap           = [[0 0 0 0.01   0.95 0.95 1 0.4  0.65 0.65 0.68 0.2   0.1 0.1 0.1 0.18   0.08 0.07 0.06 0.12   0 0 0 0.01]],
            directional        = false,
            emitrot            = 40,
            emitrotspread      = 30,
            emitvector         = [[0.2, -0.4, 0.2]],
            gravity            = [[0, 0.05 r0.08, 0]],
            numparticles       = [[0.65 r0.75]],
            particlelife       = 34,
            particlelifespread = 38,
            particlesize       = 35,
            particlesizespread = 48,
            particlespeed      = 1,
            particlespeedspread = 1.3,
            animParams         = [[8,8,60 r50]],
            rotParams          = [[-2 r4, -2 r4, -180 r360]],
            pos                = [[-2 r4, 10 r15, -2 r4]],
            sizegrowth         = [[1.1 r0.5]],
            sizemod            = 0.98,
            texture            = [[FireBall02-anim]],
            drawOrder          = 0,
          },
        },
  },

  ["burnblackbiggest"] = {
    particles = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.7 0.3 1.0 0.8  0.2 0.1 0.80 0.2   0.10 0.03 0.20 0.11   0.01 0 0.02 0.08   0.01 0 0.020 0.05   0.01 0 0.02 0.01]],
        directional        = true,
        emitrot            = 65,
        emitrotspread      = 65,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.09, 0]],
        numparticles       = [[1 r1]],
        particlelife       = 60,
        particlelifespread = 66,
        particlesize       = 15,
        particlesizespread = 17,
        particlespeed      = 0.45,
        particlespeedspread = 0.4,
        pos                = [[-3 r6, -3 r6, -3 r6]],
        sizegrowth         = 0.7,
        sizemod            = 0.99,
        texture            = [[randdots]],
      },
    },
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0.01 0 0.02 0.01   0.7 0.3 1.0 0.8  0.2 0.1 0.80 0.2   0.10 0.03 0.20 0.11   0.01 0 0.02 0.08   0.01 0 0.020 0.05   0.01 0 0.02 0.01]],
        directional        = true,
        emitrot            = 65,
        emitrotspread      = 65,
        emitvector         = [[0.3, 1, 0.3]],
        gravity            = [[0, 0.00, 0]],
        numparticles       = 2,
        particlelife       = 60,
        particlelifespread = 66,
        particlesize       = 17,
        particlesizespread = 18,
        particlespeed      = 0.45,
        particlespeedspread = 0.4,
        pos                = [[-3 r6, -3 r6, -3 r6]],
        sizegrowth         = 0.7,
        sizemod            = 0.99,
        texture            = [[smoke_puff]],
      },
    },
  },

  ["burngreen"] = {
    groundflash = {
      circlealpha        = 0.1,
      circlegrowth       = 3,
      flashalpha         = 1,
      flashsize          = 12,
      ttl                = 8,
      color = {
        [1]  = 0.80000001192093,
        [2]  = 0.10000000149012,
        [3]  = 0,
      },
    },
    searingflame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.4 0.9 0.4 0.04   0.4 0.9 0.1 0.01  0.1 0.5 0.1 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0.5, 0.5, 0.5]],
        gravity            = [[0, 2, 0]],
        numparticles       = 10,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 15,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.5,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    smokeandfire = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.70,
        colormap           = [[0.1 0.1 0.1 0.01    0.0 0.5 0.0 0.05    0.1 0.5 0.1 1.0    0.1 0.1 0.1 1.0    0.5 0.5 0.5 1.0   0 0 0 0.01]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[1, 1, 1]],
        gravity            = [[0.0, 2, 0.0]],
        numparticles       = 3,
        particlelife       = 10,
        particlelifespread = 4,
        particlesize       = 0,
        particlesizespread = 5,
        particlespeed      = 0,
        particlespeedspread = 2,
        pos                = [[0.0, 1, 0.0]],
        sizegrowth         = 3,
        sizemod            = 0.5,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
  },
  ["flamestream"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0.65 0.45 0.99 0.3   0.91 0.90 0.95 0.98  0.92 0.88 0.80 0.95   0.75 0.45 0.1 0.3    0.01 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0.22, 0]],
        numparticles       = [[0.75 r0.80]],
        particlelife       = 7,
        particlelifespread = 4,
        particlesize       = -15,
        particlesizespread = -18,
        particlespeed      = 11,
        particlespeedspread = 10,
        rotParams          = [[-10 r20, -10 r20, -10 r20]],
        pos                = [[-2 r4, 10 r8, -2 r4]],
        sizegrowth         = 0.15,
        sizemod            = 0.95,
        texture            = [[flamestream]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.83,
        colormap           = [[0 0 0 0.01   0 0 0 0.01  1 0.88 0.77 0.015   0.8 0.55 0.3 0.01   0 0 0 0]],
        directional        = true,
        emitrot            = 8,
        emitrotspread      = 4,
        emitvector         = [[dir]],
        gravity            = [[-0.4 r0.8, 0.55 r0.4, -0.4 r0.8]],
        numparticles       = [[0.55 r0.62]],
        particlelife       = 10,
        particlelifespread = 8,
        particlesize       = -15,
        particlesizespread = -7,
        particlespeed      = 13,
        particlespeedspread = 18,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.02,
        sizemod            = 0.9,
        texture            = [[gunshotxl2]],
        useairlos          = false,
        drawOrder          = 2,
      },
    },
  },
  ["flamestreamxm"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.65 0.45 0.99 0.3   0.91 0.90 0.95 0.98  0.92 0.88 0.80 0.95   0.75 0.45 0.1 0.3    0.01 0 0 0.01]],
        directional        = true,
        emitrot            = 2.5,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = [[0.58 r0.65]],
        particlelife       = 9,
        particlelifespread = 6,
        particlesize       = -25,
        particlesizespread = -12,
        particlespeed      = 14,
        particlespeedspread = 8,
        rotParams          = [[-5 r10, 0, -5 r10]],
        pos                = [[-2 r4, 10 r8, -2 r4]],
        sizegrowth         = 0.11,
        sizemod            = 0.96,
        texture            = [[flamestream]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.01   0 0 0 0.01   0 0 0 0.01   0.8 0.55 0.3 0.01   1 0.88 0.77 0.020    0 0 0 0]],
        directional        = true,
        emitrot            = 4,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[-0.45 r0.9, 0.25 r0.3, -0.45 r0.9]],
        numparticles       = [[0.52 r0.55]],
        particlelife       = 9,
        particlelifespread = 15,
        particlesize       = -18,
        particlesizespread = -8,
        particlespeed      = 10,
        particlespeedspread = 15,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.02,
        sizemod            = 0.9,
        texture            = [[gunshotxl2]],
        useairlos          = false,
        drawOrder          = 2,
      },
    },
  },
  ["flamestreamthermite"] = {
   flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.65 0.45 0.99 0.3   0.91 0.90 0.95 0.98  0.92 0.88 0.80 0.95   0.75 0.45 0.1 0.3    0.01 0 0 0.01]],
        directional        = true,
        emitrot            = 2.5,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = [[0.58 r0.65]],
        particlelife       = 9,
        particlelifespread = 6,
        particlesize       = -15,
        particlesizespread = -6,
        particlespeed      = 14,
        particlespeedspread = 8,
        rotParams          = [[-5 r10, 0, -5 r10]],
        pos                = [[-2 r4, 10 r8, -2 r4]],
        sizegrowth         = 0.11,
        sizemod            = 0.96,
        texture            = [[flamestream]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.01   0 0 0 0.01   0 0 0 0.01   0.8 0.55 0.3 0.01   1 0.88 0.77 0.020    0 0 0 0]],
        directional        = true,
        emitrot            = 4,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[-0.45 r0.9, 0.25 r0.3, -0.45 r0.9]],
        numparticles       = [[0.52 r0.55]],
        particlelife       = 9,
        particlelifespread = 15,
        particlesize       = -18,
        particlesizespread = -8,
        particlespeed      = 10,
        particlespeedspread = 15,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.02,
        sizemod            = 0.9,
        texture            = [[gunshotxl2]],
        useairlos          = false,
        drawOrder          = 2,
      },
    },

 
  },
  ["flamestreamxl"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0.96 0.90 0.85 1   0.98 0.95 0.90 0.98  0.92 0.88 0.80 0.95   0.75 0.45 0.1 0.3    0.01 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = [[0.65 r0.75]],
        particlelife       = 14,
        particlelifespread = 8,
        particlesize       = -17,
        particlesizespread = -21,
        particlespeed      = 14,
        particlespeedspread = 11,
        rotParams          = [[-7 r14, 0, -10 r20]],
        pos                = [[-2 r4, 10 r8, -2 r4]],
        sizegrowth         = 0.08,
        sizemod            = 0.975,
        texture            = [[flamestream]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.01   0.8 0.55 0.3 0.01   1 0.88 0.77 0.020    0 0 0 0]],
        directional        = true,
        emitrot            = 10,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[-0.45 r0.9, 0.30 r0.45, -0.45 r0.9]],
        numparticles       = [[0.6 r0.8]],
        particlelife       = 9,
        particlelifespread = 15,
        particlesize       = -18,
        particlesizespread = -8,
        particlespeed      = 13,
        particlespeedspread = 19,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.02,
        sizemod            = 0.9,
        texture            = [[gunshotxl2]],
        useairlos          = false,
        drawOrder          = 2,
      },
    },
  },
  ["flamestreamxxl"] = {


    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.92,
        colormap           = [[0.75 0.45 0.99 0.3   0.96 0.90 0.95 095   0.98 0.95 0.90 0.35  0.92 0.88 0.80 0.15   0.75 0.45 0.1 0.08    0.01 0 0 0.01]],
        directional        = true,
        emitrot            = 2,
        emitrotspread      = 2,
        emitvector         = [[dir]],
        emitmul            = [[1.0, 2.0, 2.0]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = [[0.75 r0.86]],
        particlelife       = 9,
        particlelifespread = 12,
        particlesize       = -30,
        particlesizespread = -20,
        particlespeed      = 15,
        particlespeedspread = 5,
        rotParams          = [[-7 r14, -20 r40, -15 r30]],
        pos                = [[-3 r6, 0, -3 r6]],
        sizegrowth         = 1.01,
        sizemod            = 1.05,
        texture            = [[flamestream]],
        drawOrder          = 1,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.01   0 0 0 0.01   0.8 0.55 0.3 0.01   1 0.88 0.77 0.020    0 0 0 0]],
        directional        = true,
        emitrot            = 10,
        emitrotspread      = 5,
        emitvector         = [[dir]],
        gravity            = [[-0.45 r0.9, 0.30 r0.45, -0.45 r0.9]],
        numparticles       = [[0.5 r0.7]],
        particlelife       = 9,
        particlelifespread = 15,
        particlesize       = -18,
        particlesizespread = -8,
        particlespeed      = 15,
        particlespeedspread = 21,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.02,
        sizemod            = 0.9,
        texture            = [[gunshotxl2]],
        useairlos          = false,
        drawOrder          = 2,
      },
    },
  },
  ["burnflame"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.99,
        colormap           = [[0 0 0.7 0.01   0.95 0.95 1 0.4  0.65 0.65 0.68 0.2   0.1 0.1 0.1 0.18   0.08 0.07 0.06 0.12   0 0 0 0.01]],
        directional        = false,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, -1, 0.3]],
        gravity            = [[0, 0.24, 0]],
        numparticles       = [[0.52 r0.62]],
        particlelife       = 9,
        particlelifespread = 9,
        particlesize       = 3.3,
        particlesizespread = 10,
        particlespeed      = -1,
        particlespeedspread = 0.6,
        rotParams          = [[-240 r480, -100 r200, -180 r360]],
        pos                = [[-2 r4, 35 r8, -2 r4]],
        sizegrowth         = 1.5,
        sizemod            = 0.93,
        texture            = [[flame_alt2]],
        drawOrder          = 1,
      },
    },
  },
  ["burnflamexm"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.99,
        colormap           = [[0 0 0.7 0.01   0.95 0.95 1 0.4  0.65 0.65 0.68 0.2   0.1 0.1 0.1 0.18   0.08 0.07 0.06 0.12   0 0 0 0.01]],
        directional        = false,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, -1, 0.3]],
        gravity            = [[0, 0.24, 0]],
        numparticles       = [[0.5 r0.60]],
        particlelife       = 8,
        particlelifespread = 9,
        particlesize       = 3.8,
        particlesizespread = 13,
        particlespeed      = -1,
        particlespeedspread = 0.6,
        rotParams          = [[-240 r480, -100 r200, -180 r360]],
        pos                = [[-2 r4, 35 r8, -2 r4]],
        sizegrowth         = 1.5,
        sizemod            = 0.94,
        texture            = [[flame_alt2]],
        drawOrder          = 1,
      },
    },
  },
  ["burnflamexl"] = {
    extrafire = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.15,
        colormap           = [[0 0 0 0.01   0.01 0 0 0.05   0.22 0.12 0.33 0.3   0.3 0.3 0.28 0.6   0.28 0.28 0.25 0.5  0.27 0.26 0.22 0.35   0.25 0.20 0.15 0.12    0.01 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = [[0.2 r0.81]],
        particlelife       = 7,
        particlelifespread = 12,
        particlesize       = 9,
        particlesizespread = 14,
        particlespeed      = 0,
        particlespeedspread = 0,
        rotParams          = [[-90 r180, -50 r100, -180 r360]],
        pos                = [[-3 r6, 20, -3 r6]],
        sizegrowth         = 2,
        sizemod            = 0.99,
        texture            = [[fire]],
        drawOrder          = -1,
      },
    },
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.8 0.78 0.6 0.9   1.0 0.97 0.7 1  0.8 0.7 0.55 0.88   0.22 0.13 0.1 0.7   0.023 0.022 0.022 0.3   0 0 0 0.01]],
        --colormap           = [[0.8 0.78 0.6 0.9   1.0 0.97 0.7 1  0.8 0.7 0.55 0.88   0.22 0.13 0.1 0.66   0.023 0.022 0.022 0.25   0 0 0 0.01]],
        directional        = false,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3, 0.7, 0.3]],
        gravity            = [[-0.03 r0.05, 0.06 r0.08, -0.03 r0.05]],
        numparticles       = [[0.45 r0.80]],
        particlelife       = 25,
        particlelifespread = 8,
        particlesize       = 32,
        particlesizespread = 44,
        particlespeed      = 0.3,
        particlespeedspread = 0.6,
        rotParams          = [[-24 r48, -60 r120, -180 r360]],
        animParams         = [[16,6,50 r60]],
        pos                = [[-2 r4, 32 r12, -2 r4]],
        sizegrowth         = [[2.9 r4.0]],
        sizemod            = 0.92,
        texture            = [[BARFlame02]],
        drawOrder          = 1,
      },
    },
  },

}

