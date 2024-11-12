*** Settings ***
Documentation   Refuser tous les cookies
Library  SeleniumLibrary

*** Variables ***
${cookies_refuser}   

*** Keywords ***
Refuser tous les cookies
   Wait Until Page Contains Element    ${cookies_refuser}
   Click Element    ${cookies_refuser}