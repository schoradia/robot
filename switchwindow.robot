*** Settings ***

Library     SeleniumLibrary     30      30
Library     OperatingSystem

*** Test Cases ***

Switch to Window

    Open Browser     https://www.naukri.com      gc

    Select window       title: Amazon
    Maximize Browser Window
    Close Window