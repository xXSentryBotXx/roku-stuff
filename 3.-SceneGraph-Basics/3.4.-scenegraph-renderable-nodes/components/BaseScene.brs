' init function: all componets run this funcion before rendering
function init()
    print "base scene initialized"

    m.top.id = "baseScene"

    m.top.setFocus(true)
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    if press
        if key = "up"
        else if key = "down"
        else if key = "left"
        else if key = "right"
        end if
    end if

    return true
end function