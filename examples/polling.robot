# GOOD

*** Keywords ***
Download results
    [Arguments]    ${path}
    Initiate results downloading    ${path}
    Wait until created    ${path}

# VERY BAD

*** Keywords ***
Download results
    [Arguments]    ${path}
    Initiate results downloading    ${path}
    Sleep    10 seconds
