*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Page_Object/registrationResource.robot

*** Variables ***
${Url}    https://www.bookswagon.com/login?q=signup
${broswer}    chrome
${Name}    Rutika
${Countrycode}    United States +1


*** Test Cases ***
Verify the functionality of registration page
    Open My browser    ${Url}    ${broswer}
    Enter User Name    ${Name}
    Sleep    3 second
    Click On Continue
    Sleep    5 second
