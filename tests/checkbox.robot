*** Settings ***
Library     AppiumLibrary
Resource    ../resources/base.resource
| Suite Setup | Set Library Search Order | AppiumLibrary | Selenium2Library


*** Test Cases ***

Deve marcar as techs que usam Appium

    
    Start session
    Get started
    Navigate to                       Check e Radio
Go to item checkbox 
    
    Wait Until Page Contains        Checkbox
    Click Text                      Checkbox
    Wait Until Page Contains        Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR      ${tech}  IN  @{techs}
        Click Element                      xpath=//android.widget.CheckBox[contains(@text, "${tech}" )]
        
    END
    Sleep        3
    
    Close session
    