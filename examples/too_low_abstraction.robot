*** Test Cases ***
Valid login
    Open browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium speed    ${DELAY}
    Maximize browser window
    Title should be    Login Page
    Input text    username_field    demo
    Input text    password_field    mode
    Click button    login_button
    Title should be     Welcome Page
    Location should be    ${WELCOME URL}
