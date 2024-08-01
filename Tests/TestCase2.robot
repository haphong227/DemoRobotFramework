*** Settings ***
Resource    ../Resources/Keywords.robot

Test Setup  Open the browser
Test Teardown   Quit the browser
Test Template   Invalid login

*** Variables ***
${USERNAME}   Admin
${PASSWORD}   admin123

*** Test Cases ***          username        password
Right user empty password   ${USERNAME}     ${EMPTY}
Right user wrong password   ${USERNAME}     123
Wrong user right password   xyz             ${PASSWORD}
Wrong user wrong password   xyz             123