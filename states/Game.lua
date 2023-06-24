function Game()
    return {
       state = {
            menu = false,
            paused = false,
            battle = false,
            running = true,
            ended = false,
            command = false
       },

       changeGameState = function (self, state)
            self.state.menu = state == "menu"
            self.state.paused = state == "paused"
            self.state.battle = state == "battle"
            self.state.running = state == "running"
            self.state.ended = state == "ended"
            self.state.command = state == "command"
       end
    }
end

return Game