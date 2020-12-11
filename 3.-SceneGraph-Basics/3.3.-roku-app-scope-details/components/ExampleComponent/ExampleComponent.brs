function init() as void
    ' the value below cn be used anywhere in this component
    m.componentScopeValue = "Example Component"


    m.top.observeField("customField", "onCustomFieldChanged")
end function

function onCustomFieldChanged(msg as object) as void
    print "current scope node Id:", getNodeId()
end function

function testFunctionScope() as void
    value = 12 ' this value can only be used in this function
    print "function scope value: ", value
end function

function testFileScope() as void
    print "file scope value: ", m.componentScopeValue
end function

function testGlobalScope() as void
    print "global scope value: ", m.global.globalValue
end function

function testComponentScope() as void
    print "component scope value: ", m.top.componentValue
end function

function testExposedFunction() as void
    print "exposed function in", m.top.id, m.componentScopeValue
end function