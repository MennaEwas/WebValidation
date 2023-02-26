*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC1
    [Documentation]  This is some basic info about the Test
    [Tags]  browser 
    Open Browser  https://robotframework.org/SeleniumLibrary/  gc
    Sleep  3s
    Close Browser

TC2 
    [Documentation]  This is some basic info about the Test
    [Tags]  browser
    Open Browser  https://en.wikipedia.org/wiki/Coffee  gc
    Sleep  3s
    Close Browser

TC3 
    Log To Console  This is user log Test t3
    

    
*** Keywords ***
