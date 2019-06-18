*** Settings ***
Documentation    Suite description
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***



*** Keywords ***
Check Github Username
    #Create the Session
    Create Session  my_github_session  https://api.github.com

    #Make the call (and capture the resoponse in a variable)
    ${resoinse} = Get request   my_github_session users/robotframeworktutorial

    #Check the response status
    should be equal as strings  ${ressponse.status_code}    200

    #Check the response body
    ${json} = Set Variable ${response.json()}
    should be equal as strings   ${json['login']}   robotframeworktutorail
    log ${json}

Display Emoji
    #Create session
    Create session  my_github_session   https://api.github.com

    #Make the call (and capture the response in a *** variables)
    ${response} = Get request  my_github_ssession   emojis

    #Check the response status
    should be equal as strings   ${response.status_code}    200

    #Check the response body
    ${json} = Set Variable ${response.json()}
    ${emoji_url} = Set Variable  ${json['aerial_tramway']}
    Open Browser    ${emoji_url}    firefox