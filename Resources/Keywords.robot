*** Settings ***
Library     Selenium2Library

*** Variables ***
${BROWSER}  Chrome
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${DASHBOARD}    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index

*** Keywords ***
Open the browser
#   Access to page with broswer
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Wait Until Element Is Visible    class=orangehrm-login-slot
#   Fullscreen
    Maximize Browser Window

Quit the browser
    Close Browser

Login with username and password
    [Arguments]     ${username}     ${password}
#   Input username and password
    Input Text    name=username     ${username}
    Input Text    name=password    ${password}
#   Click button Login
    Click Button    xpath=//button[@type='submit']

Verify login successfully
    ${current_url}    Get Location
    Should Be Equal    ${current_url}    ${DASHBOARD}
#   Wait dashboard page load
    Wait Until Element Is Visible   class=oxd-navbar-nav

Invalid login
    [Arguments]     ${username}     ${password}
#   Input username and password
    Input Text    name=username     ${username}
    Input Text    name=password    ${password}
    Sleep    1s
#   Click button Login
    Click Button    xpath=//button[@type='submit']

Get value from element
    [Documentation]     Print text of element
    ${value}  Get Text     xpath=//p[@class='oxd-text oxd-text--p'][1]
    Log To Console    ${value}
    Sleep    1s




