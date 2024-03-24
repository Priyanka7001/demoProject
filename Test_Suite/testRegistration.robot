*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Page_Object/registrationResource.robot
Variables    ../Variables/registrationVariable.py



*** Test Cases ***
001 Verify the Functionality of Signup Button from Myaccount Dropdown
    Visit Registration Page
    ${actualUrl}=    Get Current Page URL
    Should Contain     ${actualUrl}    signup   both URL are equal


002 Verify Registering an Account with valid User Name and Mobile Number
    Visit Registration Page
    Fill Registration Details    Rutika    9021657453    Rutika@123    Rutika@123
    ${pageUrl}=    Get Current Page URL
    Should Contain    ${pageUrl}    myaccount    both eual

003 Verify Registering an Account with invalid OTP
    Visit Registration Page
    Fill Registration Details    Rutika    8007022590   Rutika@123    Rutika@123
    ${pageUrl}=    Get Current Page URL
    Should Not Contain    ${pageUrl}    myaccount    both not eual







