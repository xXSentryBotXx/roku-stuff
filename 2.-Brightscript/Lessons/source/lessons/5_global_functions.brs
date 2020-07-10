function logGlobalRuntimeFunctions() as Void
    print "*** Runtime functions ***"
    print "   - CreateObject(classname as String, [optional parameters]) as Object"
    print "   - Type(variable, [optional version]) as String"
    print "   - GetGlobalAA() as Object"
end function

function logGlobalUtilityFunctions() as Void
    print "*** Utility functions ***"
    print "   - Sleep(milliseconds as Integer) as Void"
    print "   - Wait(timeout as Integer, port as Object) as Object"
    print "   - ReadAsciiFile(filepath as String) as String"
        ' jsonText = ReadAsciiFile("pkg:/locale/config.json")
    
    print "   - WriteAsciiFile(filepath as String, text as String) as Boolean"
        ' WriteAsciiFile("tmp:/config.txt", "random text")

    print "   - RunGarbageCollector() as Object"
    print "   - ParseJson(jsonString as String) as Object"
        ' jsonObj = ParseJson(jsonText)
    
    print "   - FormatJson(json as Object, flags = 0 as Integer) as String"
end function

function logGlobalStringFunctions() as Void
    print "*** String functions ***"
    print "   - UCase(s as String) as String"
    print "   - LCase(s as String) as String"
    print "   - Instr(start as Integer, text as String, substring as String) as Integer"
    print "   - Len(s as String) as Integer"
end function

function logGlobalMathFunctions() as Void
    print "*** Math functions ***"
    print "   - Abs(x as Float) as Float"
    print "   - Atn(x as Float) as Float"
    print "   - Cdbl(x as Integer) as Float"
    print "   - Cint(x as Float) as Integer"
    print "   - Cos(x as Float) as Float"
    print "   - Csng(x as Integer) as Float"
    print "   - Exp(x as Float) as Float"
    print "   - Fix(x as Float) as Integer"
    print "   - Int(x as Float) as Integer"
    print "   - Log(x as Float) as Float"
    print "   - Rnd(range as Integer) as Integer"
    print "   - Rnd(0) as Float"
    print "   - Sgn(x as Float) as Integer"
    print "   - Sgn(x as Integer) as Integer"
    print "   - Sin(x as Float) as Float"
    print "   - Sqr(x as Float) as Float"
    print "   - Tan(x as Float) as Float"
end function