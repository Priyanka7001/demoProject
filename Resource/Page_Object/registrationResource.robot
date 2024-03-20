*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/regitrationpage.py

*** Keywords ***

Open My browser
    [Arguments]    ${Url}    ${broswer}
    Open Browser    ${Url}    ${broswer}
    Maximize Browser Window
Enter User Name
    [Arguments]    ${Name}
    Input Text    ${text_name}    ${Name}
Select country code
    [Arguments]    ${Countrycode}
    Select From List By Value    ${text_countrycode}    ${Countrycode}
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
    [Arguments]    ${Mobile Number}
    Input Text    ${text_mobilenumber}    ${Mobile Number}


