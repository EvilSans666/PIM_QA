*** Settings ***
Resource  ${CURDIR}/..Resources/import.robot
Library  SeleniumLibrary

*** Test Cases ***
JW_007 Open website
    [Tags]    test
    Open website with specific option
    ...  ${browser}=gc
    SeleniumLibrary.Element Should Be Visible  xpath=/html/body/div[3]/div[1]/div[1]/div[2]/div[4]/ul/li[14]
    BuiltIN.Log to console locator founded:Good Job 
    SeleniumLibrary.Close Browser

#*** Variables ***
#$ = 1 or apple
#@ = [1,,2,3,4,5,6,7,8,9,10] or [apple,banana,orange]
#& = {1:apple,2:banana,3:orange} or {apple:1,banana:2,orange:3} key:value
