*** Settings ***

Library    AppiumLibrary

*** Test Cases ***


Deve abrir a tela principal

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid= RQ8R506Q4ZR
    ...                 autoGrantPermissions=true
    ...                 automationName=UIAutomator2
    
    Wait Until Page Contains    Yodapp
    Wait Until Page Contains    Mobile Training    10
    Wait Until Page Contains    by Papito    10

    Close Application
    