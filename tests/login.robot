*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource

*** Test Cases ***
Deve Logar com sucesso
    
    Start session
    Get started
    Navigate to                       Formulários
Go to item login 
    
    Wait Until Page Contains        Login
    Click Text                      Login
    Wait Until Page Contains        Olá Padawan, vamos testar o login?
    Input Text                      id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text                      id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element                   id=com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains        text=Boas vindas, logado você está

    Sleep     3   
    Close session

Não Deve Logar com senha incorreta
    
    Start session
    Get started
    Navigate to                       Formulários
Go to item login incorreto 
    
    Wait Until Page Contains        Login
    Click Text                      Login
    Wait Until Page Contains        Olá Padawan, vamos testar o login?
    Input Text                      id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text                      id=com.qaxperience.yodapp:id/etPassword    sesh
    Click Element                   id=com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains        text=Oops! Credenciais incorretas.

    Sleep     3   
    Close session    