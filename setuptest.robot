*** Settings ***

Test Setup      Open My Browser
Test Teardown   Close All Browser
Library     SeleniumLibrary     30      30
Library     OperatingSystem

*** Test Cases ***

Register
    [Teardown]      NONE
   Click Element       link: MY ACCOUNT
   Click Element        //span[text()='Register']
    Input text   id:firstname        Swapnil
   Input text   id:lastname         Choradia
   Input text   id:email_address        a.b@com
    Select From List by Index        name:company_type       3
   Select From List By Label        name:individual_role       Technical/developer
   Input Password       name:password   Abcd-123
   Input password       name:confirmation   Abcd-123
   Select Frame     //iframe[@role='presentation']
   Click Element        class:recaptcha-checkbox-checkmark
   Unselect Frame
   Select Checkbox      id:agree_terms

Login
    [Setup]     Go Back
    Input Text      id:email        a@bcd.com
    Input Password      id:pass     Welcome-123
    Click Element       id:send2

*** Keywords ***
Open My Browser

    Append To Environment Variable      PATH        ${CURDIR}
    Open Browser        http://magento.com      gc
    Maximize Browser Window

Close All Browser
    Close All Browsers