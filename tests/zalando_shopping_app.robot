*** Settings ***
Library         SeleniumLibrary
Resource        ../common/common.robot
Resource        ../keywords/keywords.robot
Resource        ../pageobjects/Caterlog_pageobject.robot
Suite Setup      Launch Browser
Suite Teardown   Close Browser

*** Test Cases ***

User Should Be Able To See Zalando Shopping Cart Tab Button
    [Documentation]        This testcase shows users can see cart tab in homepage
    [Tags]                 Functional
    Page Should Contain    zalando
    Page Should Contain Element  ${CART_TAB}
User should be able to click Zalando shopping cart tab button
    [Documentation]        This test case shows users can click on cart tab in homepage
    [Tags]                 Functional
    Click Element          ${CART_TAB}

User should be able to see the search panel
    [Documentation]        This test case show that user can see search panel 
    [Tags]                 Functional
    Page Should Contain Element    ${SEARCH_PANEL}

Users can type and search for items with the search panel
    [Documentation]        This test case show that user can can type and search for items
    [Tags]                  Functional
    Click Element                ${SEARCH_PANEL}
    Input Text                   ${SEARCH_PANEL}        Shoe
    Press Keys	                  ${SEARCH_PANEL}    	RETURN
    Page Should Contain Element    ${SORT_BY}
    
                        





