*** Settings ***

*** Variables ***
#this is a scaler variable only holds a single value
${My_variable}  this is just some input data
#this is a list *** variables *** holds multiple values
@{My_variable1} =  Claudio  Ben  Paul

*** Test Cases ***
testing variables test
    [Documentation]  this represents the tutorial from robotframework
    log  ${my_variable}
    ${my_new_variable} =  Set Variable  My new variable.....
testing the some variable
    log  ${my_variable}

list variables
    [Tags]  Var
    log  @{My_variable1}[0]
    log  @{My_variable1}[1]
    log  @{My_variable1}[2]

