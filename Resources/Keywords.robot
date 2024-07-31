*** Settings ***
Library     Selenium2Library

*** Variables ***


*** Keywords ***

Access to login page
    [Arguments]     ${url}     ${browser}
#   Access to page with broswer
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible    class=orangehrm-login-slot
#   Fullscreen
    Maximize Browser Window

Login with username and password
    [Arguments]     ${username}     ${password}
#   Input username and password
    Input Text    name=username     ${username}
    Input Text    name=password    ${password}
#   Click button Login
    Click Button    xpath=//button[@type='submit']

Verify login successfully
    [Arguments]     ${url expect}
#   Verify access to dashboard successfully
    ${current_url}    Get Location
    Should Be Equal    ${current_url}    ${url expect}
#   Wait dashboard page load
    Wait Until Element Is Visible   class=oxd-navbar-nav