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
    