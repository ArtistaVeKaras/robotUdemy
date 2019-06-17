*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#upper case variables are global variables
#and lower case variables are local variables
${SEARCH_TERM}  ferrari
${search_field}  id=twotabsearchtextbox
${click_nav_button}  css=.nav-search-submit > input:nth-child(2)

*** Keywords ***
Search For Product
    input text  ${search_field}  ${SEARCH_TERM}
Click button To Search
    click button    ${click_nav_button}
Click Image
   click link  Try Prime
