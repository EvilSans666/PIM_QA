*** Settings ***
Resource    ${CURDIR}/../resources/import/import.robot

*** Test Cases ***
TC-108 Open website
    [Tags]    test
    common.Open website with specific option    ${common['url']['web']}
    BuiltIn.Log to console    Locator founded: Good Job!
    Click button when ready     ${locator_home_page['btn']}