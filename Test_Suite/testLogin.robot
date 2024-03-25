*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Page_Object/loginpageResources.robot
Variables    ../Variable/loginpageVariable.py


*** Test Cases ***
001 Verify the Functionality of Login Button
    Visit The Login Page
    ${actualUrl}=    Get Current Page URL
    Should Contain     ${actualUrl}    login   both URL are equal

