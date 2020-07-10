function logRandomFacts() as Void
    print "*** Random Brightscript facts ***"
    print "  - BrightScript statement syntax is not C-like; in this way it is similar to Python, Basic, Ruby or Lua."
    print "  - BrightScript objects and named entry data structures are associative arrays. In this way it is similar to JavaScript or Lua."
    print "  - BrightScript supports dynamic typing (like JavaScript), or declared types (like C or Java). "
    print "  - BrightScript is written in 100% C WTF!!! For speed, efficiency, and portability."
end function

function logMoreUsefulFacts() as Void
    print "*** Not so random Brightscript facts ***"
    print "  - BrightScript is NOT case sensitive:"
        value = 1000
        print "    --> value = VALUE ", value = VALUE ' should show true

    print ""
    print "  - Each line is a statement: "
        fruits = []
        fruits.push("Apple")
        fruits.push("Banana")
        print "    --> Number of fruits: ", fruits.count() ' should print 2

    print ""
    print "  - A colon ( : ) may be used to separate multiple statements on a single line: "
        pets = [] : pets.push("cat") : pets.push("dog") ' Not Really used, but fun fact
        print "    --> Number of pets: ", pets.count() ' should print 2
end function

function logReservedWords()
    print "*** Reserved Words ***"
    print "  - And / Box / CreateObject / Dim / Each / Else / ElseIf"
    print "  - End / EndFunction / EndIf / EndSub / EndWhile / Eval / Exit"
    print "  - ExitWhile / False / For / Function / GetGlobalAA"
    print "  - GetLastRunCompileError / GetLastRunRunTimeError"
    print "  - Goto / If / Invalid / Let / LINE_NUM / Next / Not / ObjFun"
    print "  - Or / Pos / Print / Rem / Return / Run / Step / Stop / Sub / Tab"
    print "  - Then / To / True / Type / While"
end function