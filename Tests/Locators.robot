*** Settings ***
#enter in the command line the following script robot -d Results Tests/Locators.robot
Documentation  This is my first test suite!!
Resource   ../Resources/Amazon.robot
Resource   ../Resources/Common.robot
Resource   ../Resources/PO/LandingPage.robot
Test Setup  Begin Web test
Test Teardown  End Web test
#ignpre the test suite for now
#Suite Setup  Inserting Testing Data
#Suite Teardown  Cleanup Testing Data

*** Test Cases ***
User should be able to search product on Amazon website
    [Documentation]  This is smoke test...!
    [Tags]  Smoke
    LandingPage.Verify page Load
    Amazon.Search For Product
    sleep  3s
    Amazon.Click button To Search
    sleep  3s
    Amazon.Click Image
    verify page load

