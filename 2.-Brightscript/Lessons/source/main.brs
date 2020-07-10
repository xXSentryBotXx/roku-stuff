' Roku app Entry point
function main() as Void
    m.currSelection = 0
    m.maxSelection = getLessonConfig().count()
    m.port = CreateObject("roMessagePort") ' place to catch app events
    screen = CreateObject("roScreen")
    screen.setMessagePort(m.port) ' instruct screen to send events to the port
    
    print "Current Option: ", getLessonConfig()[m.currSelection.toStr()].title
    ' Roku apps need an infinite loop to work
    while(true)
        msg = m.port.getMessage()
        msgType = type(msg)
        if msgType = "roUniversalControlEvent" ' <-- might not be used anymore, Key event handling is mostly managed by SceneGraph
            handleKeyEvent(msg)
        end if
        screen.swapBuffers() ' <-- might not be used anymore
    end while
end function

function handleKeyEvent(key as Integer) as Void
    if key <= 13 ' avoid release event
        keyMap = getKeyMap()
        if key = keyMap.OK
            lessonsToLog = getLessonConfig()[m.currSelection.toStr()].lessons
            if lessonsToLog <> invalid AND lessonsToLog.count() > 0
                logLessons(lessonsToLog)
            end if
        else if key = keyMap.DOWN
            m.currSelection--
            if m.currSelection < 0
                m.currSelection = m.maxSelection - 1
            end if
        else if key = keyMap.UP
            m.currSelection++
            if m.currSelection > m.maxSelection - 1
                m.currSelection = 0
            end if    
        end if
        print ""
        print "Current Option: ", getLessonConfig()[m.currSelection.toStr()].title
    end if
end function

function getLessonConfig() as Object
    return {
        "0": { title: "0.- BrightScript Brief Description", lessons: [logRandomFacts, logMoreUsefulFacts, logReservedWords] }
        "1": { title: "1.- Variables", lessons: [logVariablesNaming] }
        "2": { title: "2.- Types", lessons: [logVariableTypes] }
        "3": { title: "3.- Operators", lessons: [logOperators] }
        "4": { title: "4.- Statements", lessons: [logStatements]}
        "5": { title: "5.- Global Functions", lessons: [logGlobalRuntimeFunctions, logGlobalUtilityFunctions, logGlobalStringFunctions, logGlobalMathFunctions]}
    }
end function

function logLessons(lessons as Object) as Void
    if lessons <> invalid AND lessons.count() > 0
        for each lesson in lessons
            print ""
            lesson()
        end for
    else
        print "ERROR: No lessons to log."
    end if
end function