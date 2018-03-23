*** Settings ***
Documentation    Binary Output
Default Tags        d1

*** Test Cases ***
Test title
    [Tags]      t1
    ${x}=       Convert To Binary       10
    Log     ${x}

 Test title1
    [Documentation]     Octal
    ${x}=       Convert To Octal        10
    Log     ${x}
    Log     getTime