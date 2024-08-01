*** Settings ***
Documentation   Write script demo Robot Framework
Library    Selenium2Library
Resource    ../Resources/Keywords.robot

Test Setup  Open the browser
Test Teardown   Quit the browser

*** Variables ***
${USERNAME}   Admin
${PASSWORD}     admin123

*** Test Cases ***
Login to HRM successfully
    Login with username and password    ${USERNAME}     ${PASSWORD}
    Verify login successfully
