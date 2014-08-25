# BAD

*** Variables ***
${USERNAME FIELD}    username_field

*** Keywords ***
Input username
    [Arguments]    ${username}
    Input text    ${USERNAME FIELD}    ${username}

# GOOD

*** Keywords ***
Input username
    [Arguments]    ${username}
    Input text    username_field    ${username}

