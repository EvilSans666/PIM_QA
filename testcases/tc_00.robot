*** Settings ***
Resource            ${CURDIR}/../resources/import/import.robot
Suite setup         common.Open website with specific option       ${common['url']['google']}
Suite Teardown      SeleniumLibrary.Close all browsers

*** Test Cases ***
TC-00-1 Open website
    [Tags]      test-1
    SeleniumLibrary.Element should be visible       xpath=//img[@alt="Google"]
    BuiltIn.Log to console      Locator founded: Good Job!!
    SeleniumLibrary.Close browser

TC-00-2 Open website and input text to search_bar
    [Tags]      test-2
    common.Open website with specific option       ${common['url']['google']}
    SeleniumLibrary.Element should be visible       xpath=//img[@alt="Google"]
    common.Input text when ready
    