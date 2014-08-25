*** Settings ***
Suite Setup       Open browser to login page
Test Template     Login with invalid credentials should fail
Test Teardown     Go to login page
Suite Teardown    Close browser

*** Test Cases ***     USER NAME        PASSWORD
Invalid user name      invalid          ${VALID PASSWORD}
Invalid password       ${VALID USER}    invalid
Both invalid           invalid          whatever
Empty user name        ${EMPTY}         ${VALID PASSWORD}
Empty password         ${VALID USER}    ${EMPTY}
Both empty             ${EMPTY}         ${EMPTY}
