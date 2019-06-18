*** Settings ***
Documentation    Suite description
Documentation   these are some api tests
Resource  ../Resources/API/github.robot

#many ways to run your scripts
#robot -d resuls/api tests

*** Variables ***


*** Test Cases ***
Making a simple REST API call
    [Tags]    API
    github.check github username

Display emoji from Github
    [Tags]  API
    Display Emogi