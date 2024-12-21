*** Keywords ***
Open website with specific option
    [Arguments]  ${browser}=gc   ${url}
    SeleniumLibrary.Open Browser  ${url}  ${browser}
    SeleniumLibrary.Element Should Be Visible  xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]
    SeleniumLibrary.Close Browser