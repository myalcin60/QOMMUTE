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

 robot --include Pozitif test/                      ---> Pour exécuter les tests avec un tag commun
 robot test/TC_02_Logo.robot                        ---> Pour exécuterdes tests dans le terminal
 robot --outputdir results test/contact_us.robot    ---> Pour prendre les rapports dans le dossier de résultat
 robot --outputdir results --include Pozitif test/  ---> Pour prendre les rapports dans le dossier de résultat avec exécuter les tests un tag commun

*** Test Cases ***
Contact form
  [Tags]  pozitif
  Go to QOMMUTE home page
  Click on the " CONTACT "
  Fill in the Name, Email, Subject and Message fields
  Select the checkboxes
  Click on "Envoyez Votre Message"