function Levels()
    return {
       area = {
            overworld = true,
            cave = false,
            boss = false
       },

       changeLevel = function (self, area)
            self.area.overworld = area == "overworld"
            self.area.cave = area == "cave"
            self.area.boss = area == "boss"
       end
    }
end

return Levels