*** Test Cases ***
Valid login
    Open browser to login page
    Input user name    demo
    Input password    mode
    Submit credentials
    Welcome page should be open

Change password
    Open user management
    Select user    demo
    Change password    mode    newpwd
    Password changed successfully message should be shown

Login with new password
    Log out
    Input user name    demo
    Input password    newpwd
    Submit credentials
    Welcome page should be open
