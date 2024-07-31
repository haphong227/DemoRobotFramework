*** Settings ***

*** Variables ***

*** Test Cases ***

*** Keywords ***


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