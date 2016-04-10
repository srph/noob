[gameStart]
    let guessMe = int(rnd(1)*100) + 1
    cls
    print "The Game"
    input "Press [Enter] to play the game..."; dummyVariable
    input "..."; dummyVariable
    print "Choose between numbers between"
    print "1 to 100"
    print

[ask]
    input "Okay, what is your guess? "; guess
    let count = count + 1
    if guess = guessMe then goto [win]
    if guess < guessMe then print "Guess higher."
    if guess > guessMe then print "Guess lower."
    goto [ask]

[win]
    print "You win! It took "; count; "guesses."
    let count = 0
    input "Play again? (Y/N) "; play$
    if instr("YESyesYes", play$) > 0 then goto [gameStart]
    if instr("NOnoNo", play$) > 0 then goto [end]

[end]
    print "Press ALT-F4 to close this window."



