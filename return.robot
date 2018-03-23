*** Test Cases ***

Addition

    ${s}    Add     1       2
    Log     ${s}    console=true

Subtract

    ${s}    Sub     4       3
    Log     ${s}    console=true

*** Keyword ***
Add
        [Arguments]      ${x}    ${y}
        ${z}    Evaluate        ${x} + ${y}
        [Return]        ${z}

Sub
        [Arguments]      ${x}    ${y}
        ${z}    Evaluate        ${x} - ${y}
        [Return]        ${z}