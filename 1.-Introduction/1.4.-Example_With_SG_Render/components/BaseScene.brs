function init()
    m.top.setFocus(true)
    
    m.myLabel = m.top.findNode("myLabel")
    m.myLabel.font.size = 92
    m.myLabel.color = "0x72D7EEFF"
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    print key, press
    keyStatus = " released"
    if press then keyStatus = " pressed"
    m.myLabel.text = key + keyStatus
    return true
end function