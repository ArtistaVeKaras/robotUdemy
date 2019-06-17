*** Settings ***
Documentation  This is one documentation into about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    open browser  http://www.amazon.co.uk  firefox
    wait until page contains  Vouchers
    input text  name=field-keywords  Ferrari 458
    click button  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
    wait until page contains  results for "Ferrari 458"
    click element  xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    click button  name=submit.buy-now
    sleep  5s
    page should contain  Sign in
    sleep  3s
    go back
    close browser


