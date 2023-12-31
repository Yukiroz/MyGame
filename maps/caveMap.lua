return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 50,
  height = 40,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 6,
  nextobjectid = 22,
  properties = {},
  tilesets = {
    {
      name = "1_terrain",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 30,
      image = "../tilesets/1_terrain.png",
      imagewidth = 480,
      imageheight = 768,
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
      tilecount = 1440,
      tiles = {}
    },
    {
      name = "8_cave",
      firstgid = 1441,
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
      width = 50,
      height = 40,
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
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557,
        1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473, 1474, 1475, 1472, 1473,
        1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501, 1502, 1503, 1500, 1501,
        1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529, 1530, 1531, 1528, 1529,
        1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557, 1558, 1559, 1556, 1557
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 50,
      height = 40,
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
        1487, 1598, 1599, 1600, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1601, 1598, 1599, 1600, 1601, 1487,
        1487, 1519, 1520, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1626, 1627, 1628, 1629, 1511, 1512, 1515,
        1515, 1547, 1548, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1638, 1639, 1640, 1539, 1540, 1543,
        1543, 1575, 1576, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1666, 1667, 1668, 1567, 1568, 1571,
        1571, 1603, 1604, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1694, 1695, 1696, 1595, 1596, 1571,
        1490, 1491, 1492, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1722, 1723, 1724, 1483, 1484, 1485,
        1518, 1519, 1520, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1750, 1751, 1752, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1783, 1784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1811, 1812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1547, 1548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1540, 1541,
        1574, 1575, 1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1567, 1568, 1569,
        1490, 1491, 1492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1483, 1484, 1485,
        1518, 1519, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511, 1512, 1513,
        1546, 1453, 1454, 1460, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1620, 0, 0, 1619, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1458, 1459, 1460, 1461, 1460, 1451, 1452, 1541
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 50,
      height = 40,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1789, 1790, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1817, 1818, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 1777, 1778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 1805, 1806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1779, 1780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1807, 1808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1779, 1780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1807, 1808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 1787, 1788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 1815, 1816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1777, 1778, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1805, 1806, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1781, 1782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1809, 1810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
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
          x = 752,
          y = 0,
          width = 48,
          height = 640,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 0,
          width = 336,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 384,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 0,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 112,
          width = 48,
          height = 528,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 624,
          width = 704,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 164,
          width = 22,
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
          x = 258,
          y = 390,
          width = 22,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 502,
          width = 22,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 324,
          y = 570,
          width = 24,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 644,
          y = 516,
          width = 22,
          height = 26,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 610,
          y = 246,
          width = 22,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 676,
          y = 134,
          width = 22,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Gates",
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
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 385,
          y = 65,
          width = 30,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
