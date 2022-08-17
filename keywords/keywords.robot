*** Settings ***
Library     SeleniumLibrary
Resource    ../common/common.robot
Resource    ../pageobjects/homepage_pageobject.robot
Resource    ../pageobjects/authenticate_pageobject.robot

*** Keywords ***
Launch Browser 
    Open Browser    ${URL}      ${BROWSER} 
    Maximize Browser Window     

Click Login Tab
    Wait Until Element Is Visible       ${LOGIN}
    Click Element                       ${LOGIN}

Click Toggle Register Button 
    Wait Until Element Is Visible       ${TOGGLE_REGISTER_BTN}
    Click Element                       ${TOGGLE_REGISTER_BTN}

Input First Name 
    [Arguments]                         ${first_name}
    Wait Until Element Is Visible       ${FIRST_NAME_INPUT} 
    Input Text                          ${FIRST_NAME_INPUT}     ${first_name}

Input Last Name 
    [Arguments]                         ${last_name}
    Wait Until Element Is Visible       ${LAST_NAME_INPUT} 
    Input Text                          ${LAST_NAME_INPUT}      ${last_name}

Input Email Address
    [Arguments]                         ${email_address}
    Wait Until Element Is Visible       ${EMAIL_ADDRESS_INPUT} 
    Input Text                          ${EMAIL_ADDRESS_INPUT}      ${email_address}

Input Password
    [Arguments]                         ${password}
    Wait Until Element Is Visible       ${PASSWORD_INPUT} 
    Input Text                          ${PASSWORD_INPUT}      ${password}

Click Newsletter Checkbox
    Wait Until Element Is Visible       ${REGISTER_NEWSLETTER}
    Click Element                       ${REGISTER_NEWSLETTER}

Click Register Button 
    Wait Until Element Is Visible       ${REGISTER_BTN}
    Click Element                       ${REGISTER_BTN}

Email And Password Warning Should Appear             
    Wait Until Element Is Visible       ${EMAIL_WARNING}  
    Page Should Contain Element         ${EMAIL_WARNING}   
    Wait Until Element Is Visible       ${PASSWORD_WARNING}
    Page Should Contain Element         ${PASSWORD_WARNING} 
    
