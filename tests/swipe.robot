*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource

*** Test Cases ***
Deve poder remover o darth Vader
    Start session
    Get started
    Navigate to            item_text=Star Wars
    Wait Until Page Contains          Lista
    Go to item                        Lista    Darth Vader
    Swipe                             991    753    268    759
    