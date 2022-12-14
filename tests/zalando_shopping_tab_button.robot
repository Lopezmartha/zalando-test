*** Settings ***
Library         SeleniumLibrary
Resource        ../common/common.robot
Resource        ../pageobjects/homepage_pageobject.robot
Resource        ../keywords/keywords.robot
Suite Setup      Launch Browser 
Suite Teardown   Close Browser

*** Test Cases ***

User Should Be Able To See Zalando Shopping Cart Tab Button
    [Documentation]        This testcase shows users can see cart tab in homepage
    [Tags]                 Functional
    Page Should Contain    zalando
    Page Should Contain Element  ${CART_TAB}

Dropdown menu should be displayed when user mouse over zalando shopping cart tab button
    [Documentation]        User can mouse down on cart tab and drop down menu will be displayed
    [Tags]                Functional
    Wait Until Element Is Visible     ${CART_TAB}
    Mouse Over                         ${CART_TAB}
    Sleep        5s
    Page Should Contain            Your bag is empty
User should be able to click Zalando shopping cart tab button
    [Documentation]        User can click on cart tab button  and drop down menu page will be displayed
    [Tags]                Functional
    Click Element                   ${CART_TAB}
    Sleep                           10s
    Page Should Contain Element           //*[@id="Layer_2"]
               
    
    
    



