
--[[ THIS SHOULD GENERATE AROUND 1300+ FILES FOR MINERAFT WOOD CUTTIN ]]--

print("EXECUTION STARTED\n")

os.execute("mkdir recipe")
os.execute("mkdir advancement")

print("GEN STARTET\n")

function stonecutter(from,to,maketag)
	for _,table in pairs(to) do

		local tag = ""
		local count = 1
		local item = "air"
		if type(table) == "table" then
			item = table[1]
			count = table[2]
		else
			item = table
		end
		if maketag then
			tag = "#"
		end

		--RECIPE
		io.open("recipe/"..from.."_to_"..item..".json","w"):write([[
			{
				"type": "minecraft:stonecutting",
				"ingredient": "]]..tag..[[minecraft:]]..from..[[",
				"result": {
					"id": "minecraft:]]..item..[[",
					"count": ]]..count..[[
				}
			}
		]]):close()
		print("Generated: "..from.."_to_"..item.." recipe")

		--ADVANCEMENT
		io.open("advancement/"..item.."_from_"..from.."_cutting.json","w"):write([[
			{
				"parent": "minecraft:recipes/root",
				"criteria": {
					"has_item": {
						"trigger": "minecraft:inventory_changed",
						"conditions": {
							"items": [
								{
									"items": "]]..tag..[[minecraft:]]..from..[["
								}
							]
						}
					}
				},
				"requirements": [
					[
						"has_item"
					]
				],
				"rewards": {
					"recipes": [
						"woodcutter:]]..from.."_to_"..item..[["
					]
				}
			}
		]]):close()
		print("Generated: "..item.."_from_"..from.."_cutting advancement")
	end
end

--LOGIC START
for _, wood_type in pairs({
	"oak",
	"spruce",
	"birch",
	"jungle",
	"dark_oak",
	"acacia",
	"mangrove",
	"cherry",
	"pale_oak",
}) do
	
	stonecutter(wood_type.."_planks",{
		{wood_type.."_slab",2},
		wood_type.."_stairs",
		wood_type.."_door",
		wood_type.."_trapdoor",
		wood_type.."_button",
		wood_type.."_pressure_plate",
		wood_type.."_fence",
		wood_type.."_fence_gate",
		wood_type.."_sign",
	})
	stonecutter("stripped_"..wood_type.."_log",{
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter("stripped_"..wood_type.."_wood",{
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter(wood_type.."_log",{
		"stripped_"..wood_type.."_log",
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter(wood_type.."_wood",{
		"stripped_"..wood_type.."_wood",
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
end

stonecutter("logs",{{"stick",8}},"#")
stonecutter("planks",{{"stick",2}},"#")

for _, wood_type in pairs({
	"crimson",
	"warped"
}) do
	stonecutter(wood_type.."_planks",{
		{wood_type.."_slab",2},
		wood_type.."_stairs",
		wood_type.."_door",
		wood_type.."_trapdoor",
		wood_type.."_button",
		wood_type.."_pressure_plate",
		wood_type.."_fence",
		wood_type.."_fence_gate",
		wood_type.."_sign",
	})
	stonecutter("stripped_"..wood_type.."_stem",{
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter("stripped_"..wood_type.."_hyphae",{
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter(wood_type.."_stem",{
		"stripped_"..wood_type.."_stem",
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
	stonecutter(wood_type.."_hyphae",{
		"stripped_"..wood_type.."_hyphae",
		{wood_type.."_planks",4},
		{wood_type.."_slab",8},
		{wood_type.."_stairs",4},
		{wood_type.."_door",4},
		{wood_type.."_trapdoor",4},
		{wood_type.."_button",4},
		{wood_type.."_pressure_plate",4},
		{wood_type.."_fence",4},
		{wood_type.."_fence_gate",4},
		{wood_type.."_sign",4},
		wood_type.."_shelf"
	})
end

wood_type = "bamboo"

stonecutter(wood_type.."_planks",{
	wood_type.."_mosaic",
	{wood_type.."_slab",2},
	{wood_type.."_mosaic_slab",2},
	wood_type.."_stairs",
	wood_type.."_mosaic_stairs",
	wood_type.."_door",
	wood_type.."_trapdoor",
	wood_type.."_button",
	wood_type.."_pressure_plate",
	wood_type.."_fence",
	wood_type.."_fence_gate",
	wood_type.."_sign",
})
stonecutter(wood_type.."_block",{
	"stripped_"..wood_type.."_block",
	{wood_type.."_planks",2},
	{wood_type.."_mosaic_planks",2},
	{wood_type.."_slab",4},
	{wood_type.."_mosaic_slab",4},
	{wood_type.."_stairs",2},
	{wood_type.."_mosaic_stairs",2},
	{wood_type.."_door",2},
	{wood_type.."_trapdoor",2},
	{wood_type.."_button",2},
	{wood_type.."_pressure_plate",2},
	{wood_type.."_fence",2},
	{wood_type.."_fence_gate",2},
	{wood_type.."_sign",2},
	wood_type.."_shelf"
})
stonecutter("stripped_"..wood_type.."_block",{
	{wood_type.."_planks",2},
	{wood_type.."_mosaic_planks",2},
	{wood_type.."_slab",4},
	{wood_type.."_mosaic_slab",4},
	{wood_type.."_stairs",2},
	{wood_type.."_mosaic_stairs",2},
	{wood_type.."_door",2},
	{wood_type.."_trapdoor",2},
	{wood_type.."_button",2},
	{wood_type.."_pressure_plate",2},
	{wood_type.."_fence",2},
	{wood_type.."_fence_gate",2},
	{wood_type.."_sign",2},
	wood_type.."_shelf"
})

--LOGIC END

print("\nGEN ENDED..\n")

print("KEEP FILES? (1 = YES, 2 = NO)")
answer = io.read("n")
if answer ~= 1 then
	os.execute("del /q recipe")
	os.execute("del /q advancement")
end
print("\nEXECUTION ENDED")
