--====================================================================================================
--EMPTY SPRITE
--====================================================================================================

local empty_sprite = {
    filename = ei_tanks_entity_path.."64_empty.png",
    priority = "high",
    width = 64,
    height = 64
}

--====================================================================================================
--PIPE PICTURES
--====================================================================================================

ei_tank_1 = {
    north = empty_sprite,
    south = {
        layers = {
            {
              filename = ei_tanks_pipe_path.."data_south_covers.png",
              width = 512,
              height = 512,
              -- shift = {0,-2.15},
              scale = 0.35,
              shift = util.by_pixel(0, -96), 
            },
            {
              filename = ei_tanks_pipe_path.."south_basic_covers.png",
              priority = "high",
              width = 55,
              height = 50,
              shift = {0.01, -0.58},
              scale = 0.5
            }
        }
        
    },
    west = {
      filename = ei_tanks_pipe_path.."big_west_covers.png",
      priority = "high",
      width = 512,
      height = 512,
      scale = 0.35,
      shift = util.by_pixel(96, 0),        
    },
    east = {
      filename = ei_tanks_pipe_path.."big_east_covers.png",
      priority = "high",
      width = 512,
      height = 512,
      scale = 0.35,
      shift = util.by_pixel(-96, 0),
    }
}

ei_tank_2 = {
    north = empty_sprite,
    south = {
        layers = {
            {
                filename = ei_tanks_pipe_path.."data_south_covers.png",
                width = 512,
                height = 512,
                -- shift = {0,-2.15},
                scale = 0.35,
                shift = util.by_pixel(0, -96), 
            },
            {
                filename = ei_tanks_pipe_path.."south_basic_covers.png",
                priority = "high",
                width = 55,
                height = 50,
                shift = {0.01, -0.58},
                scale = 0.5
            }
        }
        
    },
    west = empty_sprite,
    east = empty_sprite
}