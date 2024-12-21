*** Settings ***
Resource    ${CURDIR}/../resources/import/import.robot
# Library     SeleniumLibrary

*** Test Cases ***
tc-110 Open website
    [Tags]    test
    Open website with specific option      ${common['url']['google']}
    Input text when     ${locator_reg_peges_locator['txt_uesr']}        66523
    Input text when     ${locator_reg_peges_locator['txt_pass']}      _Attaporn30012548
    Click Button        ${locator_reg_peges_locator['btn_submit']}
    SeleniumLibrary.Close Browser
