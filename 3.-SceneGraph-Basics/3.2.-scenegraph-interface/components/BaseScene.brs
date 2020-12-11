' init function: all componets run this funcion before rendering
function init()
    print "base scene initialized"
    ' m.top references the current component in the current context
    ' in this case m.top references BaseScene component, it's commonly used
    ' to set observers and access child nodes/components 

    m.top.setFocus(true) ' setting focus to the scene to handle onKeyEvent

    m.exampleComp1 = m.top.findNode("example1")

    m.exampleComp2 = CreateObject("roSGNode", "ExampleComponent")
    m.exampleComp2.id = "example2"
    m.exampleComp2.childRectTranslation = [510, 0]

    m.top.appendChild(m.exampleComp2)
end function


' onKeyEvent function is handled automatically if the component has focus or is in focus chain.
' the behavior is similar to bubbling in web, sending the event from child node to parent node until 
' it reaches the root (BaseScene in this example) with the exception that if any child returns true
' for onKeyEvent, the propragation is stopped.
function onKeyEvent(key as String, press as Boolean) as Boolean
    if press
        if key = "up" 
            ' calling a function in ExampleComponent interface
            m.exampleComp1.callFunc("testExposedFunction")
            m.exampleComp2.callFunc("testExposedFunction")
        else if key = "down"
            m.exampleComp1.customField = "New random value!!"
        else if key = "left"
            m.exampleComp1.childRectColor = "#009900FF"
        else if key = "right"
            m.exampleComp2.childRectColor = "#990000FF"
        end if
    end if

    return true
end function