*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Page_Object/registrationResource.robot
Variables    ../Variables/registrationVariable.py

*** Variables ***
${firstName}    Rutika
${mobileNumber}    9021657452
${passWord}    Rutika@123
${confirmPassword}    Rutika@123

*** Test Cases ***
001 Verify the Functionality of Signup Button from Myaccount Dropdown
    Visit Registration Page
    ${actualUrl}=    Get Current Page URL
    Should Contain     ${actualUrl}    signup   both URL are equal


002 Verify Registering an Account with valid User Name and Mobile Number
    Visit Registration Page
    Fill Registration Details    ${firstName}    ${mobileNumber}    ${passWord}    ${confirmPassword}
    ${pageUrl}=    Get Current Page URL
    Should Contain    ${pageUrl}    myaccount    both eual

003 Verify Registering an Account with invalid OTP
    Visit Registration Page
    Fill Registration Details    ${firstName}    ${mobileNumber}   ${passWord}   ${confirmPassword}
    ${pageUrl}=    Get Current Page URL
    Should Not Contain    ${pageUrl}    myaccount    both not eual







