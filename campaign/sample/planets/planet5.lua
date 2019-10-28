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
