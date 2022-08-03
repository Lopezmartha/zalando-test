*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/keywords.robot
Resource    ../common/common.robot
Test Setup      Launch Browser 
Test Teardown   Close Browser

*** Test Cases ***

User can create an account with a valid email address and valid password
    [Documentation]     This test case shows that users can create an account with a valid email and valid password 
    [Tags]              Functional
    Click Login Tab
    Sleep  5s
    Page Should Contain             I’m new here
    Click Toggle Register Button
    Input First Name                ${FIRST_NAME1}
    Input Last Name                 ${LAST_NAME1}
    Input Email Address             ${VALID_EMAIL_ADDRESS}
    Input Password                  ${VALID_PASSWORD} 
    Click Newsletter Checkbox
    Click Register Button 
    
User cannot create an account with a valid email address and an invalid password
    [Documentation]     This test case shows that users cannot create an account with a valid email and an invalid password 
    [Tags]              Functional
    Click Login Tab
    Sleep  5s
    Page Should Contain             I’m new here
    Click Toggle Register Button
    Input First Name                ${FIRST_NAME1}
    Input Last Name                 ${LAST_NAME1}
    Input Email Address             ${VALID_EMAIL_ADDRESS}
    Input Password                  ${INVALID_PASSWORD}
    Click Newsletter Checkbox
    Click Register Button 
    Wait Until Element Is Visible   ${PASSWORD_WARNING}
    Page Should Contain Element     ${PASSWORD_WARNING}

User cannot create an account with an invalid email and a valid password
    [Documentation]     This test shows that users cannot create an account with an invalid email and a valid password
    [Tags]              Functional
    Click Login Tab
    Sleep  5s
    Page Should Contain             I’m new here
    Click Toggle Register Button
    Input First Name                ${FIRST_NAME1}
    Input Last Name                 ${LAST_NAME1}
    Input Email Address             ${INVALID_EMAIL_ADDRESS}
    Input Password                  ${VALID_PASSWORD} 
    Click Newsletter Checkbox
    Click Register Button
    Wait Until Element Is Visible   ${EMAIL_WARNING} 
    Page Should Contain Element     ${EMAIL_WARNING} 
