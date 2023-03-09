ei_tanks_lib = require("lib/lib")

--====================================================================================================
--TANKS
--====================================================================================================

data:extend({
    {
        name = "ei_tank-1",
        type = "item",
        icon = ei_tanks_item_path.."tank-1.png",
        icon_size = 64,
        subgroup = "storage",
        order = "b[fluid]-b",
        place_result = "ei_tank-1",
        stack_size = 50
    },
    {
        name = "ei_tank-2",
        type = "item",
        icon = ei_tanks_item_path.."tank-2.png",
        icon_size = 64,
        subgroup = "storage",
        order = "b[fluid]-c",
        place_result = "ei_tank-2",
        stack_size = 50
    },
    {
        name = "ei_tank-3",
        type = "item",
        icon = ei_tanks_item_path.."tank-3.png",
        icon_size = 64,
        subgroup = "storage",
        order = "b[fluid]-d",
        place_result = "ei_tank-3",
        stack_size = 50
    },
    {
        name = "ei_tank-1",
        type = "recipe",
        category = "crafting",
        energy_required = 2,
        ingredients =
        {
            {"concrete", 25},
            {"steel-plate", 40},
            {"storage-tank", 4},
        },
        result = "ei_tank-1",
        result_count = 1,
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_tank-1",
    },
    {
        name = "ei_tank-2",
        type = "recipe",
        category = "crafting",
        energy_required = 2,
        ingredients =
        {
            {"concrete", 200},
            {"steel-plate", 200},
            {"storage-tank", 10},
        },
        result = "ei_tank-2",
        result_count = 1,
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_tank-2",
    },
    {
        name = "ei_tank-3",
        type = "recipe",
        category = "crafting",
        energy_required = 2,
        ingredients =
        {
            {"iron-plate", 25},
            {"steel-plate", 40},
            {"storage-tank", 2},
        },
        result = "ei_tank-3",
        result_count = 1,
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_tank-3",
    },
    {
        name = "ei_tank_1",
        type = "technology",
        icon = ei_tanks_tech_path.."tank-1.png",
        icon_size = 256,
        prerequisites = {"fluid-handling", "concrete"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_tank-1"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30
        },
        age = "electricity-age",
    },
    {
        name = "ei_tank_2",
        type = "technology",
        icon = ei_tanks_tech_path.."tank-2.png",
        icon_size = 256,
        prerequisites = {"fluid-handling", "concrete"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_tank-2"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30
        },
        age = "electricity-age",
    },
    {
        name = "ei_tank_3",
        type = "technology",
        icon = ei_tanks_tech_path.."tank-3.png",
        icon_size = 256,
        prerequisites = {"fluid-handling"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_tank-3"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30
        },
        age = "electricity-age",
    },
    {
        name = "ei_tank-1",
        type = "storage-tank",
        icon = ei_tanks_item_path.."tank-1.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "ei_tank-1"},
        max_health = 500,
        corpse = "big-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
		circuit_wire_max_distance = 20,
        flow_length_in_ticks = 1,
        map_color = data.raw["storage-tank"]["storage-tank"].map_color,
        window_bounding_box = {{0,0},{1,1}},
        fluid_box = {
            base_area = 750,
            pipe_covers = pipecoverspictures(),
            pipe_picture = ei_tank_1,
            base_level = 0,
            height = 1,
            pipe_connections =
            {
                { type = "input-output", position = {0, -3} },
                { type = "input-output", position = {0, 3} },
                { type = "input-output", position = {-3, 0} },
                { type = "input-output", position = {3, 0} },
            },
            production_type = "input-output",
        },
        pictures = {
            picture = {
                filename = ei_tanks_entity_path.."tank-1.png",
                size = {512,512},
                shift = {0, 0},
	            scale = 0.35*2,
            },
            window_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            fluid_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            flow_sprite = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            gas_flow = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                animation_speed = 1,
            },
        }
    },
    {
        name = "ei_tank-2",
        type = "storage-tank",
        icon = ei_tanks_item_path.."tank-2.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "ei_tank-2"},
        max_health = 500,
        corpse = "big-remnants",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
		circuit_wire_max_distance = 20,
        flow_length_in_ticks = 1,
        map_color = data.raw["storage-tank"]["storage-tank"].map_color,
        window_bounding_box = {{0,0},{1,1}},
        fluid_box = {
            base_area = 2000,
            pipe_covers = pipecoverspictures(),
            pipe_picture = ei_tank_2,
            base_level = 0,
            height = 1,
            pipe_connections =
            {
                { type = "input-output", position = {1, -4} },  
                { type = "input-output", position = {-1, -4} },

                { type = "input-output", position = {1, 4} },
                { type = "input-output", position = {-1, 4} },

                { type = "input-output", position = {-4, 1} },
                { type = "input-output", position = {-4, -1} },

                { type = "input-output", position = {4, 1} },
                { type = "input-output", position = {4, -1} },
            },
            production_type = "input-output",
        },
        pictures = {
            picture = {
                filename = ei_tanks_entity_path.."tank-2.png",
                size = {512*2,512*2},
                shift = {0, 0},
	            scale = 0.52,
            },
            window_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            fluid_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            flow_sprite = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            gas_flow = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                animation_speed = 1,
            },
        }
    },
    {
        name = "ei_tank-3",
        type = "storage-tank",
        icon = ei_tanks_item_path.."tank-3.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "ei_tank-3"},
        max_health = 500,
        corpse = "big-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
		circuit_wire_max_distance = 20,
        flow_length_in_ticks = 1,
        map_color = data.raw["storage-tank"]["storage-tank"].map_color,
        window_bounding_box = {{0,0},{1,1}},
        fluid_box = {
            base_area = 750,
            pipe_covers = pipecoverspictures(),
            pipe_picture = ei_tank_1,
            base_level = 0,
            height = 1,
            pipe_connections =
            {
                { type = "input-output", position = {0, -3} },
                { type = "input-output", position = {0, 3} },
                { type = "input-output", position = {-3, 0} },
                { type = "input-output", position = {3, 0} },
            },
            production_type = "input-output",
        },
        pictures = {
            picture = {
                filename = ei_tanks_entity_path.."tank-3.png",
                size = {512,512},
                shift = {0, 0},
	            scale = 0.35*2,
            },
            window_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            fluid_background = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            flow_sprite = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
            },
            gas_flow = {
                filename = ei_tanks_entity_path.."64_empty.png",
                size = {64,64},
                shift = {0, 0},
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                animation_speed = 1,
            },
        }
    }
})