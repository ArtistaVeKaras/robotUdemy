*** Settings ***


*** Test Cases ***
Test case 1
    Do Something
    Do Something Else

Test case 2
    Try Something
    Try Something Else

*** Keywords ***
Do Something
    log   Do Something Else
Do Something Else
    log  I am doing something else
Try Something
    log  Try Something Else
Try Something Else
    log  I am trying something else