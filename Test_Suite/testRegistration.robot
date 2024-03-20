*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Page_Object/registrationResource.robot

*** Variables ***
${Url}    https://www.bookswagon.com/login?q=signup
${broswer}    chrome
${Name}    Rutika
${Countrycode}    US +1
${Mobile Number}    9021657453


*** Test Cases ***
registrationButtonTest
    Open My browser    ${Url}    ${broswer}
    Enter User Name    ${Name}
    Sleep    3 second
    Click On Continue Button
    Sleep    5 second

RegistrationTest
    Open My Browser    ${Url}    ${broswer}
    Enter User Name    ${Name}
    Select Country Code   ${Countrycode}
    Enter A Mobile Number    ${Mobile Number}
    Sleep    5 second
    Click On Continue Button
    Sleep    3 second




