*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/regitrationpage.py
Resource    commonResources.robot
Variables    Variables/registrationVariable.py

*** Keywords ***

Visit Registration Page
    Open My Browser
    Log To Console    visiting registration page
    Click on My Account Dropdown
    Sleep    2s
   

Fill Registration Details
    [Arguments]    ${firstName}    ${mobileNumber}    ${passWord}    ${confirmPassword}
    Enter User Name    ${firstName}
    Enter A Mobile Number    ${mobileNumber}
    Sleep    30s
    Click On Continue Button
    Unselect subscribe checkbox
    Sleep    20s
    Enter Password    ${passWord}
    Enter Confirm Password    ${confirmPassword}
    Click On Signup Button

    
Click on My Account Dropdown
    Wait Until Page Contains Element    ${text_myaccountarrow}    40s
    Mouse Over     ${text_myaccountarrow}
    Click Element    ${text_register}

Enter User Name
    [Arguments]    ${firstName}
    Input Text    ${text_name}    ${firstName}

Select country code
    [Arguments]    ${countryCode}
    Select From List By Value    ${text_countrycode}    ${countryCode}

Click on continue button
    Click Button    ${text_continuebutton}

Click on exixting User
    Click Button    ${text_existinguser}
    
Click on google icon
    Click Button    ${text_google}

Click on subscribe checkbox
    Select Checkbox    ${text_unsubscribe}

Unselect subscribe checkbox
    Unselect Checkbox       ${text_unsubscribe}

Enter a Mobile Number
    [Arguments]    ${mobileNumber}
    Input Text    ${text_mobilenumber}    ${mobileNumber}

Enter Password
    [Arguments]    ${passWord}
    Input Text    ${text_password}    ${passWord}

Enter Confirm Password
    [Arguments]    ${confirmPassword}
    Input Text    ${text_confirmpassword}    ${confirmPassword}

Click On Signup Button
    Click Element      ${text_signup}