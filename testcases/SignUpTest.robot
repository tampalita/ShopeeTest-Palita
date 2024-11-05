*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Resource        ../keywords/SignUpPageKeywords.robot
Resource        ../keywords/OTPPageKeywords.robot
Resource        ../resources/variables.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, I want to register on Future Skill platform
    [Documentation]    Test case for signing up on Future Skill platform
    user is on the Future Skill home page
    user clicks on "สมัครสมาชิก" button
    user enters registration details
    user submits the registration form
    system should display OTP page with message "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
