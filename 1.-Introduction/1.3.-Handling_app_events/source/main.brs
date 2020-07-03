' Roku app Entry point
sub main()
    print "Starting Channel"
    m.port = CreateObject("roMessagePort") ' place to catch app events
    screen = CreateObject("roScreen")
    screen.setMessagePort(m.port) ' instruct screen to send events to the port

    ' Roku apps need an infinite loop to work
    while(true)
        msg = m.port.getMessage()
        msgType = type(msg)
        if msgType = "roUniversalControlEvent" ' <-- might not be used anymore, Key event handling is mostly managed by SceneGraph
            print getKeyMessage(msg.toStr())
        end if
        screen.swapBuffers() ' <-- might not be used anymore
    end while
end sub

function getKeyMessage(keyCode as String) as String
    keyMsg = "roUniversalControlEvent Error"
    keyMap = getKeyMap()

    if keyMap[keyCode] <> invalid then keyMsg = keyMap[keyCode]

    return keyMsg
end function

function getKeyMap() as Object
    return {
        "0": "Back pressed"
        "100": "Back released"
        "2": "Up pressed"
        "102": "Up released"
        "3": "Down pressed"
        "103": "Down released"
        "4": "Left pressed"
        "104": "Left released"
        "5": "Right pressed"
        "105": "Right released"
        "6": "Select pressed"
        "106": "Select released"
        "7": "Instant Replay pressed"
        "107": "Instant Replay released"
        "8": "Rewind pressed"
        "108": "Rewind released"
        "9": "Fast Forward pressed"
        "109": "Fast Forward released"
        "10": "Info pressed"
        "110": "Info released"
        "13": "Play pressed"
        "113": "Play released"
    }
end function