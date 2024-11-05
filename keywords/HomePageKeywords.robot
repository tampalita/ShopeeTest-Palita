*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/variables.robot

*** Keywords ***
user is on the Future Skill home page
    [Documentation]    Opens the Future Skill home page
    Go To    ${baseUrl}

user clicks on "สมัครสมาชิก" button
    Wait Until Element Is Visible    ${SIGN_UP_BUTTON}
    Click Element    ${SIGN_UP_BUTTON}

