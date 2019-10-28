--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/radiated03.png"
	
	local planetData = {
		predownloadMap = true, 
		name = "Zeta Aurigae G",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.60,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.54,
--			hintText = "Keep taking planets until you conquer the galaxy.",
--			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "7250 km",
			primary = "Zeta Aurigae",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[I will find that stolen Walker and destroy it! This metal monster eats heroes for breakfast and still I had to come here without any support. Maybe those crazy religious fanatics on this planet can help me a little.]]		},
		tips = {		},
		gameConfig = {
			mapName = "Onyx Cauldron 1.9",
			missionStartscript = false,			
			playerConfig = {
				startX = 2000,
				startZ = 3000,
				allyTeam = 0,
				startMetal = 500,
				startEnergy = 500,
				commanderParameters = {	},
				extraUnlocks = {
				},
				commander = false,
				startUnits = {
					{
						name = "euf_sarge",
						x = 7300,
						z = 2100,
						facing = 0,
					},
				}
			},
			modoptions = {
			},
			initialWrecks = {			
				{ name = 'obelisk', x = 4404, z = 1833, facing = 0, },
				{ name = 'obelisk', x = 4315, z = 2103, facing = 0, },
				{ name = 'obelisk', x = 4315, z = 1993, facing = 0, },
				{ name = 'obelisk', x = 4204, z = 2106, facing = 0, },
				{ name = 'obelisk', x = 4202, z = 2000, facing = 0, },
				{ name = 'obelisk', x = 4105, z = 1838, facing = 0, },
				{ name = 'landingpad', x = 3826, z = 2219, facing = 0, },
				{ name = 'boxes', x = 3780, z = 2126, facing = 0, },
				{ name = 'box', x = 3931, z = 2289, facing = 0, },
				{ name = 'box', x = 3820, z = 2294, facing = 0, },
				{ name = 'barrels', x = 3902, z = 2273, facing = 0, },
				{ name = 'barrel', x = 3851, z = 2292, facing = 0, },
				{ name = 'barrel', x = 3764, z = 2160, facing = 0, },
				{ name = 'barrel', x = 3755, z = 2174, facing = 0, },
				{ name = 'landingpad', x = 7021, z = 7067, facing = 0, },
				{ name = 'landingpad', x = 7144, z = 6995, facing = 0, },
				{ name = 'landingpad', x = 7146, z = 7135, facing = 0, },
				{ name = 'barrel', x = 7068, z = 6926, facing = 0, },
				{ name = 'barrel', x = 7216, z = 7032, facing = 0, },
				{ name = 'barrels', x = 7213, z = 7068, facing = 0, },
				{ name = 'box', x = 6977, z = 6924, facing = 0, },
				{ name = 'boxes', x = 7050, z = 6970, facing = 0, },
			},			
			aiConfig = {
				{
					startX = 4200,
					startZ = 2000,
					startMetal = 1000,
					startEnergy = 1000,					
					aiLib = "NO AI",
					humanName = "Ally",
					unlocks = {},
					allyTeam = 0,
					commander = false,
					startUnits = {
						{ name = "converter", x = 4120, z = 2050, facing = 0, },					
						{ name = 'euf_sanctum', x = 3928, z = 2024, facing = 1, },
						{ name = 'euf_priest', x = 4263, z = 2101, facing = 0, },
						{ name = 'euf_paladin', x = 4315, z = 2135, facing = 0, },
						{ name = 'euf_paladin', x = 4205, z = 2140, facing = 0, },
						{ name = 'euf_church', x = 4256, z = 1840, facing = 0, },
					}
				},			
				{
					startX = 1900,
					startZ = 6200,
					startMetal = 1000,
					startEnergy = 1000,					
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = "spawner", x = 5100, z = 2000, facing = 0, },				
						{ name = "euf_walker", x = 1900, z = 6200, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {3300, 5600}}, }, },
						{ name = "euf_marine", x = 1930, z = 6220, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {7300, 2100}}, }, },
						{ name = "euf_marine", x = 1950, z = 6240, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {7300, 2100}}, }, },			
						{ name = "euf_scout", x = 1930, z = 6220, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {7300, 2100}}, }, },
						{ name = "euf_scout", x = 1950, z = 6240, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {7300, 2100}}, }, },
						{ name = 'bug_big', x = 2377, z = 2289, facing = 1, },
						{ name = 'bug_larva', x = 1776, z = 2583, facing = 1, },
						{ name = 'bug_larva', x = 1909, z = 2487, facing = 0, },
						{ name = 'bug_larva', x = 2158, z = 3281, facing = 1, },
						{ name = 'bug_larva', x = 7156, z = 4103, facing = 2, },
						{ name = 'bug_med', x = 2590, z = 2205, facing = 0, },
						{ name = 'bug_med', x = 7310, z = 4236, facing = 3, },
						{ name = 'euf_aatower_survival', x = 6872, z = 6984, facing = 0, },
						{ name = 'euf_barracks_ai', x = 7496, z = 7024, facing = 3, },
						{ name = 'euf_barracks_ai', x = 7544, z = 6800, facing = 3, },
						{ name = 'euf_bunker_ai', x = 6496, z = 6704, facing = 0, },
						{ name = 'euf_marine_mis', x = 6255, z = 7146, facing = 3, },
						{ name = 'euf_marine_mis', x = 6345, z = 6849, facing = 2, },
						{ name = 'euf_marine_mis', x = 6372, z = 6814, facing = 2, },
						{ name = 'euf_marine_mis', x = 6543, z = 6620, facing = 2, },
						{ name = 'euf_marine_mis', x = 6576, z = 6546, facing = 2, },
						{ name = 'euf_marine_mis', x = 6974, z = 6444, facing = 2, },
						{ name = 'euf_marine_mis', x = 7051, z = 7158, facing = 2, },
						{ name = 'euf_marine_mis', x = 7569, z = 6568, facing = 2, },
						{ name = 'euf_metalextractor_lvl1', x = 6696, z = 7144, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 7080, z = 6840, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 6696, z = 6808, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 6216, z = 7288, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 6232, z = 6952, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 6696, z = 6344, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 7288, z = 6488, facing = 0, },
						{ name = 'euf_radar_lvl1', x = 6392, z = 7208, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 7208, z = 6568, facing = 0, },
						{ name = 'euf_solar', x = 6288, z = 7360, facing = 0, },
						{ name = 'euf_solar', x = 6288, z = 7440, facing = 0, },
						{ name = 'euf_solar', x = 6352, z = 7408, facing = 0, },
						{ name = 'euf_solar', x = 6944, z = 7328, facing = 0, },
						{ name = 'euf_solar', x = 7008, z = 7280, facing = 0, },
						{ name = 'euf_solar', x = 7008, z = 7360, facing = 0, },
						{ name = 'euf_solar', x = 7312, z = 6592, facing = 0, },
						{ name = 'euf_solar', x = 7312, z = 6656, facing = 0, },
						{ name = 'euf_solar', x = 7376, z = 6592, facing = 0, },
						{ name = 'euf_solar', x = 7376, z = 6656, facing = 0, },
						{ name = 'euf_solar', x = 7440, z = 6592, facing = 0, },
						{ name = 'euf_solar', x = 7440, z = 6656, facing = 0, },
						{ name = 'euf_storage', x = 7192, z = 7384, facing = 0, },
						{ name = 'euf_transport', x = 7149, z = 7120, facing = 0, },
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalUnitTypes = {
						"euf_walker",
					},
				},
			},
			objectiveConfig = {
			},
			bonusObjectiveConfig = {
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"euf_church",
				"euf_priest",
				"euf_paladin",
			},
			modules = {	},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
