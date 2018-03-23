*** Settings ***
Documentation       Second Pgm Doc
Library     SeleniumLibrary     implicit_wait=30
Library     OperatingSystem

*** Test Cases ***
Opening Browser

    #Append To Environemtn Variable
    Open Browser    http://google.com       gc

    Title Should Be     Google
    ${url}=     Get Locations