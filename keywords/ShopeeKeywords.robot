*** Settings ***
Library           SeleniumLibrary
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Resource        ../resources/variables.robot

*** Keywords ***
Open Shopee Home Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Select English Language
    Wait Until Element Is Visible    ${LANGUAGE_BUTTON}    timeout=5
    Click Element    ${LANGUAGE_BUTTON}
    Wait Until Element Is Visible    ${LANGUAGE_MENU}    timeout=5
    Click Element    ${LANGUAGE_MENU}

Verify Language Is English
    ${current_lang}=    Get Text    ${LANGUAGE_BUTTON}
    Should Contain      ${current_lang}    English

Search For Products
    [Arguments]    ${keyword}
    Input Text     ${SEARCH_BAR}    ${keyword}
    Click Element  ${SEARCH_BUTTON}

Verify Search Results Displayed
    Wait Until Element Is Visible    ${RESULT_LIST}    timeout=5
    ${result_count}=    Get Element Count    ${RESULT_LIST}
    Should Be True       ${result_count} > 0    No results found

Verify Product Details
    ${product_name}=    Get Text    ${PRODUCT_NAME}
    ${product_price}=   Get Text    ${PRODUCT_PRICE}
    Should Not Be Empty    ${product_name}
    Should Not Be Empty    ${product_price}
