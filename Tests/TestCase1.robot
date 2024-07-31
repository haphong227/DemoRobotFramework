*** Settings ***
Documentation   Write script demo Robot Framework
Library    Selenium2Library
Resource    ../Resources/Keywords.robot

*** Variables ***
${BROWSER}  Chrome
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${DASHBOARD}    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${USERNAME}     Admin
${PASSWORD}     admin123

*** Test Cases ***
Login to HRM successfully
    Access to login page    ${LOGIN URL}   ${BROWSER}
    Login with username and password    ${USERNAME}    ${PASSWORD}
    Verify login successfully   ${DASHBOARD}
    [Teardown]  Close Browser

