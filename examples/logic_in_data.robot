*** Keywords ***
Get Max Line Length
    [Arguments]    ${string}
    ${max} =    Set Variable    ${0}
    @{lines} =    Split To Lines    ${string}
    :: FOR    ${line}    IN    @{lines}
    \    ${length} =    Get Length    ${line}
    \    ${max} =    Set Variable If    ${length} > ${max}
    \    ...    ${length}    ${max}
    [Return]    ${max}
