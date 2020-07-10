function logOperators()
    print "*** Operators ***"
        print "  - ()	Function call, or parentheses"
        print "  - .	Dot operator"
            obj = {name: "L", age: "?"}
            print obj.name ' should print L
        
        print ""
        print "  - [ ]	Array operator"
            print obj["age"] 'should print ?
        
        print ""
        print "  - * , / , MOD Multiplicative operators"
            print 10 MOD 3 ' should print 1

        print ""
        print "  - – , +	Additive operators"
        print "  - <, >, = , <>, <=, >=	Comparisons" '<>  ---->   !==
            a = 1
            b = 2
            c = a = b ' compares then assign
            print c ' should print false
        
        print ""
        print "  - NOT	Unary logical NOT" ' !
        print "  - AND	Logical or bitwise" ' &&
        print "  - OR	Logical or bitwise" ' ||
end function