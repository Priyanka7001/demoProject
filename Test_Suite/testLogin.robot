*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Page_Object/loginpageResources.robot
Variables    ../Variable/loginpageVariable.py
Suite Setup    Open My Browser
Suite Teardown    Close All Browsers

*** Variables ***
@{mobileNumber}    9021657453    9021657454
@{passWord}    Rutika@123    Rutika@12

*** Test Cases ***
001 Verify the Functionality of Login Button
    Visit The Login Page
    ${actualUrl}=    Get Current Page URL
    Should Contain     ${actualUrl}    login   both URL are equal
    Close All Browsers

002 Verify Login Functionality with Valid Mobile number and Valid Password
    Visit The Login Page
    Fill Login Page Details    ${mobileNumber[0]}    ${passWord[0]}
    sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Contain     ${actualUrl}    myaccount   both URL are equal
    Close All Browsers

003 Verify Login Functionality with invalid Mobile number and Valid Password
    Visit The Login Page
    Fill Login Page Details    ${mobileNumber[1]}    ${passWord[0]}
    Sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Not Contain    ${actualUrl}    myaccount   Login not done
    Close All Browsers

004 Verify Login Functionality with valid Mobile number and invalid Password
    Visit The Login Page
    Fill Login Page Details    ${mobileNumber[0]}    ${passWord[1]}
    Sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Not Contain    ${actualUrl}    myaccount   Login not done
    Close All Browsers

005 Verify Login Functionality with invalid Mobile number and invalid Password
    Visit The Login Page
    Fill Login Page Details    ${mobileNumber[1]}    ${passWord[1]}
    Sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Not Contain    ${actualUrl}    myaccount   Login not done
    Close All Browsers

006 Verify Login Functionality with Empty Mobile number and Password
    Visit The Login Page
    Fill Login Page Details    ${EMPTY}    ${EMPTY}
    Sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Not Contain    ${actualUrl}    myaccount   Login not done
    Close All Browsers

007 Verify Login Functionality with Empty Mobile number
    Visit The Login Page
    Fill Login Page Details    ${EMPTY}    ${passWord[0]}
    Sleep    4s
    ${actualUrl}=    Get Current Page URL
    Should Not Contain    ${actualUrl}    myaccount   Login not done
    Page Should Contain    login    "Log in Not done"
    Close All Browsers

008 Verify Login Functionality with Empty Password
    Visit The Login Page
    Fill Login Page Details    ${mobileNumber[0]}   ${EMPTY}
    Sleep    4s
    Page Should Contain    login    "Log in Not done"
    Close All Browsers

009 Verify the Functionality of Request OTP Button
    Visit The Login Page
    Click On Request OTP Button
    ${actualUrl}=    Get Current Page URL
    Page Should Contain Link    ${actualUrl}    done

010 Verify the Functionality of New to Bookswagon? Sign up Text
    Visit The Login Page
    Click On New To Bookswagon? Sign Up
    Page Should Contain    login    not done

011 Verify the Functionality of Forget Your Password
    Visit The Login Page
    Click On Forget Your Password
    Page Should Contain    Password Assistant    not done

012 Verify the Functionality of Google Icon
    Visit The Login Page
    Click On Google Icon
    Page Should Contain    Google sign-in has a new look    not done

013 Verify OTP is generated and Sent to the Mobile Number
    Visit The Login Page
    Enter User Mobile Number    9021657453
    Click On Request OTP Button
    Page Should Contain    Login via OTP    Failed

014 Verify if OTP is Successfully Verified
    Visit The Login Page
    Enter User Mobile Number    9021657453
    Click On Request OTP Button
    Sleep    15s
    Click On Verify OTP
    Page Should Contain    myaccount    Failed
    Sleep    20s

015 Verify incorrect OTP is Rejected
    Visit The Login Page
    Enter User Mobile Number    9021657453
    Click On Request OTP Button
    Sleep    10s
    Click On Verify OTP
    Page Should Not Contain    myaccount    Failed

