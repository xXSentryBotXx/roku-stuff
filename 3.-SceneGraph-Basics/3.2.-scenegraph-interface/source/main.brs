' Roku app Entry point
sub main()
    print "Starting Channel"
    m.port = CreateObject("roMessagePort") ' place to catch app events
    screen = CreateObject("roSGScreen") ' SceneGraph Screen!!
    screen.setMessagePort(m.port) ' instruct screen to send events to the port

    ' Create a scene based on /components/BaseScene.xml
    scene = screen.CreateScene("BaseScene")

    screen.show()

    ' Roku apps need an infinite loop to work
    while(true)
        msg = m.port.getMessage()
        msgType = type(msg)

        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub