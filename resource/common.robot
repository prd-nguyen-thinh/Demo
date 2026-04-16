*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://practicetestautomation.com/practice-test-login/

# Thinh edit
*** Keywords ***
Open My Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds

Close My Browser
    Close All Browsers

Click at
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Scroll Element Into View    ${locator}
    Click Element    ${locator}

Input Into 
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${text}
    
Verify Element Is Displayed
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Element Should Be Visible        ${locator}

