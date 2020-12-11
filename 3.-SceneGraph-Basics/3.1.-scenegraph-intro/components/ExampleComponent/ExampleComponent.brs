function init() as void
    print "example component initialized"
    ' init function is run automatically when 
    ' the component is instanciated or declared within
    ' another component's xml file. commonly used to initialize 
    ' values or observers
end function

function testFunction() as void
    print "function!"
end function