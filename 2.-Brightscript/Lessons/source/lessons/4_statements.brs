function logStatements() as Void
    print "*** Statements ***"
    print "  - Statement list: "
    print "    - If / Then / Else If / Else / End If"
    print "    - For / To / End For / Step / Exit For"
        forExample()
    print "    - For Each / In / End For / Exit For"
    print "    - While / End While / Exit While"
    print "    - Function / End Function / As / Return"
    print "    - Print"
    print "    - Rem (or ')" 
        REM I'm comment!
          ' Me too.
    print "    - Goto" ' NOT used
    print "    - Dim" 'used to create arrays, different to dim in BASIC
        DIM array[5]
        print array ' prints an array with no elements
    
    print ""
    print "    - End"
    print "    - Stop"
end function

function ifExample() as void
    flag = true
    num = 10
    if flag then print "oneline if statement" ' short if

    if num = 5 then ' then keyword is optional for non short if
        ' not here
    else if num = 12
        ' not here either
    else
        print "fell in else clause!"
    end if

    ' Recommendation for nested objects:
    ' Brightscript has bad error handling,
    ' I recommend to test for invalid on each 
    ' nested object before comparing the value
    ' if movie <> invalid AND movie.director <> invalid AND movie.director.age <> invalid AND movie.director.age > 55  
end function

function forExample() as Void
    for i = 0 to 10 ' step 2
        ' 10 cycles
        print i
    end for
    
    numbers = [1, 2, 3, 4, 5]
    for each num in numbers
        print num
        if num = 3
            exit for ' finish for in third iteration
        end if
    end for
end function