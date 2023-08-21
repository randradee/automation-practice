*** Settings ***
Documentation    Keywords for the test cases involving registering an account

Resource    ../../../config/package.robot

*** Keywords ***
Verify that home page is visible
    Wait Until Element Is Visible          ${HOME_CAROUSEL}                  10

Navigate to SignUp/Login page
    Wait Until Element Is Visible          ${SIGNUP_LOGIN_ANCHOR}            10
    Click Link                             ${SIGNUP_LOGIN_ANCHOR}
    Wait Until Element Is Visible          ${NEW_USER_SIGNUP_TEXT}           10