*** Keywords ***
Open website with specific option
    [Arguments]     ${url}      ${browser}=${common['browser']['googlechrome']}
    SeleniumLibrary.Open browser       ${url}     ${browser}

Open application with specific option
    &{capability}   BuiltIn,Create Dictionary
    ... deviceName=${deviceName}
    ... platformName=${platformName}
    ... platformVersion=${platformVersion}
    ... automationName=${automationName}

    applicationlibrary.Open application  ${remote_url}  ${capability}
    For ${i}  IN RANGE  1  10
        ${is_app_opened}=  BuiltIn.Run Keyword And Return Status  appiumlibary.Open application  ${remote_url}  ${capability}
        BuiltIn.exit for loop if  ${is_app_opened}
    END

Open text with specific option
    [Arguments]     ${url}
    if ${platform}" == ""web"
        common.Open website with specific option  ${url}
    ELSE IF  "${platform}" == "android"
        common.Open application with specific option
    ELSE
        BuiltIn.Log   "Platform not supported"
    END
    Input text when ready   
    [Arguments]  ${locator}  ${text}
    SeleniumLibrary.with until element is visible  ${locator}
    SeleniumLibrary.Input text  ${locator}  ${text}