*** Settings ***
Resource        ${CURDIR}/../resources/import/import.robot

*** Test Cases ***
JW_007 Open website
    [Tags]      test
    Open Minecraft Website
    Click On Element With Delay     xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]    0s    Clicking first element
    Click On Element With Delay     xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[3]/ul/li[9]     4s    Clicking second element
    Click On Element With Delay     xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[5]/ul/li[15]    4s    Clicking third element
    Double Click On Element With Delay    xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[5]/ul/li[9]   4s    Double clicking fourth element
    Log to console    Locator found: Good Job!!
    debug
    Close Browser

*** Keywords ***
Open Minecraft Website
    [Documentation]  Opens the Minecraft website and verifies the element is visible
    common.Open website with specific option    ${common['url']['minecraft']}
    SeleniumLibrary.Element should be visible   xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]

Click On Element With Delay
    [Arguments]    ${locator}    ${delay}=0s    ${message}=${EMPTY}
    [Documentation]  Clicks on the element specified by the locator with an optional delay
    BuiltIn.Sleep    ${delay}
    SeleniumLibrary.Click Element    ${locator}
    BuiltIn.Log to console    ${message}

Double Click On Element With Delay
    [Arguments]    ${locator}    ${delay}=0s    ${message}=${EMPTY}
    [Documentation]  Double-clicks on the element specified by the locator with an optional delay
    BuiltIn.Sleep    ${delay}
    SeleniumLibrary.Double Click Element    ${locator}
    BuiltIn.Log to console    ${message}

Log to console
    [Arguments]    ${message}
    [Documentation]  Logs the specified message to the console
    BuiltIn.Log to console    ${message}
