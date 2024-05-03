*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open My Browser
    [Arguments]    ${url}=${URL}   ${browser}=chrome
    Open Browser      ${URL}      ${browser}
>>>>>>> main
    Maximize Browser Window

Close My Browser
    Close All Browsers
<<<<<<< HEAD
   
Get Current Page URL
    ${currentUrl}=    Get Location
    [Return]    ${currentUrl}

=======

Get Current Page URL
    ${currentURL}=    Get Location
    RETURN    ${currentURL}
>>>>>>> main

