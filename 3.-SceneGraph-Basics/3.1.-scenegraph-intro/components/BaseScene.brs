' init function: all componets run this funcion before rendering
function init()
    print "base scene initialized"
    ' m.top references the current component in the current context
    ' in this case m.top references BaseScene component, it's commonly used
    ' to set observers and access child nodes/components 

    m.top.setFocus(true) ' setting focus to the scene to handle onKeyEvent
    
    ' Roku's "DOM manipulation"  xD
    m.childLabel1 = m.top.findNode("childLabel1")
    m.childLabel1.font.size = 20
    m.childLabel1.color = "#335599FF"

    m.childLabel2 = m.top.findNode("childLabel2")
    m.childLabel2.font.size = 20
    m.childLabel2.color = "#335599FF"
end function


' onKeyEvent function is handled automatically if the component has focus or is in focus chain.
' the behavior is similar to bubbling in web, sending the event from child node to parent node until 
' it reaches the root (BaseScene in this example) with the exception that if any child returns true
' for onKeyEvent, the propragation is stopped.
function onKeyEvent(key as String, press as Boolean) as Boolean
    print key, press
    keyStatus = " released"
    if press then keyStatus = " pressed"
    print key + keyStatus
    return true
end function