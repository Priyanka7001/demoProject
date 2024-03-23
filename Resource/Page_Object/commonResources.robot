*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/regitrationpage.py
Variables    ../Variables/qaEnvVar.py

*** Keywords ***
Open My Browser
    [Arguments]    ${Url}=${URL}   ${broswer}=chrome
    Open Browser    ${Url}    ${broswer}
    Maximize Browser Window

Close My Browser
    Close All Browsers
   
Get Current Page URL
    ${currentUrl}=    Get Location
    [Return]    ${currentUrl}


