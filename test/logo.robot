*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/pages/home_page.robot

*** Comments ***
1. Go to https://qommute.com.
2. Hover your mouse over 'QUI SOMMES-NOUS' and click on 'NOS VALEURS' in the drop-down menu.
3. On the page that opens, click on the site Logo.
4. Verify that you are back on the home page.


    robot --include Pozitif test/                      ---> Pour exécuter les tests avec un tag commun
    robot test/TC_02_Logo.robot                        ---> Pour exécuterdes tests dans le terminal
    robot --outputdir results test/contact_us.robot    ---> Pour prendre les rapports dans le dossier de résultat
    robot --outputdir results --include Pozitif test/  ---> Pour prendre les rapports dans le dossier de résultat avec exécuter les tests un tag commun

*** Test Cases ***
Test logo
    [Tags]  pozitif
    Go to QOMMUTE home page
    Hover your mouse over 'QUI SOMMES-NOUS' and click on 'NOS VALEURS' in the drop-down menu
    On the page that opens, click on the site Logo
    Verify that you are back on the home page