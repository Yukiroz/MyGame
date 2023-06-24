function Arrow()
    return {
       position = {
            up = true,
            down = false
       },

       changePosition = function (self, position)
            self.position.up = position == "up"
            self.position.up = position == "down"
       end
    }
end

return Arrow