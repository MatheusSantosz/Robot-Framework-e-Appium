*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource

*** Test Cases ***
Deve poder remover o darth Vader
    Start session
    Get started
    Navigate to                     item_text=Star Wars
    Wait Until Page Contains        Lista
    Go to item                      Lista    Darth Vader
    

    ${start_x}     Set Variable    991    
    ${start_y}     Set Variable    753
    ${offset_x}    Set Variable    268
    ${offset_y}    Set Variable    759

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000
    Click Element    com.qaxperience.yodapp:id/btnRemove
    Wait Until Page Does Not Contain     Darth Vader
    Close session
    

    
