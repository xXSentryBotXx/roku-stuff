function logVariableTypes() as Void
    print "*** Types ***"
    print "  - Boolean – Either true or false."
        isBool = true
    print "  - Integer – A 32-bit signed integer number."
        age = 25
        speed% = 12
        age = "pepsi" 
        hexValue = &h662D91FF
        print "", age, speed%, hexValue
        print "    speed% = ""random"" Would throw an error"

    print ""
    print "  - LongInteger – A 64-bit signed integer number. This is available in Roku OS 7.0 or above."
        height& = 12
        print "    type:", type(height&)

    print ""
    print "  - Float – A 32-bit IEEE floating point number."
        height! = 12
        print "    type:", type(height!)
    
    print ""
    print "  - Double – A 64-bit IEEE floating point number."
        height# = 12
        print "    type:", type(height#)
    
    print ""
    print "  - String – A sequence of Unicode characters."
        stringTyped$ = "I'm a typed string"
        stringVar = "string"
        print "", stringVar, type(stringVar)
        stringVar = stringVar + "Object"
        print "", stringVar, type(stringVar) ' Type has changed!
    
    print ""
    print "  - Object – A reference to a BrightScript component."
        array = [1,2,3]
        assocArray = {a: 1, b: 2, c: 3}
        print "    Array: ", type(array)
        print "    Associative Array: ", type(assocArray) ' it's just a like JS Object
    
    print ""
    print "  - Function: "
        funcVar = exampleFunction
        print "    funcVar()", funcVar()

    print ""
    print "  - Invalid – The type invalid has only one value: invalid." ' pretty much like null in JS
end function

function exampleFunction() as String
    return "I'm an example function"
end function