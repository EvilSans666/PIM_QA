*** Keywords ***
Open website with specific option
    [Arguments]     ${url}  ${browser}=${common['browser']['googlechrome']}
    SeleniumLibrary.Open Browser      ${url}    ${browser}

Input text when 
    [Arguments]     ${locator}       ${uesr}
    SeleniumLibrary.Wait Until Element Is Visible  ${locator} 
    SeleniumLibrary.Input Text    ${locator}    ${uesr}


Click Button
    [Arguments]     ${locator} 
    SeleniumLibrary.Click Button        ${locator} 