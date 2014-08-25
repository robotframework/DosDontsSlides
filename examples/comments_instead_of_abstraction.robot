*** Test Cases ***
Valid login
    # Open browser to login page
    Open browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium speed    ${DELAY}
    Maximize browser window
    Title should be    Login Page
    # Input user name
    Input text    username_field    demo
    # Input password
    Input text    password_field    mode
    # Submit credentials
    Click button    login_button
    # Welcome page should be open
    Title should be     Welcome Page
    Location should be    ${WELCOME URL}
