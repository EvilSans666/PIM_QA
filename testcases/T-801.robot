***Settings***
Resource    ${CURDIR}/../resources/import/import.robot

***Test Cases***
T-801 Open website
    [Tags]      test
    common.Open website with specific option        ${common['url']['fandom']}  
    # SeleniumLibrary.Element should be visible       xpath=//img[@alt="fandom"]
    SeleniumLibrary.Click Element        ${locator_home_page.btn_reg}
    SeleniumLibrary.close Browser


# ***Variables***
# $ = 1 or apple
# @ = [1,2,3,4,5,6,7,8,9,10] or [apple,banana,mango]
# & =  username:GOgo  password:1942       key:value    