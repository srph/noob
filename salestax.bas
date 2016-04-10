[tax]
    print "Input a number of desired amount to be sended: "; amount
    input "(Press [Enter] for help) ? "; amount
    let tax = amount * 0.05
    if amount = 0 then goto [zeroSyntax]
    if amount < 2 then goto [one]
    if amount > 100000 then goto [reinput]
    print
    print "Tax value: "; tax; " The total amount: "; amount - tax
    print
    goto [tax]

[zeroSyntax]
    print
    print "This program determines the amount you will receive minus tax"
    print "Due on an amount you will enter, it computes"
    print "the true amount you will receive and the tax subtracted."
    print
    input "Press [Enter] to continue"; dummyVariable
    print
    goto [tax]

[one]
    print
    print "Your inputted number is too low!"
    print
    input "Press [Enter] to continue"; dummyVariable
    print
    goto [tax]

[reinput]
    print
    print "You inserted a value too high!"
    print
    input "Press [Enter] to continue"; dummyVariable
    print
    goto [tax]

