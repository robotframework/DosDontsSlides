# GOOD

*** Test Cases ***
Withdraw from account
    Withdraw from account    $50
    Withdraw should have succeeded

# OK(ish)

*** Test Cases ***
Withdraw from account
    ${status} =   Withdraw from account    $50
    Withdraw should have succeeded     ${status}
