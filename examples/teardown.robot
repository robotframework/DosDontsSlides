*** Test Cases ***
Valid login
    Open browser to login page
    Input user name    demo
    Input password    mode
    Submit credentials
    Welcome page should be open
    [Teardown]    Close browser
