*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain element
    element text should be

Login with Valid Credentials
    [Arguments] ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign in" Button

Fill "Email" Field
    [Arguments] ${Username}
    Log  Filling the Email Field ${Username}

Fill "Password" Field
    [Arguments] ${Password}
    Log  Filling the Password field ${Password}

Click "Sign in" Button
    Log  Cliking the submit button