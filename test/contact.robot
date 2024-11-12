*** Settings ***
Library  SeleniumLibrary
Resource   ../resources/pages/home_page.robot
Resource   ../resources/pages/contact_page.robot


*** Comments ***
1. Go to https://qommute.com.
2. Click on the " CONTACT " .
3. Fill in the Name, Email, Subject and Message fields.
4. Select the checkboxes
5. Click on "Envoyez Votre Message".


*** Test Cases ***
Contact form
  Go to QOMMUTE home page
  Click on the " CONTACT "
  Fill in the Name, Email, Subject and Message fields
  Select the checkboxes
  Click on "Envoyez Votre Message"