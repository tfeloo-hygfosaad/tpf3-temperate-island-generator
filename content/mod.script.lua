local function hasOtherClimate(categories)
	if not categories then
		return false
	end
	for __, value in ipairs(categories) do
		if value == "dry.clima" or value == "tropical.clima" or value == "subarctic.clima" then
			return true
		end
	end
	return false
end

local function postRunFn()
	local baseConfig = api.res.getBaseConfig()
	local climate = baseConfig.climate or ""
	if string.find(climate, "temperate_island", 1, true) == nil then
		return
	end

	local materials = api.res.terrainMaterialTypeRep.getAll()
	for id, __ in pairs(materials) do
		local item = api.res.terrainMaterialTypeRep.get(id)
		if item.categoryList and hasOtherClimate(item.categoryList.categories) then
			api.res.terrainMaterialTypeRep.setVisible(id, true)
		end
	end

	local models = api.res.modelRep.getAll()
	for id, __ in pairs(models) do
		local item = api.res.modelRep.get(id)
		local metadata = item.metadata
		if metadata and metadata.tree ~= nil then
			local categoryList = metadata.categoryList
			if categoryList and hasOtherClimate(categoryList.categories) then
				api.res.modelRep.setVisible(id, true)
			end
		end
	end
end

function data()
	return {
		postRunFn = postRunFn,
	}
end
