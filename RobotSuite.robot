*** Settings ***

Documentation       This suite has register functionality
Force Tags      register        regression
Library     SeleniumLibrary     30      30
Library     OperatingSystem
Test Template       Negative Register Scenario
Suite Setup      Open my Browser
Suite Teardown   Close All Browsers

*** Test Cases ***
Test1       Swapnil1     Choradia    swapnil.choradia@yahoo.com     Welcome123  ${EMPTY}
Test2       Swapnil     Choradia1    swapnil.choradia1@yahoo.com     ${EMPTY}       Welcome-123

*** Keywords ***

Open My Browser



    Append To Environment Variable      PATH        ${CURDIR}
    Open Browser        http://magento.com      gc
    Maximize Browser Window
    Click Element       link: MY ACCOUNT
   Click Element        //span[text()='Register']
Negative Register Scenario
        [Arguments]      ${fname}       ${lname}        ${email}        ${pwd}      ${cpwd}

   Input text   id:firstname        ${fname}
   Input text   id:lastname         ${lname}
   Input text   id:email_address        ${email}
    Select From List by Index        name:company_type       3
   Select From List By Label        name:individual_role       Technical/developer
   Input Password       name:password   ${pwd}
   Input password       name:confirmation   ${cpwd}
   Select Frame     //iframe[@role='presentation']
   Click Element        class:recaptcha-checkbox-checkmark
   Unselect Frame
   Select Checkbox      id:agree_terms
Close All Browsers
   Close All Browsers
