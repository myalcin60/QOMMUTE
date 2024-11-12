*** Settings ***
Library  SeleniumLibrary
Resource  cookies.robot

*** Variables ***
${url}              https://qommute.com/
${Browser}          chrome

${QUI SOMMES NOUS}    xpath = //span[text()='QUI SOMMES-NOUS']
${NOS VALEURS}        xpath = //span[text()='NOS VALEURS']
${QOMMUTE LOGO}       xpath = //img[@class='logo-main scale-with-grid ']
${CONTACT}            xpath = //a[@href='https://qommute.com/contact/']/span

*** Keywords ***
Verify QOMMUTE logo is visible
    Element Should Be Visible    ${QOMMUTE LOGO}

Go to QOMMUTE home page
    Open Browser   ${url}   ${Browser}
    Maximize Browser Window
    Verify QOMMUTE logo is visible

Hover your mouse over 'QUI SOMMES-NOUS' and click on 'NOS VALEURS' in the drop-down menu
    Mouse Over    ${QUI SOMMES NOUS}
    Wait Until Element Is Visible    ${NOS VALEURS}
    Click Element    ${NOS VALEURS}

On the page that opens, click on the site Logo
    Wait Until Element Is Enabled    ${QOMMUTE LOGO}
    Click Element    ${QOMMUTE LOGO}

Verify that you are back on the home page
    Verify QOMMUTE logo is visible
    Location Should Be    ${url} 
