*** Settings ***

Resource        resourcesupport.robot
Library        res1.py
Variables       test.yaml

*** Test Cases ***

Addition

    ${s}    Add     ${b}       ${d}
    Log     ${s}    console=true

Subtract

    ${s}    Sub     ${d}      @{a}[1]
    Log     ${s}    console=true

Python

    ${f}    m1      9       10
    Log     ${f}

