*** Settings ***
Library     ExcelLibrary

*** Test Cases ***

Creat Excel
    Given Create Excel Document      data3.xlsx
    When Write Excel Cell        1       1       Swapnil
    Then Save Excel Document     data3.xlsx
