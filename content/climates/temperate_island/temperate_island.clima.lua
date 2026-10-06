function data()
return { 
		nodeTree = "temperate_island_clima.tree",
		audio = {
			environment = {
				water = {
					sounds = { 
						{ file = "::/climates/sound/environment/nature/lake.wav" }
					},
					refDist = 10.0,
					height = 0.0,
					layer = 1,
					altitudeRange = { -4000.0, 0.0 },
				},
				forest = {
					sounds = { 
						{ tags = {"day", "clear"}, file = "::/climates/sound/environment/nature/forest.wav" },
						{ tags = {"night", "clear"}, file = "::/climates/sound/environment/nature/forest_night.wav" },
						{ tags = {"day", "rain"}, file = "::/climates/sound/environment/nature/forest_rain.wav" },
						{ tags = {"night", "rain"}, file = "::/climates/sound/environment/nature/forest_night_rain.wav" },
					},
					refDist = 10.0,
					height = 0.0,
					layer = 2,
				},
				lowland = {
					sounds = { 
						{ tags = {"day", "clear"}, file = "::/climates/sound/environment/nature/clearing.wav" },
						{ tags = {"night", "clear"}, file = "::/climates/sound/environment/nature/clearing_night.wav" },
						{ tags = {"day", "rain"}, file = "::/climates/sound/environment/nature/clearing_rain.wav" },
						{ tags = {"night", "rain"}, file = "::/climates/sound/environment/nature/clearing_night_rain.wav" },
					},
					refDist = 10.0,
					height = 0.0,
					ambient = true,
					layer = 4,
				},
				mountain = {
					sounds = { 
						{ file = "::/climates/sound/environment/nature/mountain.wav" }
					},
					refDist = 15.0,
					height = 0.0,
					layer = 3,
					ambient = true,
					altitudeRange = { 200.0, 4000.0 },
				},
				commercial = {
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/commercial_1.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/commercial_2.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/commercial_3.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/commercial_4.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
				},
				industrial = {
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/industrial_1.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/industrial_2.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/industrial_3.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/industrial_4.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
				},
				residential = {
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/residential_1.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/residential_2.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/residential_3.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
					{
						sounds = { 
							{ file = "::/climates/sound/environment/town/residential_4.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 2,
					},
				},
				crowd = {
					sounds = { 
						{ file =  "::/climates/sound/environment/Crowd_large.wav" }
					},
					refDist = 10.0,
					height = 0.0,
					layer = 2,
				},
				traffic = {
					sounds = { 
						{ tags = {"year1900"}, file = "::/climates/sound/environment/traffic_1850.wav" },
						{ tags = {"year1920"}, file = "::/climates/sound/environment/traffic_1920.wav" },
						{ tags = {"year1990"}, file = "::/climates/sound/environment/traffic_1990.wav" },
					},
					refDist = 50.0,
					height = 120.0,
					layer = 2,
				},
				atmosphere = {
					sounds = { 
						{ file = "::/climates/sound/environment/Wind.wav" }
					},
					refDist = 3500.0,
					height = 0.0,
					layer = -1,
				},
				rain = {
					sounds = { 
						{ file = "::/climates/sound/environment/rain.wav" }
					},
					refDist = 0.0,
					height = 0.0,
					layer = -1,
				},
				terrainMasks = {
					river_mask = {
						sounds = { 
							{ file = "::/climates/sound/environment/nature/river.wav" }
						},
						refDist = 10.0,
						height = 0.0,
						layer = 0,
						altitudeRange = { -4000.0, 0.0 },
					},
				}
			}
		},
		dataMaps = {
			biomes = {
				{					
					key = "biome0",
					displayName = _("Biome 0"),
					color = { 0, 0.63, 0.9 },
					id = 0,
				},
				{					
					key = "biome1",
					displayName = _("Biome 1"),
					color = { 0.21, 0.5, 0.13 },
					id = 1,
				},
				{					
					key = "biome2",
					displayName = _("Biome 2"),
					color = { 0.63, 1, 0.55 },
					id = 2,
				},
				{					
					key = "biome3",
					displayName = _("Biome 3"),
					color = { 0.5, 0.5, 0.28 },
					id = 3,
				},
				{					
					key = "biome4",
					displayName = _("Biome 4"),
					color = { 1, 1, 1 },
					id = 4,
				},
			},
			layers = {
				{					
					key = "mountains",
					displayName = _("Mountains"),
					color = { 0.9, 0.5, 0.6 },
					id = 1
				},
				{					
					key = "rivers",
					displayName = _("Rivers"),
					color = { 0, 0.63, 0.9 },
					id = 0
				},
			}
		},
		desc = { 
			description = _("Mixed Forest Vegetation"),
			name = _("Temperate Island"),
		},
		category = "temperate.clima",
		economy = "/economy/temperate.eco",
		environment = "/climates/temperate/temperate.env",
		defaultNames = "/names/europe/europe.names",
		groundTextures = { 
			waterGround = "/climates/shared/gtex/water_ground.gtex",
			waterShore = "/climates/shared/gtex/water_shore.gtex",
		},
		id = "temperate_island",
		mapColoring = { 
			ambientColor = { 0.80392158031463623046875, 0.8588235378265380859375, 1, },
			levels = {
				{ 
					color = { 0.3647058904170989990234375, 0.4392156898975372314453125, 0.2588235437870025634765625, },
					height = 0,
				},
				{ 
					color = { 0.2509804069995880126953125, 0.3058823645114898681640625, 0.19607843458652496337890625, },
					height = 100,
				},
				{ 
					color = { 0.949019610881805419921875, 0.9215686321258544921875, 0.862745106220245361328125, },
					height = 550,
				},
			},
			sunColor = { 1, 0.96078431606292724609375, 0.941176474094390869140625, },
			treeColor = { 0.094117648899555206298828125, 0.14117647707462310791015625, 0.062745101749897003173828125, },
			waterColor0 = { 0.3921568691730499267578125, 0.529411792755126953125, 0.619607865810394287109375, },
			waterColor1 = { 0.23529411852359771728515625, 0.3137255012989044189453125, 0.3568627536296844482421875, },
		},
		order = 10,
		previewSeed = "",
		skirt = { 
			colorTex = { 
				fileName = "/climates/shared/skirt_color.dds",
				scaleDownAllowed = false,
				type = "TWOD",
				wrapS = "REPEAT",
			},
			detailTex = { 
				fileName = "/climates/shared/skirt_detail.dds",
				scaleDownAllowed = false,
				type = "TWOD",
				wrapS = "REPEAT",
				wrapT = "REPEAT",
			},
			waterTex = { 
				fileName = "/climates/shared/water_skirt.dds",
				scaleDownAllowed = false,
				type = "TWOD",
			},
		},
		updateScript = { 
			fileName = "",
			params = { },
		},
	}
end
