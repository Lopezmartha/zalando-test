*** Settings ***
Library         SeleniumLibrary
Resource        ../common/common.robot
Resource        ../pageobjects/homepage_pageobject.robot
Resource        ../keywords/keywords.robot
Suite Setup      Launch Browser 
Suite Teardown   Close Browser

*** Test Cases ***
# Cart bag test
User Should Be Able To See Zalando Shopping Cart Tab Button
    [Documentation]        This testcase shows users can see cart tab in homepage
    [Tags]                 Functional
    Page Should Contain    zalando
    Page Should Contain Element  ${CART_TAB}

Dropdown menu should be displayed when user mouse over zalando shopping cart tab button
    [Documentation]        User can mouse down on cart tab and drop down menu will be displayed
    [Tags]                Functional
    Click Element  ${WOMEN_HOME}
    Mouse Over  ${GET_LOOK} 
    Mouse Down  ${CART_TAB}
    Page Should Contain Element  ${Your is empty}
    
User should be able to click Zalando shopping cart tab button
    [Documentation]        User can click on cart tab button  and drop down menu page will be displayed
    [Tags]                Functional
    Click Element                   ${CART_TAB}
    Sleep                           10s
    Page Should Contain Element     ${BAG_IMG}

# Search Panel test 
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
    Press Keys	                 ${SEARCH_PANEL}    	RETURN
    Page Should Contain Element  ${SORT_BY}
    
# Menu Tab test 
User mouse over each categories to see the dropdown menu
   [Documentation]  This test case shows that users can mouse over each category
   [Tags]  Functional
   Click Element  ${WOMEN_HOME}
   Mouse Over  ${GET_LOOK} 
   Mouse Over  ${NEW}
   Mouse Over  ${CLOTHING}
   Mouse Over  ${SHOES}
   Mouse Over  ${ACCESSORIES}
   Mouse Over  ${SPORTS} 
   Mouse Over  ${DESIGNER}
   Mouse Over  ${BRANDS}
   Mouse Over  ${SALE}    
   
User Mouse over an element and click a category from the drop down menu
    [Documentation]  This test case shows that user can click on a suguested category and dispay catelog
    [Tags]  Functional
    Click Element  ${WOMEN_HOME}
    Page Should Contain  Get the look
    Click Element  ${GET_LOOK}
    Click Element  ${SPORTY}
    
    
                        
               
    
    
    



