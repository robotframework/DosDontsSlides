*** Test Cases ***
Valid login
    Given login page is open
    When user "demo" logs in with password "mode"
    Then welcome page should be open
