*** Settings ***

*** Test Cases ***
user attempts to log in
    Given  the user is not logged in
    And  user searches for product
    when  the user attempts to log in
    Then  the user should be able to log in