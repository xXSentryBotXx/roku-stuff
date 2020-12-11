' init function: all componets run this funcion before rendering
function init()
    print "base scene initialized"
    m.global.addFields({ ' global scope values
        globalValue: "Global-Value"
    })

    m.top.id = "baseScene"

    m.top.setFocus(true)

    m.exampleComp1 = m.top.findNode("example1")
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    if press
        if key = "up" 
            print "current scope node Id:", getNodeId()
        else if key = "down"
            m.exampleComp1.customField = "New random value!!"
        else if key = "left"
            m.exampleComp1.childRectColor = "#009900FF"
        else if key = "right"
            m.exampleComp1.childRectColor = "#990000FF"
        end if
    end if

    return true
end function