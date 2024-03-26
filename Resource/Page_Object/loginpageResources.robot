*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/loginPage.py
Resource    commonResources.robot

*** Keywords ***
Visit the Login Page
    Open My Browser
    Click On MyAccount Dropdown And Click On Login
    Sleep    2s

Fill Login Page Details
    [Arguments]    ${mobileNumber}    ${passWord}
    Enter User Mobile Number   ${mobileNumber}
    Enter User Passowrd   ${passWord}
    Click On Login Button

Click On MyAccount Dropdown and Click on Login
    Wait Until Page Contains Element    ${text_myaccountarrow}    40s
    Mouse Over    ${text_myaccountarrow}
    Click Element    ${text_login}

Enter User Mobile Number
    [Arguments]    ${mobileNumber}
    Input Text    ${text_mobile}    ${mobileNumber}

Enter User Passowrd
    [Arguments]    ${passWord}
    Input Text    ${text_password}    ${passWord}

Click on Login Button
    Click Element      ${text_loginbutton}

Click on Forget Your Password
    Click Element    ${text_forgotpassword}

Click on Request OTP Button
    Click Element    ${text_requestotp}

Click on Google Icon
    Click Element    ${text_googleicon}

Click on New to Bookswagon? Sign up
    Click Element    ${text_signup}
