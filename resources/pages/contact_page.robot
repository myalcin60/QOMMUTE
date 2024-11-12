*** Settings ***
Library  SeleniumLibrary
Resource  home_page.robot
Library   FakerLibrary
Library    String
Library  Collections
Library    vinted_keywords


*** Variables ***
${sent message}    xpath = //div[text()='Merci pour votre message. Il a été envoyé.']
${email}           xpath = //input[@name='your-email']
${nom}             xpath = //input[@name='your-name']
${sujet}           xpath = //input[@name='your-subject']
${your mesaage}    xpath = //textarea[@name='your-message']
${envoyez votre message}   xpath = //input[@value='ENVOYEZ VOTRE MESSAGE']
${checkbox 1}              xpath = (//input[@name='your-acceptance'])[1]
${checkbox 2}              xpath = (//input[@name='your-acceptance'])[2]

  



*** Keywords **
Click on the " CONTACT " 
  Wait Until Element Is Enabled    ${CONTACT} 
  Click Element    ${CONTACT} 

Fill in the Name, Email, Subject and Message fields
  Wait Until Element Is Visible    ${nom} 
  
  Input Text   ${nom}       jhon     
  Input Text    ${email}    jhon@gmail.com
  Input Text    ${sujet}    exapmle test

  ${fake message}=  Texts
  ${current_message}  Get Text    ${your mesaage} 
  IF   '${current_message}' != ''
      Clear Element Text    ${your mesaage}      
  END
  Input Text    ${your mesaage}     ${fake message}

Select the checkboxes
    ${is selected 1}  Run Keyword And Return Status    Checkbox Should Not Be Selected    ${checkbox 1}
    IF    ${is selected 1} == False
        Select Checkbox    ${checkbox 1}
    END

    ${is selected 2}  Run Keyword And Return Status    Checkbox Should Not Be Selected    ${checkbox 2}
    IF    ${is selected 1} == False
        Select Checkbox    ${checkbox 2}
    END

Click on "Envoyez Votre Message"
    Click Button    ${envoyez votre message}