*** Settings ***
Documentation   Write script demo Robot Framework
Library    Selenium2Library

*** Variables ***
${BROWSER}  Chrome
${KEYWORD}  Robot Framework
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${DASHBOARD}    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${USERNAME}     Admin
${PASSWORD}     admin123

*** Test Cases ***
Login to HRM successfully
    Access to login page
    Login with username and password
    Verify login successfully
    [Teardown]  Close Browser

*** Keywords ***
Access to login page
#   Access to login page, broswer: Chrome
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Wait Until Element Is Visible    class=orangehrm-login-slot
#   Fullscreen
    Maximize Browser Window

Login with username and password
#   Input username and password
    Input Text    name=username    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
#   Click button Login
    Click Button    xpath=//button[@type='submit']

Verify login successfully
    ${current_url}=    Get Location
#   Verify access to dashboard successfully
    Should Be Equal    ${current_url}    ${DASHBOARD}
#   Wait dashboard page load
    Wait Until Element Is Visible   class=oxd-navbar-nav


