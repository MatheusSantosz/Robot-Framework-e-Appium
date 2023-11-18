*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource
| Suite Setup | Set Library Search Order | AppiumLibrary | Selenium2Library


*** Test Cases ***

Deve selecionar a opcao Javascript

    
    Start session
    Get started
    Navigate to                       Check e Radio
Go to item radio 
    
    Wait Until Page Contains        Botões de radio
    Click Text                      Botões de radio
    Wait Until Page Contains        Escolha sua linguagem preferida
    Click Element                   xpath=//android.widget.RadioButton[contains(@text, "Javascript")]
    Sleep        3
    
    Close session
    