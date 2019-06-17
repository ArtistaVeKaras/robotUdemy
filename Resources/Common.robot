*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.amazon.co.uk
${Browser}  firefox

*** Keywords ***
Begin Web test
    open browser  ${URL}  ${Browser}
End Web test
    close browser
Inserting Testing Data
    log  This a good way to implement a suite setup
Cleanup Testing Data
    log  This could be for you to log something
