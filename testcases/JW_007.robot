*** Settings ***
Resource        ${CURDIR}/../resources/import/import.robot

*** Test Cases ***
JW_007 Open website
    [Tags]      test
    common.Open website with specific option       ${common['url']['minecraft']}
    SeleniumLibrary.Element should be visible       xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]
    SeleniumLibrary.click element       xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]
    BuiltIn.Log to console      Locator founded: Good Job!!
    debug
    SeleniumLibrary.Close browser

# *** Variables ***
# $ =  1 or apple
# @ =  [1,2,3,4,5,6,7,8,9,10] or [apple,banana,mango]
# & =  username:anupong  password:123456     key:value