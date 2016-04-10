[name]
    a$ = "Kier"
    b$ = "Gwapo"
    c$ = "Brian"
    d$ = "Pangit"
    z$ = "..."
    input "What is your first name? "; firstName$
    if firstName$ = "" then goto [blank]
    input "What is your last name? "; lastName$
    if lastName$ = "" then goto [blank]
    fullName$ = firstName$ + " " + lastName$
    if firstName$ = lastName$ then goto [same]
    if firstName$ = a$ and lastName$ = b$ then goto [same]
    print "Your fullname is... "; fullName$
    goto [end]

[same]
    print
    print "The first name and last name you entered is similar,"
    print "Please change your entered name."
    print
    input "Press [Enter] to continue..."; dummyVariable
    goto [name]

[blank]
    print
    print "You entered blank value,"
    print "Please re-enter."
    print
    input "Press [Enter] to continue..."; dummyVariable
    print
    goto [name]


[end]

