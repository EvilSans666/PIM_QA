*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

Resource    ${CURDIR}/../keywords/common.robot

Variables       ${CURDIR}/../testdata/testdata.yaml

Resource       ${CURDIR}/../locators/pages/locator_reg_pages.robot