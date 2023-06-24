return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 7,
  nextobjectid = 16,
  properties = {},
  tilesets = {
    {
      name = "8_cave",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 28,
      image = "../tilesets/8_cave.png",
      imagewidth = 448,
      imageheight = 256,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 448,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 20,
      id = 2,
      name = "Dirt",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33,
        60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61,
        88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89,
        116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117,
        34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35,
        62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63,
        90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91,
        118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119,
        32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33,
        60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61,
        88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89,
        116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117,
        34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35,
        62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63,
        90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91,
        118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119,
        32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 35, 32, 33,
        60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61, 62, 63, 60, 61,
        88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89, 90, 91, 88, 89,
        116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117, 118, 119, 116, 117
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 20,
      id = 1,
      name = "Cave",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        50, 51, 52, 226, 227, 228, 226, 227, 228, 226, 227, 228, 226, 227, 228, 226, 227, 228, 226, 227, 228, 226, 227, 228, 226, 227, 228, 43, 44, 45,
        78, 79, 80, 254, 255, 256, 254, 255, 256, 254, 255, 256, 254, 255, 256, 254, 255, 256, 254, 255, 256, 254, 255, 256, 254, 255, 256, 71, 72, 73,
        106, 107, 108, 282, 283, 284, 282, 283, 284, 282, 283, 284, 282, 283, 284, 282, 283, 284, 282, 283, 284, 282, 283, 284, 282, 283, 284, 99, 100, 101,
        134, 135, 136, 310, 311, 312, 310, 311, 312, 310, 311, 312, 310, 311, 312, 310, 311, 312, 310, 311, 312, 310, 311, 312, 310, 311, 312, 127, 128, 129,
        162, 163, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 156, 157,
        50, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 44, 45,
        78, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73,
        106, 107, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 100, 101,
        134, 135, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 129,
        162, 163, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 156, 157,
        50, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 44, 45,
        78, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73,
        106, 107, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 100, 101,
        134, 135, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 129,
        162, 163, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, 156, 157,
        50, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 44, 45,
        78, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73,
        106, 107, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 100, 101,
        134, 135, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 129,
        104, 18, 19, 20, 21, 18, 19, 20, 21, 18, 19, 20, 21, 22, 0, 0, 17, 18, 19, 20, 21, 18, 19, 20, 21, 18, 19, 20, 21, 104
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 20,
      id = 3,
      name = "Objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 397, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 401, 402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 403, 404, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 429, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 431, 432, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 399, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 401, 402, 0, 0, 0,
        0, 0, 0, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 429, 430, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 403, 404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 399, 400, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 431, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 427, 428, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Walls",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 304,
          width = 224,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 304,
          width = 224,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 0,
          width = 48,
          height = 304,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 48,
          height = 304,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 0,
          width = 384,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 225,
          width = 26,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 160,
          width = 26,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 82,
          y = 100,
          width = 28,
          height = 26,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 227,
          y = 68,
          width = 27,
          height = 26,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 372,
          y = 96,
          width = 26,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 402,
          y = 164,
          width = 28,
          height = 26,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 372,
          y = 224,
          width = 26,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Gates",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 225,
          y = 314,
          width = 30,
          height = 6,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
