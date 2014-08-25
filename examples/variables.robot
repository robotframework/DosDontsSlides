# GOOD

*** Variables ***
${LOGIN URL}    http://localhost:7272/
${BROWSER}      Firefox
${DELAY}        0.1

*** Keywords ***
Open browser to login page
    Open browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium speed    ${DELAY}

# BAD

*** Keywords ***
Open browser to login page
    Open browser    http://localhost:7272/    Firefox
    Set Selenium speed    0.1
