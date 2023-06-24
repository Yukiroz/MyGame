function love.load()

    -- Libaries

    wf =require 'libraries/windfield'
    world = wf.newWorld(0, 0)

    camera = require 'libraries/camera'
    cam = camera()

    flux = require 'libraries/flux'

    anim8 = require 'libraries/anim8'
    love.graphics.setDefaultFilter("nearest", "nearest")

    sti = require 'libraries/sti'

    gameMap = {}
    gameMap.overworldMap = sti('maps/testMap.lua')
    gameMap.caveMap = sti('maps/caveMap.lua')
    gameMap.bossMap = sti('maps/bossMap.lua')

    -- Assets

    battleboarder = love.graphics.newImage('sprites/panels/panel.png')
    

    letters = {}
    
    letters.spriteSheet = love.graphics.newImage('sprites/letters/white.png')
    letters.grid = anim8.newGrid( 15, 25, letters.spriteSheet:getWidth(), letters.spriteSheet:getHeight())
    letters.arrow = love.graphics.newImage('sprites/letters/arrow.png')

    arrow = {}

    -- Sounds

    sounds = {}
    sounds.hitfx = love.audio.newSource("sounds/hitfx.wav", "static")

    -- Music

    music = {}
    music.overworld1 = love.audio.newSource("music/overworld1.wav", "stream")
    music.overworld1:setLooping(true)
    music.cave1 = love.audio.newSource("music/cave1.wav", "stream")
    music.cave1:setLooping(true)
    music.battle1 = love.audio.newSource("music/battle1.wav", "stream")
    music.battle1:setLooping(true)

    -- Game States

    local Game = require "states/Game"
    game = Game()
    local Levels = require "levels/Level"
    level = Levels()
    -- fight = Fight()
    --local Arrow = require "arrow/Arrow"
    --arrow = Arrow()

    turn = {}
    turn.player = true


    -- Collisions
    world:addCollisionClass('Player')
    world:addCollisionClass('slimeA')
    world:addCollisionClass('slimeB')
    world:addCollisionClass('slimeC')
    world:addCollisionClass('Boss')
    world:addCollisionClass('Wall')
    world:addCollisionClass('GateCave')
    world:addCollisionClass('GateBoss')

    player = {}
    player.power = 10
    player.level = 1
    player.exp = 0
    player.collider = world:newBSGRectangleCollider(520, 850, 20, 40, 10)
    player.collider:setCollisionClass('Player')
    player.collider:setFixedRotation(true)


    slimeA = {}
    slimeA.power = 2
    slimeB = {}
    slimeB.power = 2
    slimeC = {}
    slimeC.power = 2
    slimeA.collider = world:newBSGRectangleCollider(540, 600, 20, 20, 10)
    slimeA.collider:setCollisionClass('slimeA')
    slimeA.collider:setFixedRotation(true)
    slimeA.collider:setType('static')


    boss = {}
    boss.power = 10
    

    gates = {}
    if gameMap.overworldMap.layers["Gates"] then
        for i, obj in pairs(gameMap.overworldMap.layers["Gates"].objects) do
            local gate = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            gate:setType('static')
            gate:setCollisionClass('GateCave')
            table.insert(gates, gate)
        end
    end

    walls = {}
    if gameMap.overworldMap.layers["Walls"] then
        for i, obj in pairs(gameMap.overworldMap.layers["Walls"].objects)  do
            local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            wall:setType('static')
            wall:setCollisionClass('Wall')
            table.insert(walls, wall)
        end
    end

    --[[entities = {}
    table.insert(entities, player.collider)
    table.insert(entities, slimeA.collider)]]

    -- Animations

    player.x = 0
    player.y = 0
    player.speed = 200
    player.animSpeed = 0.15
    player.animBattleSpeed = 0.1
    player.animSwingSpeed = 0.12
    -- player.walkFrames = 3, x, 2, x, 4, x, 2, x where x is row
    player.spriteSheet = love.graphics.newImage('sprites/Warrior-Red.png')
    player.grid = anim8.newGrid( 32, 32, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    collider = {}

    collider1 = {}

    collider1.x = 540
    collider1.y =  600

    attack = false

    slimeA.x = 0
    slimeA.y = 0
    slimeA.animSpeed = 0.2
    slimeA.animSpeedslow = 1
    slimeA.spriteSheet = love.graphics.newImage('sprites/Slime.png')
    slimeA.grid = anim8.newGrid( 32, 32, slimeA.spriteSheet:getWidth(), slimeA.spriteSheet:getHeight())
    slimeB.spriteSheet = love.graphics.newImage('sprites/Slime.png')
    slimeB.grid = anim8.newGrid( 32, 32, slimeA.spriteSheet:getWidth(), slimeA.spriteSheet:getHeight())
    slimeC.spriteSheet = love.graphics.newImage('sprites/Slime.png')
    slimeC.grid = anim8.newGrid( 32, 32, slimeA.spriteSheet:getWidth(), slimeA.spriteSheet:getHeight())

    boss.spriteSheet = {}
    boss.spriteSheet.spirit = love.graphics.newImage('sprites/boss/summonIdle.png')
    boss.grid = {}
    boss.grid.spirit = anim8.newGrid( 50, 48, boss.spriteSheet.spirit:getWidth(), boss.spriteSheet.spirit:getHeight())
    boss.spriteSheet.idle = love.graphics.newImage('sprites/boss/idle2.png')
    boss.grid.idle = anim8.newGrid( 50, 25, boss.spriteSheet.spirit:getWidth(), boss.spriteSheet.spirit:getHeight())
    boss.spriteSheet.attack = love.graphics.newImage('sprites/boss/attacking.png')
    boss.grid.attack = anim8.newGrid( 100, 100, boss.spriteSheet.attack:getWidth(), boss.spriteSheet.attack:getHeight())


    -- Idle Animations
    facing = dd
    player.animations = {}
    player.animations.idledd = anim8.newAnimation( player.grid(1, 1), player.animSpeed)
    player.animations.idledr = anim8.newAnimation( player.grid(2, 1), player.animSpeed)
    player.animations.idlerr = anim8.newAnimation( player.grid(3, 1), player.animSpeed)
    player.animations.idleur = anim8.newAnimation( player.grid(4, 1), player.animSpeed)
    player.animations.idleuu = anim8.newAnimation( player.grid(5, 1), player.animSpeed)
    player.animations.idleul = anim8.newAnimation( player.grid(6, 1), player.animSpeed)
    player.animations.idlell = anim8.newAnimation( player.grid(1, 7, 2, 7), player.animSpeed)
    player.animations.idledl = anim8.newAnimation( player.grid(8, 1), player.animSpeed)

    slimeA.animations = {}
    slimeA.animations.idle = anim8.newAnimation( slimeA.grid(1, 1, 2, 1), slimeA.animSpeedslow)
    slimeA.animations.attack = anim8.newAnimation ( slimeA.grid(1,1,2,1,3,1,4,1,5,1,6,1,5,1,6,1,5,1,4,1,3,1,2,1,1,1), player.animSwingSpeed)
    slimeA.animations.damaged = anim8.newAnimation( slimeA.grid(7,1,8,1,9,1), slimeA.animSpeed)
    slimeA.animations.death = anim8.newAnimation ( slimeA.grid(10,1,11,1,12,1,13,1,14,1,15,1), 0.2)
    slimeB.animations = {}
    slimeB.animations.idle = anim8.newAnimation( slimeA.grid(1, 1, 2, 1), slimeA.animSpeedslow)
    slimeB.animations.attack = anim8.newAnimation ( slimeA.grid(1,1,2,1,3,1,4,1,5,1,6,1,5,1,6,1,5,1,4,1,3,1,2,1,1,1), player.animSwingSpeed)
    slimeB.animations.damaged = anim8.newAnimation( slimeA.grid(7,1,8,1,9,1), slimeA.animSpeed)
    slimeB.animations.death = anim8.newAnimation ( slimeA.grid(10,1,11,1,12,1,13,1,14,1,15,1), 0.2)
    slimeC.animations = {}
    slimeC.animations.idle = anim8.newAnimation( slimeA.grid(1, 1, 2, 1), slimeA.animSpeedslow)
    slimeC.animations.attack = anim8.newAnimation ( slimeA.grid(1,1,2,1,3,1,4,1,5,1,6,1,5,1,6,1,5,1,4,1,3,1,2,1,1,1), player.animSwingSpeed)
    slimeC.animations.damaged = anim8.newAnimation( slimeA.grid(7,1,8,1,9,1), slimeA.animSpeed)
    slimeC.animations.death = anim8.newAnimation ( slimeA.grid(10,1,11,1,12,1,13,1,14,1,15,1), 0.2)

    boss.x = 10
    boss.y = 10
    boss.animations = {}
    boss.animations.spirit = anim8.newAnimation ( boss.grid.spirit(1, 1, 2, 1, 3, 1, 4, 1 ), player.animSpeed)
    boss.animations.idle = anim8.newAnimation ( boss.grid.idle (1,1,2,1,3,1,4,1,1,2,2,2,3,2,4,2), 0.07)
    boss.animations.attack = anim8.newAnimation ( boss.grid.attack ( 1,1,2,1,3,1,4,1,5,1,6,1), 0.2)


    id = 0
    

    -- Walking Animations

    player.animations.dd = anim8.newAnimation( player.grid(3, 1, 2, 1, 4, 1, 2, 1), player.animSpeed)
    player.animations.dr = anim8.newAnimation( player.grid(3, 2, 2, 2, 4, 2, 2, 2), player.animSpeed)
    player.animations.rr = anim8.newAnimation( player.grid(3, 3, 2, 3, 4, 3, 2, 3), player.animSpeed)
    player.animations.ur = anim8.newAnimation( player.grid(3, 4, 2, 4, 4, 4, 2, 4), player.animSpeed)
    player.animations.uu = anim8.newAnimation( player.grid(3, 5, 2, 5, 4, 5, 2, 5), player.animSpeed)
    player.animations.ul = anim8.newAnimation( player.grid(3, 6, 2, 6, 4, 6, 2, 6), player.animSpeed)
    player.animations.ll = anim8.newAnimation( player.grid(3, 7, 2, 7, 4, 7, 2, 7), player.animSpeed)
    player.animations.dl = anim8.newAnimation( player.grid(3, 8, 2, 8, 4, 8, 2, 8), player.animSpeed)

    --Swing Animations
    
    --player.animations.swingdd = anim8.newAnimation( player.grid('5 - 8', 1), player.animSwingSpeed)
    --player.animations.swingdr = anim8.newAnimation( player.grid('5 - 8', 2), player.animSwingSpeed)
    --player.animations.swingrr = anim8.newAnimation( player.grid('5 - 8', 3), player.animSwingSpeed)
    --player.animations.swingur = anim8.newAnimation( player.grid('5 - 8', 4), player.animSwingSpeed)
    --player.animations.swinguu = anim8.newAnimation( player.grid('5 - 8', 5), player.animSwingSpeed)
    --player.animations.swingul = anim8.newAnimation( player.grid('5 - 8', 6), player.animSwingSpeed)
    player.animations.swingll = anim8.newAnimation( player.grid('5 - 8', 7), player.animSwingSpeed)
    --player.animations.swingdl = anim8.newAnimation( player.grid('5 - 8', 8), player.animSwingSpeed)
    
    player.anim = player.animations.idledd

    slimeA.anim = slimeA.animations.idle
    slimeB.anim = slimeB.animations.idle
    slimeC.anim = slimeC.animations.idle
    boss.anim = boss.animations.idle

    letters.animations = {}
    letters.animations.a = anim8.newAnimation( letters.grid(1,1), player.animSpeed)
    letters.animations.c = anim8.newAnimation( letters.grid(3,1), player.animSpeed)
    letters.animations.e = anim8.newAnimation( letters.grid(5,1), player.animSpeed)
    letters.animations.h = anim8.newAnimation( letters.grid(8,1), player.animSpeed)
    letters.animations.k = anim8.newAnimation( letters.grid(11,1), player.animSpeed)
    letters.animations.p = anim8.newAnimation( letters.grid(4,2), player.animSpeed)
    letters.animations.s = anim8.newAnimation( letters.grid(7,2), player.animSpeed)
    letters.animations.t = anim8.newAnimation( letters.grid(8,2), player.animSpeed)
    letters.animations.is = anim8.newAnimation( letters.grid(3,6), player.animSpeed)
    letters.animations.one = anim8.newAnimation( letters.grid(3,3), player.animSpeed)
    letters.animations.two = anim8.newAnimation( letters.grid(4,3), player.animSpeed)
    letters.animations.three = anim8.newAnimation( letters.grid(5,3), player.animSpeed)
    letters.animations.four = anim8.newAnimation( letters.grid(6,3), player.animSpeed)
    letters.animations.five = anim8.newAnimation( letters.grid(7,3), player.animSpeed)
    letters.animations.six = anim8.newAnimation( letters.grid(8,3), player.animSpeed)
    letters.animations.seven = anim8.newAnimation( letters.grid(9,3), player.animSpeed)
    letters.animations.eight = anim8.newAnimation( letters.grid(10,3), player.animSpeed)
    letters.animations.nine = anim8.newAnimation( letters.grid(11,3), player.animSpeed)
    letters.animations.zero = anim8.newAnimation( letters.grid(12,3), player.animSpeed)
    letters.animations.blank = anim8.newAnimation( letters.grid(4,6), player.animSpeed)


    -- Background

    background = love.graphics.newImage('environment/Grass1.png')

    -- Music Player

    music.overworld1:play()

    -- Camera

    camvalue = 1.56

    camvx = 2
    camvy = 2.5

    -- Stats
    player.hp = {}
    player.hp = 100
    slimeA.hp = 30
    slimeB.hp = 30
    slimeC.hp = 40
    boss.hp = 300
end

function love.update(dt)



    local function Running()
        game:changeGameState('running')
    end
    
    if game.state.battle == false and game.state.command == false then
        player.animSpeed = 0.15
        music.battle1:stop()
    end

    if game.state.battle or game.state.command then
        player.animSpeed = 0.1
    end

    function walkleft()
        if enemy.hp > 0 then
            player.anim = player.animations.ll
        end
    end
    function walkright()
        if enemy.hp > 0 then
            player.anim = player.animations.rr
        end
    end

    local function playeridle()
        player.anim = player.animations.idlell
    end

    local function slimeAidle()
        if id == 1 then
            slimeA.anim = slimeA.animations.idle
        end
        if id == 2 then
            slimeB.anim = slimeB.animations.idle
        end
        if id == 3 then
            slimeC.anim = slimeC.animations.idle
        end
    end

    if game.state.running then
        -- Movement

        --[[if slimeA.hp < 0 then
            slimeA.collider:destroy()
        end]]
        damage = 0

        if player.exp > 10 and player.exp < 40 then
            player.power = 20
            player.level = 2
        end
        if player.exp > 40 and player.exp < 60 then 
            player.power = 30
            player.level = 3
        end
        if player.exp > 60 then
            player.power = 40
            player.level = 4
        end



        local isMoving = false

        if level.area.overworld then

            camvalue = 1.56

            camvx = 2
            camvy = 2.5

            cam:zoomTo(1)
            
        end


        if level.area.cave then
            cam:zoomTo(1)
            
            camvalue = 2.8
        end


        

        local vx = 0
        local vy = 0

        vx = 0
        vy = 0

        --  Walking Animations

        if love.keyboard.isDown("down") then  
            vy = player.speed
            player.anim = player.animations.dd
            isMoving = true
            facing = dd
        end
        if love.keyboard.isDown("right") then  
            vx = player.speed
            player.anim = player.animations.rr
            isMoving = true
            facing = rr
        end
        if love.keyboard.isDown("up") then  
            vy = -1 * player.speed
            player.anim = player.animations.uu
            isMoving = true
            facing = uu
        end
        if love.keyboard.isDown("left") then  
            vx = -1 * player.speed
            player.anim = player.animations.ll
            isMoving = true
            facing = ll
        end
        if love.keyboard.isDown("up") and love.keyboard.isDown("right") then 
            vx = player.speed 
            vy = -1 * player.speed
            player.anim = player.animations.ur
            isMoving = true
            facing = ur
        end
        if love.keyboard.isDown("up") and love.keyboard.isDown("left") then  
            vx = -1 * player.speed
            vy = -1 * player.speed
            player.anim = player.animations.ul
            isMoving = true
            facing = ul
        end
        if love.keyboard.isDown("down") and love.keyboard.isDown("right") then  
            vx = player.speed
            vy = player.speed
            player.anim = player.animations.dr
            isMoving = true
            facing = dr
        end
        if love.keyboard.isDown("down") and love.keyboard.isDown("left") then 
            vx = -1 * player.speed 
            vy = player.speed
            player.anim = player.animations.dl
            isMoving = true
            facing = dl
        end

        -- Swing Animation


        --player.anim = player.animations.swingll

        -- Idle Animation

        if isMoving == false then
            player.anim:gotoFrame(2)
        end



        -- Collider Movement
        if player.collider then
            player.collider:setLinearVelocity(vx,vy)
        end


        player.x = player.collider:getX()
        player.y = player.collider:getY()

        slimeA.x = slimeA.collider:getX()
        slimeA.y = slimeA.collider:getY()

        -- SFX

        if player.collider:enter('Wall') then
            sounds.hitfx:play()
        end

        battleposition = {}

        battleposition.x = player.x + 120
        battleposition.y = player.y 

        enemy = {}
        enemy.hp = 0
        enemy.power = 0
        enemy.collider = {}
        enemyposition = {}
        enemyposition.y = battleposition.y + 7

        battlecam = {}

        battlecam.x = player.x
        battlecam.y = player.y


    end

    player.anim:update(dt)
    
    if slimeA.hp > 0 or slimeA.anim == slimeA.animations.death then
        slimeA.anim:update(dt)
    end
    if slimeB.hp > 0 or slimeB.anim == slimeB.animations.death then
        slimeB.anim:update(dt)
    end
    if slimeC.hp > 0 or slimeC.anim == slimeC.animations.death then
        slimeC.anim:update(dt)
    end

    

    world:update(dt)

    -- Camera


    cam:lookAt(player.x, player.y)
    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()

    if cam.x < w/camvx then
        cam.x = w/camvx
    end
    if cam.y < w/camvy then
        cam.y = w/camvy
    end

    local mapW = gameMap.overworldMap.width * gameMap.overworldMap.tilewidth
    local mapH = gameMap.overworldMap.height * gameMap.overworldMap.tileheight

    if cam.x > mapW/camvalue then
        cam.x = mapW/camvalue
    end
    if cam.y > mapH/camvalue then
        cam.y = mapH/camvalue
    end    

    -- Transitions

    if player.collider:enter('GateCave') then
        -- TODO: make smooth music transition
        level:changeLevel('cave')
        music.cave1:play()

        cam:zoomTo(1)
        
        camvalue = 2.8

        -- remove collisions

        player.collider:destroy{}

        local i =#walls
        while i > 0 do
            if walls[i] ~= nil then
                walls[i]:destroy()
            end
            table.remove(walls,i)
            i = i -1 
        end

        -- remove gates
        local i =#gates
        while i > 0 do
            if gates[i] ~= nil then
                gates[i]:destroy()
            end
            table.remove(gates,i)
            i = i -1 
        end

        -- New Collisions

        if gameMap.caveMap.layers["Walls"] then
            for i, obj in pairs(gameMap.caveMap.layers["Walls"].objects)  do
                local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
                wall:setType('static')
                wall:setCollisionClass('Wall')
                table.insert(walls, wall)
            end
        end

        -- New Gate

        if gameMap.caveMap.layers["Gates"] then
            for i, obj in pairs(gameMap.caveMap.layers["Gates"].objects) do
                local gate = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
                gate:setType('static')
                gate:setCollisionClass('GateBoss')
                table.insert(gates, gate)
            end
        end

        player.collider = world:newBSGRectangleCollider(390, 600, 20, 40, 10)
        player.collider:setCollisionClass('Player')
        player.collider:setFixedRotation(true)

        
        slimeB.collider = world:newBSGRectangleCollider(240, 300, 20, 20, 10)
        slimeB.collider:setCollisionClass('slimeB')
        slimeB.collider:setFixedRotation(true)
        slimeB.collider:setType('static')

        collider2 = {}

        collider2.x = 240
        collider2.y = 300

        slimeB.x = slimeB.collider:getX()
        slimeB.y = slimeB.collider:getY()

        
        slimeC.collider = world:newBSGRectangleCollider(440, 200, 20, 20, 10)
        slimeC.collider:setCollisionClass('slimeC')
        slimeC.collider:setFixedRotation(true)
        slimeC.collider:setType('static')

        collider3 = {}

        collider3.x = slimeC.collider:getX()
        collider3.y = slimeC.collider:getY()

        slimeC.x = slimeC.collider:getX()
        slimeC.y = slimeC.collider:getY()
    end

    -- Boss

    if player.collider:enter('GateBoss') then

        level:changeLevel('boss')

        camvx = 5
        camvy = 5

        slimeB.collider:destroy()
        slimeC.collider:destroy()

        cam:zoomTo(1.5)

        camvalue = 2

        -- remove collisions

        player.collider:destroy()
        --slime.collider:destroy()

        local i =#walls
        while i > 0 do
            if walls[i] ~= nil then
                walls[i]:destroy()
            end
            table.remove(walls,i)
            i = i -1 
        end

        -- remove gates
        local i =#gates
        while i > 0 do
            if gates[i] ~= nil then
                gates[i]:destroy()
            end
            table.remove(gates,i)
            i = i -1 
        end

        -- New Collisions

        if gameMap.bossMap.layers["Walls"] then
            for i, obj in pairs(gameMap.bossMap.layers["Walls"].objects)  do
                local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
                wall:setType('static')
                wall:setCollisionClass('Wall')
                table.insert(walls, wall)
            end
        end

        -- New Gate

        if gameMap.bossMap.layers["Gates"] then
            for i, obj in pairs(gameMap.bossMap.layers["Gates"].objects) do
                local gate = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
                gate:setType('static')
                gate:setCollisionClass('GateCave')
                table.insert(gates, gate)
            end
        end

        player.collider = world:newBSGRectangleCollider(230, 260, 20, 40, 10)
        player.collider:setCollisionClass('Player')
        player.collider:setFixedRotation(true)

        boss.collider = world:newBSGRectangleCollider(230, 150, 20, 20, 10)
        boss.collider:setCollisionClass('Boss')
        boss.collider:setFixedRotation(true)
        boss.collider:setType('static')
        boss.anim = boss.animations.spirit

        colliderBoss = {}

        colliderBoss.x = boss.collider:getX()
        colliderBoss.y = boss.collider:getY()

        boss.x = boss.collider:getX() - 16
        boss.y = boss.collider:getY() - 35

    end

    local function command()
        if enemy.hp > 0 then
            game:changeGameState('command')
        end
    end

    local function attackF()
        attack = false
        boss.anim = boss.animations.idle
        flux.to(boss, 1.64, {x = player.x - 240}):oncomplete(slimeAidle):oncomplete(command)
    end
    
    local function attackT()
        attack = true
        boss.anim = boss.animations.attack
    end

    local function bossAttack()
        flux.to(boss, 1, { x = player.x - 60}):onstart(attackT):oncomplete(attackF)
    end

    if player.collider:enter('slimeA') then
        game:changeGameState('battle')
        id = 1
        enemy = slimeA
        collider.x = collider1.x
        collider.y = collider1.y 
        player.anim = player.animations.idlell
        standard = battleposition.x
        flux.to(player, 1, { x = battleposition.x }):onstart(walkright):oncomplete(command):oncomplete(playeridle)
        flux.to(slimeA, 1, { x = battleposition.x - 240})
    end
    if player.collider:enter('slimeB') then
        game:changeGameState('battle')
        id = 2
        enemy = slimeB
        collider.x = collider2.x
        collider.y = collider2.y 
        player.anim = player.animations.idlell
        standard = battleposition.x
        flux.to(player, 1, { x = battleposition.x }):onstart(walkright):oncomplete(command):oncomplete(playeridle)
        flux.to(slimeB, 1, { x = battleposition.x - 240})
    end
    if player.collider:enter('slimeC') then
        game:changeGameState('battle')
        id = 3
        enemy = slimeC
        collider.x = collider3.x
        collider.y = collider3.y 
        player.anim = player.animations.idlell
        standard = battleposition.x
        flux.to(player, 1, { x = battleposition.x }):onstart(walkright):oncomplete(command):oncomplete(playeridle)
        flux.to(slimeC, 1, { x = battleposition.x - 240})
    end
    if player.collider:enter('Boss') then
        game:changeGameState('battle')
        id = 4
        enemy = boss
        boss.anim = boss.animations.idle
        collider.x = colliderBoss.x
        collider.y = colliderBoss.y 
        player.anim = player.animations.idlell
        standard = battleposition.x
        flux.to(player, 1, {x = battleposition.x}):onstart(walkright):oncomplete(command):oncomplete(playeridle)
        flux.to(boss , 1, { x = battleposition.x - 240})
    end

    if game.state.battle or game.state.command then

        if level.area.overworld then
            music.overworld1:stop()
        end

        if level.area.cave or level.area.boss then
            music.cave1:stop()
        end

        arrow.attack = battleposition.y + 53
        arrow.escape = battleposition.y + 78
        arrow.enemy = battleposition.y

        if (arrow.y ~= arrow.attack) and (arrow.y ~=arrow.escape) and (arrow.y ~= arrow.enemy) then
            arrow.y = arrow.attack
        end
        
        music.battle1:play()
        cam:zoomTo(2.4)
        arrow.x = battleposition.x - 265

        if love.keyboard.isDown("down") and arrow.y ~= arrow.enemy then
            arrow.y = arrow.escape
        end

        if love.keyboard.isDown("up") and arrow.y ~= arrow.enemy then
            arrow.y = arrow.attack
        end


        --enemy.x = battleposition.x - 240
        enemy.y = enemyposition.y

        cam:lookAt(battlecam.x, battlecam.y)

        
        letters.anim = letters.animations.a

        if  (love.keyboard.isDown("space") and arrow.y == arrow.escape) or enemy.hp < 1 then
            

            if enemy.hp < 1 then

                if id == 1 then
                    slimeA.anim = slimeA.animations.death
                    player.exp = 30
                    flux.to(slimeA, 1, {x = standard -  250}):oncomplete(Running)
                end
                if id == 2 then
                    slimeB.anim = slimeB.animations.death
                    player.exp = 50
                    flux.to(slimeB, 1, {x = standard -250}):oncomplete(Running)
                end
                if id == 3 then
                    slimeC.anim = slimeC.animations.death
                    player.exp = 70
                    flux.to(slimeC, 1, {x = standard - 250}):oncomplete(Running)
                end
                if id == 4 then
                    boss.anim = boss.animations.idle
                    player.exp = 70
                    flux.to(slimeC, 1, {x = standard - 250}):oncomplete(Running)
                end
                
            end


            player.collider:destroy{}
            player.collider = world:newBSGRectangleCollider(battleposition.x - 120, battleposition.y + 20 , 20, 40, 10)
            player.collider:setCollisionClass('Player')
            player.collider:setFixedRotation(true)
            
            if enemy.hp > 0 then
                enemy.x = collider.x
                enemy.y = collider.y
                game:changeGameState("running")
            end
        end

        if love.keyboard.isDown("backspace") and arrow.y == arrow.enemy then
            arrow.y = arrow.attack
        end

        if love.keyboard.isDown("space") and arrow.y == arrow.attack then
            -- Arrow on enemy
            arrow.y = arrow.enemy
        end
        
        local function slimeAendturn()
            --slimeA.x = player.x
            --flux.to(slimeA, 3 ,{x = player.x - 240}):oncomplete(command)
        end

        local function slimeAttack()
            if id == 1 then
                slimeA.anim = slimeA.animations.attack
                player.hp = player.hp - damage
                flux.to(slimeA, 1.92 , {x = battleposition.x }):ease("quadout"):after(slimeA, 1.64, {x = battleposition.x - 240}):oncomplete(slimeAidle):oncomplete(command)
            end
            if id == 2 then
                slimeB.anim = slimeB.animations.attack
                player.hp = player.hp - damage
                flux.to(slimeB, 1.92 , {x = battleposition.x }):ease("quadout"):after(slimeB, 1.64, {x = battleposition.x - 240}):oncomplete(slimeAidle):oncomplete(command)
            end
            if id == 3 then
                slimeC.anim = slimeC.animations.attack
                player.hp = player.hp - damage
                flux.to(slimeC, 1.92 , {x = battleposition.x }):ease("quadout"):after(slimeC, 1.64, {x = battleposition.x - 240}):oncomplete(slimeAidle):oncomplete(command)
            end
            if id == 4 then
                boss.anim = boss.animations.idle
                player.hp = player.hp - damage
                flux.to(boss, 1.92 , {x = player.x - 100 }):ease("quadout"):oncomplete(bossAttack)
            end
        end 

        local function enemyPhase()
            enemy.hp = enemy.hp - player.power
            arrow.y = arrow.attack
            number = love.math.random(10)

            if number < 2 then
                damage = 0
            end
            if number > 9.6 then
                damage = enemy.power * 2
            end

            if number > 2 and number < 9.6 then
                damage = enemy.power
            end

            if enemy.hp > 0 then
                flux.to(player, 1, {x = standard }):onstart(walkright):oncomplete(playeridle):oncomplete(slimeAttack)
            end
        end

        local function slimeAreturn()
            if id == 1 then
                flux.to(slimeA, 0.2, {x = standard - 240}):oncomplete(enemyPhase):oncomplete(slimeAidle)
            end
            if id == 2 then
                flux.to(slimeB, 0.2, {x = standard - 240}):oncomplete(enemyPhase):oncomplete(slimeAidle)
            end
            if id == 3 then
                flux.to(slimeC, 0.2, {x = standard - 240}):oncomplete(enemyPhase):oncomplete(slimeAidle)
            end
            if id == 4 then
                flux.to(boss, 0.2, {x = standard - 240}):oncomplete(enemyPhase):oncomplete(slimeAidle)
            end
        end

        local function attack2()
            if id == 1 then
                slimeA.anim = slimeA.animations.damaged
                flux.to(slimeA, 0.96, {x = standard - 240 }):oncomplete(slimeAreturn)
            end
            if id == 2 then
                slimeB.anim = slimeB.animations.damaged
                flux.to(slimeB, 0.96, {x = standard - 240 }):oncomplete(slimeAreturn)
            end
            if id == 3 then
                slimeC.anim = slimeC.animations.damaged
                flux.to(slimeC, 0.96, {x = standard - 240 }):oncomplete(slimeAreturn)
            end
            if id == 4 then
                boss.anim = boss.animations.idle
                flux.to(boss, 0.96, {x = standard - 240 }):oncomplete(slimeAreturn)
            end
        end

        local function attack()
            if enemy.hp > 0 then
                player.anim = player.animations.swingll
                flux.to(player, 0.96, { x = standard - 210, y = player.y}):ease("expoout"):oncomplete(playeridle):onstart(attack2)
            end
        end

        local function attackanim ()
            if enemy.hp > 0 then
                game:changeGameState('battle')
                flux.to(player, 1, { x = standard - 200, y = player.y}):onstart(walkleft):oncomplete(attack)
            end
        end

        if love.keyboard.isDown("return") and arrow.y == arrow.enemy then
            arrow.y = 0
            attackanim()
        end

    end

    if level.area.overworld and game.state.running then
        music.overworld1:play()
    end
    if (level.area.cave or level.area.boss) and game.state.running then
        music.cave1:play()
    end

    if level.area.cave then
        music.overworld1:stop()
        --music.cave1:play()
    end

    if level.area.boss then
        boss.anim:update(dt)
    end
    
    flux.update(dt)

end

function love.draw()

    -- Camera

    cam:attach()

        -- Overworld

        if level.area.overworld then
            gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Grass"])
            gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Path"])
            gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Cliff"])
            gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Cave"])
            player.anim:draw(player.spriteSheet, player.x, player.y, nil, 2, nil, 16, 16)
            if slimeA.hp > 0 or game.state.battle then
                slimeA.anim:draw(slimeA.spriteSheet, slimeA.x, slimeA.y, nil, 2, nil, 16, 16)
            end
            gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Objects"])
            --world:draw()
            --gameMap.overworldMap:drawLayer(gameMap.overworldMap.layers["Gates"])
        end

        -- Cave

        if level.area.cave then
            gameMap.caveMap:drawLayer(gameMap.caveMap.layers["Dirt"])
            gameMap.caveMap:drawLayer(gameMap.caveMap.layers["Cave"])
            player.anim:draw(player.spriteSheet, player.x, player.y, nil, 2, nil, 16, 16)
            --slimeA.anim:draw(slimeA.spriteSheet, slimeA.x, slimeA.y, nil, 2, nil, 16, 16)
            
            if slimeB.hp > 0 or game.state.battle then
                slimeB.anim:draw(slimeB.spriteSheet, slimeB.x, slimeB.y, nil, 2, nil, 16, 16)
            end
            if slimeC.hp > 0 or game.state.battle then
                slimeC.anim:draw(slimeC.spriteSheet, slimeC.x, slimeC.y, nil, 2, nil, 16, 16)
            end

            gameMap.caveMap:drawLayer(gameMap.caveMap.layers["Objects"])
            --gameMap.caveMap:drawLayer(gameMap.caveMap.layers["Gates"])
            --world:draw()
        end

        --Boss

        if level.area.boss then
            gameMap.bossMap:drawLayer(gameMap.bossMap.layers["Dirt"])
            gameMap.bossMap:drawLayer(gameMap.bossMap.layers["Cave"])
            gameMap.bossMap:drawLayer(gameMap.bossMap.layers["Objects"])

            player.anim:draw(player.spriteSheet, player.x, player.y, nil, 2, nil, 16, 16)
            
            if game.state.battle == false and game.state.command == false and boss.hp > 0 then
                boss.anim:draw(boss.spriteSheet.spirit, boss.x , boss.y, nil, 2, nil, 16, 16)
            end

            if game.state.battle and attack == false then
                boss.anim:draw(boss.spriteSheet.idle, boss.x - 30, boss.y - 20, nil, 5, 10, 16, 16)
            end
            if game.state.battle and attack == true then
                boss.anim:draw(boss.spriteSheet.attack, boss.x - 70, boss.y - 140, nil, 2.5, 2.5, 16, 16)
            end
            if game.state.command then
                boss.anim:draw(boss.spriteSheet.idle, boss.x - 30, boss.y - 20, nil, 5, 10, 16, 16)
            end
            --gameMap.bossMap:drawLayer(gameMap.bossMap.layers["Gates"])
            --world:draw()
        end

        -- Battle

        if game.state.battle then
            love.graphics.draw(battleboarder, battleposition.x - 300, battleposition.y + 20, nil, 0.8)
        end

        if game.state.command then
            love.graphics.draw(battleboarder, battleposition.x - 300, battleposition.y + 20, nil, 0.8)
            -- Attack
            letters.animations.a:draw(letters.spriteSheet, battleposition.x - 250, battleposition.y + 50)
            letters.animations.t:draw(letters.spriteSheet, battleposition.x - 235, battleposition.y + 50)
            letters.animations.t:draw(letters.spriteSheet, battleposition.x - 220, battleposition.y + 50)
            letters.animations.a:draw(letters.spriteSheet, battleposition.x - 205, battleposition.y + 50)
            letters.animations.c:draw(letters.spriteSheet, battleposition.x - 190, battleposition.y + 50)
            letters.animations.k:draw(letters.spriteSheet, battleposition.x - 175, battleposition.y + 50)
            -- Escape
            letters.animations.e:draw(letters.spriteSheet, battleposition.x - 250, battleposition.y + 75)
            letters.animations.s:draw(letters.spriteSheet, battleposition.x - 235, battleposition.y + 75)
            letters.animations.c:draw(letters.spriteSheet, battleposition.x - 220, battleposition.y + 75)
            letters.animations.a:draw(letters.spriteSheet, battleposition.x - 205, battleposition.y + 75)
            letters.animations.p:draw(letters.spriteSheet, battleposition.x - 190, battleposition.y + 75)
            letters.animations.e:draw(letters.spriteSheet, battleposition.x - 175, battleposition.y + 75)
            -- HP
            letters.animations.h:draw(letters.spriteSheet, battleposition.x - 90, battleposition.y + 50)
            letters.animations.p:draw(letters.spriteSheet, battleposition.x - 75, battleposition.y + 50)
            letters.animations.is:draw(letters.spriteSheet, battleposition.x - 60, battleposition.y + 50)
            --letters.animations.blank:draw(letters.spriteSheet, battleposition.x - 45, battleposition.y + 50)
            --letters.animations.blank:draw(letters.spriteSheet, battleposition.x - 30, battleposition.y + 50)
            --letters.animations.blank:draw(letters.spriteSheet, battleposition.x - 15, battleposition.y + 50)
            --letters.animations.blank:draw(letters.spriteSheet, battleposition.x , battleposition.y + 50)
            love.graphics.print (player.hp, battleposition.x - 30 , battleposition.y + 55)
            love.graphics.draw(letters.arrow, arrow.x, arrow.y)
            love.graphics.print("HP: " .. enemy.hp, battleposition.x - 270 , battleposition.y - 100)
            

            if damage ~= 0 then
                --love.graphics.print("DAMAGE: " ..  damage, battleposition.x - 200, battleposition.y - 100 )
            end
        end

    cam:detach()

    -- UI

    --love.graphics.print("ID: " .. id .. " boss.x: " .. boss.x , 100, 100)
    love.graphics.print("Level: " .. player.level, 750, 0 )

end