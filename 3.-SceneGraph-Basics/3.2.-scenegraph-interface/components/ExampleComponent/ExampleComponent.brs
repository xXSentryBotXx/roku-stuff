function init() as void
    ' We access the interface via m.top
    top = m.top

    print top.customField ' should print "random value"

    ' observers are a way to manage changes in the app
    ' we set an observer to a field and run a function 
    ' when the field changes it's value
    top.observeField("customField", "onCustomFieldChanged")
end function

function onCustomFieldChanged(msg as object) as void
    ' SceneGraph automatically send node param (roSGNodeEvent)
    ' to the handler function
    newValue = msg.getData() ' get the new value
    print "new customField value:", newValue
end function

function testExposedFunction() as void
    print "exposed function in", m.top.id
end function