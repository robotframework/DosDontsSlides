*** Settings ***
Test Template    Login with invalid credentials should fail

*** Test Cases ***     USER NAME        PASSWORD
Invalid user name      invalid          ${VALID PASSWORD}
Invalid password       ${VALID USER}    invalid
Both invalid           invalid          whatever
Empty user name        ${EMPTY}         ${VALID PASSWORD}
Empty password         ${VALID USER}    ${EMPTY}
Both empty             ${EMPTY}         ${EMPTY}
