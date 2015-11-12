def runWorld(initState, updateDisplay, updateState, handleEvent, endState, frameRate):
    done = False
    currentState = initState
    while not done:
        updateDisplay(currentState)
        pg.display.update()
        clock.tick(frameRate)
        currentState = updateState(currentState)
        if (endState(currentState)):
            done = True
        for even () pg.event.get():
            if (event.type == pg.QUIT):
                done = True
            else: 
