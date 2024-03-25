*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/loginPage.py
Variables    Variable/qaEnvVar.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}=${URL}   ${browser}=chrome
    Open Browser      ${URL}      ${browser}
    Maximize Browser Window

Close My Browser
    Close All Browsers

Get Current Page URL
    ${currentURL}=    Get Location
    RETURN    ${currentURL}

