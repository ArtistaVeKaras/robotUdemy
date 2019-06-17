*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.amazon.co.uk
${Browser}  firefox

*** Test Cases ***
Logging a simple message!!
    Log  this is only a test
