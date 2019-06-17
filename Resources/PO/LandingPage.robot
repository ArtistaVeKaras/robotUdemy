*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    go to   hppt://www.amazon.com

Verify page Load
    wait until page contains  https://www.amazon.co.uk/
