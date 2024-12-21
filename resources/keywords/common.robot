*** Keywords ***
Open website with specific option
    [Arguments]    ${url}    ${browser}=${common['browser']['webChrome']}
    SeleniumLibrary.Open browser        ${url}      ${browser}

Click button when ready
    [Arguments]     ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Click Element    ${locator}