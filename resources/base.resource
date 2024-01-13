*** Settings ***
Library   AppiumLibrary

*** Variables ***
${START}    QAX
${MENU}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]

*** Keywords ***
Start session
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 automationName=UIAutomator2
Get started
    Wait Until Page Contains    ${START}    5
    Click Text    ${START}

Navigate to
    [Arguments]    ${item_text}
    ${menu}     Set Variable         //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    ${menu}    5
    Click Element                    ${menu}
   
    ${menu_item}    Set Variable     //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    Wait Until Element Is Visible    ${menu_item}    5
    Click Element                    ${menu_item}
    
Go to item 
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains        ${item}    5
    Click Text                      ${item}
    Wait Until Page Contains        ${checkpoint}
Go to item simples 
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains        ${item}    5
    Click Text                      ${item}
    Wait Until Page Contains        ${checkpoint}
    
    Click Text                      CLIQUE SIMPLES
    Wait Until Page Contains        Isso é um clique simples

Go to item long
    [Arguments]    ${item}    ${checkpoint}  
    Wait Until Page Contains        ${item}    5
    Click Text                      ${item}
    Wait Until Page Contains        ${checkpoint}
    
    # Click Text                      CLIQUE LONGO
    # Wait Until Page Contains        Isso é um clique longo

Close session    
    Close Application