*** Settings ***
Resource        ${CURDIR}/../resources/import/import.robot

test Open website
    [Tags]      test
    Open Minecraft Website
SeleniumLibrary.click element   xpath=//html/body/header/button #cart
xpath=/html/body/div[2]/div[1]/div/span = //button[@id="cart-button"]
xpath=/html/body/header/button        = //h3[text()="Fish Sauce"]//following-sibling::div[@class="price"]/span
xpath=/html/body/div[2]/div[1]/button = //h3[text()="Fish Sauce"]/following-sibling::button[text()="Add to Cart"]


1.//button[@id="cart-button"]
2.//h3[text()="Fish Sauce"]//following-sibling::div[@class="price"]/span
3.//button[@id="cart-button" and text()="Cart (0)"]
4.//h3[text()="Fish Sauce"]/following-sibling::button[text()="Add to Cart"]
5.//div[@class="price"]/span[number()<50 and number()>=20]
6.//ul[@id="cart-items"]//following-sibling::button[text()="Remove"]
7.//div[@class="price"]/span[number()<=50 and number()>=20]