*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/ShopeeKeywords.robot
Resource        ../resources/variables.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Test Teardown   Capture Page Screenshot
Suite Setup    Open Browser    ${URL}    edge
Suite Teardown  Close Browser

*** Test Cases ***
TS001 Verify Landing on Shopee Home Page and Changing the Language to English
    [Documentation]    Verify that the Shopee home page loads successfully and allows users to change the default language to English. \
    This test ensures that the website is functional, accessible, and correctly updates the interface when the language is changed to English.
    Select English Language
    Verify Language Is English
    Close Browser

TS002 Verify Search Functionality for the Keyword “baby toys”
    [Documentation]    Verify the search functionality on Shopee's home page for the keyword "baby toys." \
    This test ensures that users can search for products and that relevant results are displayed for valid input keywords.
    Select English Language
    Search For Products    baby toys
    Verify Search Results Displayed
    Close Browser

TS003 Verify Search Results Are Displayed as a List
    [Documentation]    Verify that the search results for "baby toys" are displayed in a user-friendly list format. \
    This test checks that each product has essential details such as name and price, ensuring the search results are structured and informative.
    Select English Language
    Search For Products    baby toys
    Verify Product Details
    Close Browser
