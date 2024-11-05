*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/variables.robot

*** Keywords ***
system should display OTP page with message "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    Wait Until Page Contains Element    ${OTP_MESSAGE}
    Page Should Contain Element         ${OTP_MESSAGE}
