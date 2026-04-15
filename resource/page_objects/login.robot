*** Settings ***
Library      SeleniumLibrary
Variables    ../locator/login_locator.py

*** Keywords ***
Login To Practice Page
    [Arguments]    ${user}    ${pass}
    Input Text      ${TXT_USERNAME}    ${user}
    Input Password  ${TXT_PASSWORD}    ${pass}
    Click Button    ${BTN_SUBMIT}



    