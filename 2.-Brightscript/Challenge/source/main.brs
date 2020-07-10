' Esneik challenge:
' - Implement automatic movement.
' - Implement collision detection.
' - Implement snake tail. 

' Roku app Entry point
sub main()
    m.port = CreateObject("roMessagePort") ' place to catch app events
    screen = CreateObject("roScreen")
    screen.setMessagePort(m.port) ' instruct screen to send events to the port

    m.game = getSnakeGame(screen)
    m.player = m.game.player
    m.food = m.game.food

    ' Roku apps need an infinite loop to work
    while(true)
        msg = m.port.getMessage()
        msgType = type(msg)
        if msgType = "roUniversalControlEvent" ' <-- might not be used anymore, Key event handling is mostly managed by SceneGraph
            handleKeyEvent(msg)
        end if
        screen.swapBuffers() ' <-- might not be used anymore
        draw(screen) ' statements in this function are rarely (or not) used, using this for the challenge only
    end while
end sub

function handleKeyEvent(key as Integer) as Void
    keyMap = getKeyMap()
    if key = keyMap.LEFT
        m.player.x = m.player.x - m.game.sizeRatio
        if m.player.x < m.game.xBoundary
            m.player.x = m.game.width - 10 ' need to subtract half of the sizeRatio
        end if
    else if key = keyMap.RIGHT
        m.player.x = m.player.x + m.game.sizeRatio
        if m.player.x > m.game.width
            m.player.x = m.game.xBoundary
        end if
    else if key = keyMap.UP
        m.player.y = m.player.y - m.game.sizeRatio
        if m.player.y < m.game.yBoundary
            m.player.y = m.game.height - 10 ' need to subtract half of the sizeRatio
        end if
    else if key = keyMap.DOWN
        m.player.y = m.player.y + m.game.sizeRatio
        if m.player.y > m.game.height
            m.player.y = m.game.yBoundary
        end if
    end if
end function

function draw(screen)
    screen.Clear(m.game.background)
    screen.drawRect(m.food.x, m.food.y, m.game.sizeRatio, m.game.sizeRatio, m.food.color)
    screen.drawRect(m.player.x, m.player.y, m.game.sizeRatio, m.game.sizeRatio, m.player.color)
end function

function getSnakeGame(screen)
    return {
        width: screen.GetWidth() - 50
        height: screen.getHeight() - 40
        xBoundary: 20
        yBoundary: 10
        player: {
            speedX: 0
            speedY: 0
            x: 20 ' somehow my screen is losing these pixels
            y: 10 ' somehow my screen is losing these pixels
            color: &h662D91FF
        }
        food: {
            x: 20 + FIX(RND((screen.GetWidth() - 50)) / 20) * 20 ' math stuff
            y: 10 + FIX(RND((screen.getHeight() - 40)) / 20) * 20 ' more math stuff
            color: &h0000FFFF
        }
        tail: []
        sizeRatio: 20
        background: &h00000000
    }
end function 