function logVariablesNaming() as Void
    print "*** Variable Naming ***"
    print "  - Must start with an alphabetic character (a – z) or the symbol '_' (underscore)"
    print "  - May consist of alphabetic characters, numbers, or the symbol '_' (underscore)"
    print "  - Are not case sensitive"
    print "  - May be of any length"
    print "  - May not use a reserved word"
    print "  - Valid variable names: name, RANDOM_CONSTANT, varWithNumber10"
    name = "Luis"
    RANDOM_CONSTANT = "Random Luis"
    varWithNumber10 = 12
    ' should not popup errors
end function