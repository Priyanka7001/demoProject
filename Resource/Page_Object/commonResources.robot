*** Settings ***
Library    SeleniumLibrary
Variables    Variable/qaEnvVar.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}=${URL}   ${browser}=chrome
    Open Browser      ${URL}      ${browser}
    Maximize Browser Window

Close My Browser
    Close All Browsers
   
Get Current Page URL
    ${currentUrl}=    Get Location
    [Return]    ${currentUrl}


