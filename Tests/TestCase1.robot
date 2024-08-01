*** Settings ***
Documentation   Write script demo Robot Framework
Library    Selenium2Library
Library     ../Libraries/Library.py
Resource    ../Resources/Keywords.robot

#Test Setup  Open the browser
#Test Teardown   Quit the browser

*** Variables ***
${USERNAME}   Admin
${PASSWORD}     admin123
${IMAGE PATH}   Tests/test.png


*** Test Cases ***
Login to HRM successfully
    Login with username and password    ${USERNAME}     ${PASSWORD}
    Verify login successfully

Get text of element
    Get value from element

Get text of image
    [Documentation]    Print text of an image
    ${textImage}    extract_text_from_image     ${IMAGE PATH}
    Log To Console    ${textImage}
