*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource

*** Test Cases ***
Deve escolher o nivel Padawan
    
    Start session
    Get started
    Navigate to                       Formulários
    Sleep    2
Go to item login Padawan
    
    Wait Until Page Contains         Cadastro
    Click Text                       Cadastro
    Wait Until Page Contains         Crie sua conta.
    Input Text                       id=com.qaxperience.yodapp:id/etUsername           Matheus
    Input Text                       id=com.qaxperience.yodapp:id/etEmail              matheus@qax.com
    Input Text                       id=com.qaxperience.yodapp:id/etPassword     1234 
    select level                     level=Padawan
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit  
    Wait Until Page Contains         text=Tudo certo, boas vindas ao Yodapp!
    Close session

Deve escolher o nivel Jedi
    
    Start session
    Get started
    Navigate to                       Formulários
    Sleep    2
Go to item login Jedi
    
    Wait Until Page Contains         Cadastro
    Click Text                       Cadastro
    Wait Until Page Contains         Crie sua conta.
    Input Text                       id=com.qaxperience.yodapp:id/etUsername           Matheus
    Input Text                       id=com.qaxperience.yodapp:id/etEmail              matheus@qax.com
    Input Text                       id=com.qaxperience.yodapp:id/etPassword     1234 
    select level                     level=Jedi
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit  
    Wait Until Page Contains         text=Tudo certo, boas vindas ao Yodapp!
    Close session

Deve escolher o nivel Sith
    
    Start session
    Get started
    Navigate to                       Formulários
    Sleep    2
Go to item login Sith
    
    Wait Until Page Contains         Cadastro
    Click Text                       Cadastro
    Wait Until Page Contains         Crie sua conta.
    Input Text                       id=com.qaxperience.yodapp:id/etUsername           Matheus
    Input Text                       id=com.qaxperience.yodapp:id/etEmail              matheus@qax.com
    Input Text                       id=com.qaxperience.yodapp:id/etPassword     1234 
    select level                     level=Sith
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit  
    Wait Until Page Contains         text=Tudo certo, boas vindas ao Yodapp!
    Close session

Deve escolher o nivel Outros
    
    Start session
    Get started
    Navigate to                       Formulários
    Sleep    2
Go to item login Outros
    
    Wait Until Page Contains         Cadastro
    Click Text                       Cadastro
    Wait Until Page Contains         Crie sua conta.
    Input Text                       id=com.qaxperience.yodapp:id/etUsername           Matheus
    Input Text                       id=com.qaxperience.yodapp:id/etEmail              matheus@qax.com
    Input Text                       id=com.qaxperience.yodapp:id/etPassword     1234 
    select level                     level=Outros
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit  
    Wait Until Page Contains         text=Tudo certo, boas vindas ao Yodapp!
    Close session        
*** Keywords ***
select level
    [Arguments]        ${level}
    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Sleep     3
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text                       ${level}