*** Settings ***
Library  SeleniumLibrary
Resource  ../common/common.robot
Resource  ../keywords/keywords.robot
Resource   ../pageobjects/Caterlog_pageobject.robot
Suite Setup  Launch Browser
Suite Teardown  Close Browser



*** Variables ***

*** Keywords ***

*** Test Cases ***
User mouse over each categories to see the dropdown menu
   [Documentation]  This test case shows that users can mouse over each category
   [Tags]  Functional
   #Open Browser  https://www.zalando.co.uk/women-home  chrome
   #Maximize Browser Window
   Click Element  //span[text()='Women']
   Mouse Over  //li[contains(@data-name,'Get the look')] 
   Mouse Over  //li[contains(@data-name,'New')] 
   Mouse Over  //li[contains(@data-name,'Clothing')]
   Mouse Over  //li[contains(@data-name,'Shoes')]
   Mouse Over  //li[contains(@data-name,'Accessories')]
   Mouse Over  //li[contains(@data-name,'Sports')] 
   Mouse Over  //li[contains(@data-name,'Designer')]
   Mouse Over  //li[contains(@data-name,'Brands')]
   Mouse Over  //li[contains(@data-name,'Sale')] 
   Mouse Down  //a[contains(@title,'Your bag')]      
   Sleep  4s
   

User Mouse over an element and click a category from the drop down menu
    [Documentation]  This test case shows that user can click on a suguested category and dispay catelog
    [Tags]  Functional
    Open Browser  https://www.zalando.co.uk  chrome
    Click Element  //span[text()='Women']
    Page Should Contain  Get the look
    Click Element  //li[contains(@data-name,'Get the look')]
    Click Element  //input[@value="style_sporty"]/.. 
    Sleep  4s
    
