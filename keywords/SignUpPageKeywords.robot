*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/variables.robot

*** Keywords ***
user enters registration details
    Input Text    ${EMAIL_FIELD}               ${email}
    Input Text    ${FIRST_NAME_FIELD}          ${first_name}
    Input Text    ${LAST_NAME_FIELD}           ${last_name}
    Input Text    ${PHONE_FIELD}               ${phone}
    Input Text    ${PASSWORD_FIELD}            ${password}
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${confirm_password}
    Click Element    ${AGREE_TERMS_CHECKBOX}

user submits the registration form
    Wait Until Element Is Visible    ${SUBMIT_BUTTON}
    Click Element    ${SUBMIT_BUTTON}