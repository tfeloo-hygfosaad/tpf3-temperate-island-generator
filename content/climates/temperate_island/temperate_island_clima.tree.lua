function data()
return { 
		comments = {
			{ 
				color = { 0.537255, 0.537255, 0.537255, 0.6, },
				name = "scree on the shore",
				position = { 0.0642188, 0.121484, },
				size = { 4953.58, 2300.13, },
				text = "",
			},
			{ 
				color = { 0.416992, 0.592157, 0.246151, 0.6, },
				name = "grass green",
				position = { 0.0330682, 0.0815341, },
				size = { 4968, 1687.25, },
				text = "",
			},
			{ 
				color = { 0.0120415, 0.341176, 0.306206, 0.6, },
				name = "riverbed",
				position = { 0.121394, 0.10875, },
				size = { 3071.65, 677.783, },
				text = "",
			},
			{ 
				color = { 0.188631, 0.337255, 0.173256, 0.6, },
				name = "forrest ground",
				position = { 0.024375, 0.155469, },
				size = { 3922.49, 1297.88, },
				text = "",
			},
			{ 
				color = { 0.658823, 0.561036, 0.222191, 0.6, },
				name = "grass_brown",
				position = { 0.0329687, 0.0123438, },
				size = { 4989.63, 1629.56, },
				text = "",
			},
			{ 
				color = { 0.304151, 0.547499, 0.0017308, 1, },
				name = "grass_light_green",
				position = { 0.160391, 0.165781, },
				size = { 432.627, 252.366, },
				text = "",
			},
			{ 
				color = { 0.286274, 0.286274, 0.286274, 0.6, },
				name = "rock mask",
				position = { 0.0333615, -0.03999, },
				size = { 5040.11, 2357.82, },
				text = "",
			},
			{ 
				color = { 0.0900577, 0.376471, 0.17091, 0.6, },
				name = "grass dark green",
				position = { 0.033125, 0.0575, },
				size = { 4982.42, 1687.25, },
				text = "",
			},
			{ 
				color = { 0.575926, 0.65098, 0.16083, 0.6, },
				name = "grass alpine mask",
				position = { 0.0327742, 0.0339881, },
				size = { 6020.73, 1687.25, },
				text = "",
			},
			{ 
				color = { 0.694671, 0.741176, 0.508651, 0.6, },
				name = "grass_gravel_mask",
				position = { 0.0325, -0.00925, },
				size = { 5032.9, 1622.35, },
				text = "",
			},
			{ 
				color = { 0.94902, 0.94902, 0.94902, 0.6, },
				name = "snow mask",
				position = { 0.0349369, -0.115694, },
				size = { 5270.84, 3021.18, },
				text = "",
			},
			{ 
				color = { 0.431373, 0.431373, 0.431373, 0.6, },
				name = "scree mask",
				position = { 0.0322468, -0.0740273, },
				size = { 5040.11, 1896.35, },
				text = "",
			},
		},
		nodes = {
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "input_data",
				name = "data_gen",
				params = { },
				position = { -0.0753571, 0.0378571, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "height_map_input",
				name = "hm_in",
				params = { },
				position = { -0.0770833, 0.109167, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
					threshold = { 
						key = "out",
						nodeName = "distance_map0_threshold",
					},
				},
				layerType = "distance_map",
				name = "distance_map0",
				params = { 
					threshold = 0,
				},
				position = { 0.0710417, 0.0835417, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_number",
				name = "distance_map0_threshold",
				params = { 
					value = 0,
				},
				position = { 0.0654167, 0.085625, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
				},
				layerType = "ambient_map",
				name = "ambient_map0",
				params = { 
					distance = 14,
				},
				position = { 0.05864, -0.0645987, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "distance_map0",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map0",
				params = { 
					clamp = true,
					from_x = 50,
					from_y = 150,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.0797917, 0.0835417, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
				},
				layerType = "gradient_map",
				name = "gradient_map0",
				params = { 
					direction = "X^2 + Y^2",
				},
				position = { 0.00489583, -0.0171875, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "gradient_map0",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map5",
				params = { 
					clamp = true,
					from_x = 0.7,
					from_y = 0.75,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.0735417, -0.0172917, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					from = { 
						key = "out",
						nodeName = "map_clamp_map8_from",
					},
					in1 = { 
						key = "out",
						nodeName = "distance_map0",
					},
					to = { 
						key = "out",
						nodeName = "map_clamp_map8_to",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map8",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 0,
					to_x = 0,
					to_y = 0,
				},
				position = { 0.09475, 0.122, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map8_from",
				params = { 
					x = 0,
					y = 80,
				},
				position = { 0.087875, 0.124125, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map8_to",
				params = { 
					x = 2.3,
					y = 0,
				},
				position = { 0.087875, 0.126625, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					baseFreq = { 
						key = "out",
						nodeName = "ridged_noise_map_0_baseFreq",
					},
					gain = { 
						key = "out",
						nodeName = "ridged_noise_map_0_gain",
					},
					lacunarity = { 
						key = "out",
						nodeName = "ridged_noise_map_0_lacunarity",
					},
					numOctaves = { 
						key = "out",
						nodeName = "ridged_noise_map_0_numOctaves",
					},
					seed = { 
						key = "seed",
						nodeName = "data_gen",
					},
				},
				layerType = "ridged_noise_map",
				name = "ridged_noise_map_0",
				params = { 
					baseFreq = 0,
					gain = 0,
					lacunarity = 0,
					numOctaves = 0,
				},
				position = { 0.0775, 0.1375, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_number",
				name = "ridged_noise_map_0_baseFreq",
				params = { 
					value = 0.001,
				},
				position = { 0.066375, 0.14075, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_number",
				name = "ridged_noise_map_0_gain",
				params = { 
					value = 0.9,
				},
				position = { 0.066625, 0.1425, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_number",
				name = "ridged_noise_map_0_lacunarity",
				params = { 
					value = 10.5,
				},
				position = { 0.066375, 0.144125, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_number",
				name = "ridged_noise_map_0_numOctaves",
				params = { 
					value = 3,
				},
				position = { 0.066875, 0.14625, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					from = { 
						key = "out",
						nodeName = "map_clamp_map9_from",
					},
					in1 = { 
						key = "out",
						nodeName = "ridged_noise_map_0",
					},
					to = { 
						key = "out",
						nodeName = "map_clamp_map9_to",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map9",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 0,
					to_x = 0,
					to_y = 0,
				},
				position = { 0.0975, 0.1375, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map9_from",
				params = { 
					x = 0.2,
					y = 0.8,
				},
				position = { 0.088125, 0.14075, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map9_to",
				params = { 
					x = -2.3,
					y = 0,
				},
				position = { 0.08825, 0.143125, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "map_clamp_map8",
					},
					in2 = { 
						key = "out",
						nodeName = "map_clamp_map9",
					},
				},
				layerType = "add_map",
				name = "add_map1",
				params = { },
				position = { 0.10625, 0.137, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					from = { 
						key = "out",
						nodeName = "map_clamp_map10_from",
					},
					in1 = { 
						key = "out",
						nodeName = "add_map1",
					},
					to = { 
						key = "out",
						nodeName = "map_clamp_map10_to",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map10",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 0,
					to_x = 0,
					to_y = 0,
				},
				position = { 0.12, 0.136875, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map10_from",
				params = { 
					x = 0,
					y = 1,
				},
				position = { 0.111375, 0.143125, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_point",
				name = "map_clamp_map10_to",
				params = { 
					x = 0,
					y = 0.4,
				},
				position = { 0.111375, 0.145, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map11",
				params = { 
					clamp = true,
					from_x = -15,
					from_y = -5,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.141042, 0.109375, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "material_background_index_output",
				name = "layer_background",
				params = { 
					materialType = "::/terrain/materials/grass_light_green/grass_light_green.tmat",
				},
				position = { 0.160859, 0.166797, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Multiply map #6",
					},
				},
				layerType = "material_index_output",
				name = "grass_green",
				params = { 
					dither = true,
					key = "grass_green",
					materialType = "::/terrain/materials/grass_green/grass_green.tmat",
					order = 0,
				},
				position = { 0.161875, 0.0895833, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Multiply map  #0",
					},
				},
				layerType = "material_index_output",
				name = "grass_brown",
				params = { 
					dither = true,
					key = "grass brown",
					materialType = "::/terrain/materials/grass_brown/grass_brown.tmat",
					order = 20,
				},
				position = { 0.158312, 0.021375, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "input",
						nodeName = "biome_4_mask Copy",
					},
				},
				layerType = "material_index_output",
				name = "forest_ground",
				params = { 
					dither = true,
					key = "layer_2",
					materialType = "::/terrain/materials/forest_ground/forest_ground.tmat",
					order = 400,
				},
				position = { 0.160781, 0.162656, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Compare map #85",
					},
				},
				layerType = "material_index_output",
				name = "rock",
				params = { 
					dither = true,
					key = "layer_3",
					materialType = "::/terrain/materials/rock/rock.tmat",
					order = 2000,
				},
				position = { 0.157188, -0.0170833, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "Compare map  #0",
					},
				},
				layerType = "material_index_output",
				name = "scree_top",
				params = { 
					dither = true,
					key = "scree",
					materialType = "::/terrain/materials/scree/scree.tmat",
					order = 10000,
				},
				position = { 0.14858, -0.0657413, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "add_map1",
					},
				},
				layerType = "material_index_output",
				name = "gravel",
				params = { 
					dither = true,
					key = "layer_5",
					materialType = "::/terrain/materials/gravel_01/gravel_01.tmat",
					order = 500,
				},
				position = { 0.161172, 0.125938, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "map_clamp_map10",
					},
				},
				layerType = "material_index_output",
				name = "scree",
				params = { 
					dither = true,
					key = "layer_6",
					materialType = "::/terrain/materials/scree/scree.tmat",
					order = 1000,
				},
				position = { 0.160781, 0.137578, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "map_clamp_map11",
					},
				},
				layerType = "material_index_output",
				name = "river bed",
				params = { 
					dither = true,
					key = "layer_7",
					materialType = "::/terrain/materials/river_bed/river_bed.tmat",
					order = 80000,
				},
				position = { 0.160625, 0.109375, },
			},
			{ 
				color = { 0.00987313, 0.402947, 0.839216, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_0_mask",
				params = { 
					key = "biome0",
				},
				position = { -0.0752656, 0.0332969, },
			},
			{ 
				color = { 0.0672795, 0.717647, 0, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_1_mask",
				params = { 
					key = "biome1",
				},
				position = { -0.0752969, 0.0309687, },
			},
			{ 
				color = { 0, 0.439216, 0.0928759, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_2_mask",
				params = { 
					key = "biome2",
				},
				position = { -0.075332, 0.0287695, },
			},
			{ 
				color = { 0.643137, 0.637993, 0.194202, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_3mask",
				params = { 
					key = "biome3",
				},
				position = { -0.0754219, 0.0264531, },
			},
			{ 
				color = { 0.652549, 0.700131, 0.752941, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_4_mask",
				params = { 
					key = "biome4",
				},
				position = { -0.0753, 0.019575, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Multiply map #96",
					},
				},
				layerType = "material_index_output",
				name = "grass alpine",
				params = { 
					dither = true,
					key = "grass_alpine",
					materialType = "::/terrain/materials/grass_alpine/grass_alpine.tmat",
					order = 10,
				},
				position = { 0.159474, 0.0415132, },
			},
			{ 
				color = { 0.423529, 0.348971, 0, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_4_mask Copy",
				params = { 
					key = "forest_mask",
				},
				position = { 0.0510937, 0.164219, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Multiply map  #1",
					},
				},
				layerType = "material_index_output",
				name = "grass_gravel",
				params = { 
					dither = true,
					key = "grass_gravel",
					materialType = "::/terrain/materials/grass_gravel/grass_gravel.tmat",
					order = 300,
				},
				position = { 0.15775, 0.0025, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "map_clamp_map0",
					},
					in2 = { 
						key = "out",
						nodeName = "New Compare map #10",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map #6",
				params = { },
				position = { 0.08875, 0.089375, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "New Map data #83",
					},
				},
				layerType = "fractal_noise_map",
				name = "New Fractal noise map #7",
				params = { 
					frequency = 0.01,
					gain = 0.5,
					lacunarity = 3,
					numOctaves = 3,
				},
				position = { 0.04125, 0.0964583, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { },
				layerType = "input_data",
				name = "New Map data #83",
				params = { },
				position = { 0.025, 0.0942857, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Fractal noise map #7",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map #85",
				params = { 
					clamp = true,
					from_x = -1,
					from_y = 1,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.050625, 0.0966667, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "New Map data #83",
					},
				},
				layerType = "fractal_noise_map",
				name = "New Fractal noise map  #0",
				params = { 
					frequency = 0.002,
					gain = 0.5,
					lacunarity = 2,
					numOctaves = 2,
				},
				position = { 0.0408333, 0.09, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Fractal noise map  #0",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map  #0",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 0.5,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.0497917, 0.0897917, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Remap map  #0",
					},
					in2 = { 
						key = "out",
						nodeName = "New Remap map #85",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map #11",
				params = { },
				position = { 0.0589583, 0.09, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_2_mask",
					},
					in2 = { 
						key = "out",
						nodeName = "New Multiply map #11",
					},
				},
				layerType = "compare_map",
				name = "New Compare map #10",
				params = { 
					op = "MAX",
				},
				position = { 0.0720833, 0.0891667, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { },
				layerType = "input_data",
				name = "New Map data  #0",
				params = { },
				position = { 0.0251923, 0.0646635, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "New Map data  #0",
					},
				},
				layerType = "fractal_noise_map",
				name = "New Fractal noise map  #1",
				params = { 
					frequency = 0.01,
					gain = 0.5,
					lacunarity = 3,
					numOctaves = 3,
				},
				position = { 0.0397342, 0.0650599, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Fractal noise map  #1",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map  #1",
				params = { 
					clamp = true,
					from_x = -1,
					from_y = 1,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.0483967, 0.0654891, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_2_mask",
					},
					in2 = { 
						key = "out",
						nodeName = "New Remap map  #1",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map #84",
				params = { },
				position = { 0.0592944, 0.0646169, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "New Multiply map #84",
					},
				},
				layerType = "material_index_output",
				name = "grass dark green",
				params = { 
					dither = true,
					key = "grass_dark_green",
					materialType = "::/terrain/materials/grass_dark_green/grass_dark_green.tmat",
					order = 0,
				},
				position = { 0.160094, 0.0669687, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_4_witout mountains",
					},
					in2 = { 
						key = "input",
						nodeName = "biome_3mask",
					},
				},
				layerType = "add_map",
				name = "New Add maps #88",
				params = { },
				position = { 0.0766204, 0.0386574, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Add maps #88",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map #89",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 1,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.0859259, 0.0387037, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "New Map data   #0",
					},
				},
				layerType = "fractal_noise_map",
				name = "New Fractal noise map   #0",
				params = { 
					frequency = 0.01,
					gain = 0.5,
					lacunarity = 3,
					numOctaves = 3,
				},
				position = { 0.0459175, 0.0250134, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Fractal noise map   #0",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map   #0",
				params = { 
					clamp = true,
					from_x = -0.2,
					from_y = 1.5,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.052141, 0.0248943, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { },
				layerType = "input_data",
				name = "New Map data   #0",
				params = { },
				position = { 0.0263194, 0.0259028, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_4_mask",
					},
					in2 = { 
						key = "out",
						nodeName = "New Remap map   #0",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map  #0",
				params = { },
				position = { 0.0657634, 0.0182387, },
			},
			{ 
				color = { 0.41413, 0.47451, 0.308897, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_4_witout mountains",
				params = { 
					key = "biome4_no_mountains",
				},
				position = { -0.0755093, 0.0240278, },
			},
			{ 
				color = { 0.787266, 0.815606, 0.847059, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "biome_4_mask #0",
				params = { 
					key = "biome4_mountains",
				},
				position = { -0.0752321, 0.0153929, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_4_mask #0",
					},
					in2 = { 
						key = "input",
						nodeName = "biome_4_mask",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map  #1",
				params = { },
				position = { 0.0780357, 0.00348214, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_pointcloud",
				name = "New Constant point cloud #8",
				params = { 
					values = {
						{ -500, 0, },
						{ 330, 0, },
						{ 350, 1, },
						{ 1000, 1, },
					},
				},
				position = { 0.0665376, -0.026755, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
					steps = { 
						key = "out",
						nodeName = "New Constant point cloud #8",
					},
				},
				layerType = "pwlerp_map",
				name = "New Piecewise linear map #9",
				params = { },
				position = { 0.0725781, -0.0284896, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Piecewise linear map #9",
					},
					in2 = { 
						key = "out",
						nodeName = "map_clamp_map5",
					},
				},
				layerType = "compare_map",
				name = "New Compare map #85",
				params = { 
					op = "MAX",
				},
				position = { 0.0834167, -0.0177083, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
					steps = { 
						key = "out",
						nodeName = "Constant point cloud  #0",
					},
				},
				layerType = "pwlerp_map",
				name = "Piecewise linear map  #0",
				params = { },
				position = { 0.0575298, -0.0884524, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_pointcloud",
				name = "Constant point cloud  #0",
				params = { 
					values = {
						{ -500, 0, },
						{ 380, 0, },
						{ 430, 1, },
						{ 1000, 1, },
					},
				},
				position = { 0.0522984, -0.0836694, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "Compare map #151",
					},
				},
				layerType = "material_index_output",
				name = "snow",
				params = { 
					dither = true,
					key = "snow",
					materialType = "::/terrain/materials/snow_01/snow_01.tmat",
					order = 12000,
				},
				position = { 0.14877, -0.109211, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "gradient_map0",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map5 #0",
				params = { 
					clamp = true,
					from_x = 0.8,
					from_y = 0.9,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.0580114, -0.0934943, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "map_clamp_map5 #0",
					},
					in2 = { 
						key = "out",
						nodeName = "Piecewise linear map  #0",
					},
				},
				layerType = "mul_map",
				name = "Multiply map #92",
				params = { },
				position = { 0.0676989, -0.0936932, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "ambient_map0",
					},
				},
				layerType = "map_clamp_map",
				name = "map_clamp_map7 #0",
				params = { 
					clamp = true,
					from_x = 145,
					from_y = 150,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.0640729, -0.0645987, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Fractal noise map   #1",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map   #1",
				params = { 
					clamp = true,
					from_x = -1.2,
					from_y = 0.5,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.0838184, 0.0483429, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "New Map data  #0",
					},
				},
				layerType = "fractal_noise_map",
				name = "New Fractal noise map   #1",
				params = { 
					frequency = 0.005,
					gain = 0.5,
					lacunarity = 3,
					numOctaves = 3,
				},
				position = { 0.0767583, 0.0482436, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Remap map #89",
					},
					in2 = { 
						key = "out",
						nodeName = "New Compare map #97",
					},
				},
				layerType = "mul_map",
				name = "New Multiply map #96",
				params = { },
				position = { 0.0998308, 0.0421541, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "input",
						nodeName = "biome_3mask",
					},
				},
				layerType = "map_clamp_map",
				name = "New Remap map    #0",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 1,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.085294, 0.0422874, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "New Remap map    #0",
					},
					in2 = { 
						key = "out",
						nodeName = "New Remap map   #1",
					},
				},
				layerType = "compare_map",
				name = "New Compare map #97",
				params = { 
					op = "MAX",
				},
				position = { 0.0912602, 0.0423012, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					seed = { 
						key = "seed",
						nodeName = "Map data   #1",
					},
				},
				layerType = "fractal_noise_map",
				name = "Fractal noise map    #0",
				params = { 
					frequency = 0.01,
					gain = -2,
					lacunarity = 3,
					numOctaves = 3,
				},
				position = { 0.0644967, -0.0599943, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "Fractal noise map    #0",
					},
				},
				layerType = "map_clamp_map",
				name = "Remap map    #1",
				params = { 
					clamp = true,
					from_x = -2.1,
					from_y = 0.2,
					to_x = 0,
					to_y = 1,
				},
				position = { 0.075423, -0.060109, },
			},
			{ 
				color = { 0, 0.473958, 1, 0.6, },
				inputs = { },
				layerType = "input_data",
				name = "Map data   #1",
				params = { },
				position = { 0.0591913, -0.0597075, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
					steps = { 
						key = "out",
						nodeName = "rock height profile     #0",
					},
				},
				layerType = "pwlerp_map",
				name = "snow curvature height   #0",
				params = { },
				position = { 0.045347, -0.109306, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "snow curvature height   #0",
					},
					in2 = { 
						key = "out",
						nodeName = "flat areas with ssnow",
					},
				},
				layerType = "mul_map",
				name = "Multiply map #154",
				params = { },
				position = { 0.0699527, -0.108438, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "Curvature Map #101",
					},
					steps = { 
						key = "out",
						nodeName = "steep steps for scree   #0",
					},
				},
				layerType = "pwlerp_map",
				name = "flat areas with ssnow",
				params = { },
				position = { 0.0644322, -0.103076, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_pointcloud",
				name = "steep steps for scree   #0",
				params = { 
					values = {
						{ -20, 0, },
						{ 0.32, 0, },
						{ 0.33, 1, },
						{ 9, 1, },
						{ 10, 0, },
						{ 1000, 0, },
					},
				},
				position = { 0.057571, -0.101577, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "Multiply map #154",
					},
					in2 = { 
						key = "out",
						nodeName = "Multiply map #92",
					},
				},
				layerType = "compare_map",
				name = "Compare map #151",
				params = { 
					op = "MAX",
				},
				position = { 0.0925, -0.109219, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_pointcloud",
				name = "rock height profile     #0",
				params = { 
					values = {
						{ -10, 0, },
						{ 330, 0, },
						{ 390, 1, },
						{ 500, 1, },
					},
				},
				position = { 0.0402997, -0.107256, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
				},
				layerType = "laplace_map",
				name = "Curvature Map #101",
				params = { },
				position = { 0.0494479, -0.102839, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { },
				layerType = "constant_pointcloud",
				name = "rock height profile      #0",
				params = { 
					values = {
						{ -10, 0, },
						{ 180, 0, },
						{ 200, 1, },
						{ 500, 1, },
					},
				},
				position = { 0.0613565, -0.0688749, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "hm_in",
					},
					steps = { 
						key = "out",
						nodeName = "rock height profile      #0",
					},
				},
				layerType = "pwlerp_map",
				name = "snow curvature height    #0",
				params = { },
				position = { 0.0665312, -0.0707813, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "snow curvature height    #0",
					},
					in2 = { 
						key = "out",
						nodeName = "flat areas with ssnow",
					},
				},
				layerType = "mul_map",
				name = "Multiply map  #2",
				params = { },
				position = { 0.0832521, -0.0707772, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "Multiply map   #0",
					},
					in2 = { 
						key = "out",
						nodeName = "Remap map    #1",
					},
				},
				layerType = "mul_map",
				name = "Multiply map  #3",
				params = { },
				position = { 0.0833668, -0.0651276, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "invert curvature height",
					},
					in2 = { 
						key = "out",
						nodeName = "map_clamp_map7 #0",
					},
				},
				layerType = "mul_map",
				name = "Multiply map   #0",
				params = { },
				position = { 0.0754995, -0.0649054, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "snow curvature height    #0",
					},
				},
				layerType = "map_clamp_map",
				name = "invert curvature height",
				params = { 
					clamp = true,
					from_x = 0,
					from_y = 1,
					to_x = 1,
					to_y = 0,
				},
				position = { 0.0703996, -0.067613, },
			},
			{ 
				color = { 0.01, 0.1, 0.2, 0.6, },
				inputs = { 
					in1 = { 
						key = "out",
						nodeName = "Multiply map  #2",
					},
					in2 = { 
						key = "out",
						nodeName = "Multiply map  #3",
					},
				},
				layerType = "compare_map",
				name = "Compare map  #0",
				params = { 
					op = "MAX",
				},
				position = { 0.0900538, -0.0655409, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "ti desert mask",
				params = { 
					key = "ti_desert",
				},
				position = { 0.86, 0.624, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "ti desert mask",
					},
				},
				layerType = "material_index_output",
				name = "ti sand",
				params = { 
					dither = true,
					key = "ti_desert",
					materialType = "::/terrain/materials/sand_yellow/sand_yellow.tmat",
					order = 450,
				},
				position = { 0.86, 0.628, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "ti tropical mask",
				params = { 
					key = "ti_tropical",
				},
				position = { 0.86, 0.632, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "ti tropical mask",
					},
				},
				layerType = "material_index_output",
				name = "ti tropical grass",
				params = { 
					dither = true,
					key = "ti_tropical",
					materialType = "::/terrain/materials/grass_green_tr/grass_green_tr.tmat",
					order = 450,
				},
				position = { 0.86, 0.636, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { },
				layerType = "input_map_data",
				name = "ti subarctic mask",
				params = { 
					key = "ti_subarctic",
				},
				position = { 0.86, 0.64, },
			},
			{ 
				color = { 0.95, 0.45, 0.12, 0.6, },
				inputs = { 
					material = { 
						key = "out",
						nodeName = "ti subarctic mask",
					},
				},
				layerType = "material_index_output",
				name = "ti moss",
				params = { 
					dither = true,
					key = "ti_subarctic",
					materialType = "::/terrain/materials/msy_grnd_05/msy_grnd_05.tmat",
					order = 450,
				},
				position = { 0.86, 0.644, },
			},
		},
		previewSeed = "",
		snapPoints = { 
			["Compare map  #0"] = { 
				in1 = { },
				in2 = { },
			},
			["Compare map #151"] = { 
				in1 = { },
				in2 = { },
			},
			["Constant point cloud  #0"] = { },
			["Curvature Map #101"] = { 
				in1 = { },
			},
			["Fractal noise map    #0"] = { 
				seed = { },
			},
			["Map data   #1"] = { },
			["Multiply map   #0"] = { 
				in1 = { },
				in2 = { },
			},
			["Multiply map  #2"] = { 
				in1 = { },
				in2 = { },
			},
			["Multiply map  #3"] = { 
				in1 = { },
				in2 = { },
			},
			["Multiply map #154"] = { 
				in1 = { },
				in2 = { },
			},
			["Multiply map #92"] = { 
				in1 = { },
				in2 = { },
			},
			["New Add maps #88"] = { 
				in1 = { },
				in2 = { },
			},
			["New Compare map  #0"] = { },
			["New Compare map #10"] = { 
				in1 = { },
				in2 = { },
			},
			["New Compare map #151"] = { },
			["New Compare map #85"] = { 
				in1 = { },
				in2 = { },
			},
			["New Compare map #97"] = { 
				in1 = { },
				in2 = { },
			},
			["New Constant point cloud  #0"] = { },
			["New Curvature Map #101"] = { },
			["New Fractal noise map    #0"] = { },
			["New Fractal noise map   #0"] = { 
				seed = { },
			},
			["New Fractal noise map   #1"] = { 
				seed = { },
			},
			["New Fractal noise map  #0"] = { 
				seed = { },
			},
			["New Fractal noise map  #1"] = { 
				seed = { },
			},
			["New Fractal noise map #7"] = { 
				seed = { },
			},
			["New Map data   #1"] = { },
			["New Multiply map   #0"] = { },
			["New Multiply map  #0"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map  #1"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map  #2"] = { },
			["New Multiply map  #3"] = { },
			["New Multiply map  #4"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map #11"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map #154"] = { },
			["New Multiply map #6"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map #8"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map #84"] = { 
				in1 = { },
				in2 = { },
			},
			["New Multiply map #92"] = { },
			["New Multiply map #96"] = { 
				in1 = { },
				in2 = { },
			},
			["New Piecewise linear map  #0"] = { },
			["New Piecewise linear map #9"] = { 
				in1 = { },
				steps = { },
			},
			["New Remap map    #0"] = { 
				in1 = { },
			},
			["New Remap map    #1"] = { },
			["New Remap map   #0"] = { 
				in1 = { },
			},
			["New Remap map   #1"] = { 
				in1 = { },
			},
			["New Remap map  #0"] = { 
				in1 = { },
			},
			["New Remap map  #1"] = { 
				in1 = { },
			},
			["New Remap map #85"] = { 
				in1 = { },
			},
			["New Remap map #89"] = { 
				in1 = { },
			},
			["Piecewise linear map  #0"] = { 
				in1 = { },
				steps = { },
			},
			["Remap map    #1"] = { 
				in1 = { },
			},
			add_map1 = { 
				in1 = { },
				in2 = { },
			},
			ambient_map0 = { 
				in1 = { },
			},
			distance_map0 = { 
				in1 = {
					{ 657.142, 6735.7, },
				},
				threshold = { },
			},
			["flat areas with ssnow"] = { 
				in1 = { },
				steps = { },
			},
			forest_ground = { 
				material = { },
			},
			gradient_map0 = { 
				in1 = { },
			},
			["grass alpine"] = { 
				material = { },
			},
			["grass dark green"] = { 
				material = { },
			},
			grass_brown = { 
				material = { },
			},
			grass_gravel = { 
				material = { },
			},
			grass_green = { 
				material = { },
			},
			gravel = { 
				material = { },
			},
			["invert curvature height"] = { 
				in1 = { },
			},
			map_clamp_map0 = { 
				in1 = { },
			},
			map_clamp_map10 = { 
				from = { },
				in1 = { },
				to = { },
			},
			map_clamp_map11 = { 
				in1 = { },
			},
			map_clamp_map5 = { 
				in1 = { },
			},
			["map_clamp_map5 #0"] = { 
				in1 = { },
			},
			["map_clamp_map7  #0"] = { },
			["map_clamp_map7 #0"] = { 
				in1 = { },
			},
			map_clamp_map8 = { 
				from = { },
				in1 = {
					{ 7170, 9550, },
				},
				to = { },
			},
			map_clamp_map9 = { 
				from = { },
				in1 = { },
				to = { },
			},
			ridged_noise_map_0 = { 
				baseFreq = { },
				gain = { },
				lacunarity = { },
				numOctaves = { },
				seed = { },
			},
			["river bed"] = { 
				material = { },
			},
			rock = { 
				material = { },
			},
			scree = { 
				material = { },
			},
			scree_top = { 
				material = { },
			},
			snow = { 
				material = { },
			},
			["snow curvature height    #0"] = { 
				in1 = { },
				steps = { },
			},
			["snow curvature height   #0"] = { 
				in1 = { },
				steps = { },
			},
			["tundra scree height   #0"] = { },
			["ti desert mask"] = { 
			},
			["ti sand"] = { 
				material = { },
			},
			["ti tropical mask"] = { 
			},
			["ti tropical grass"] = { 
				material = { },
			},
			["ti subarctic mask"] = { 
			},
			["ti moss"] = { 
				material = { },
			},
		},
	}
end