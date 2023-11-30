*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${SIGNIN_EMAIL} =               id=email-id
${SIGNIN_PASSWORD} =            id=password
${SIGNIN_REMEMBER_CB} =         id=remember
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id

#static variable
${SIGNIN_HEADING} =             Login

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGNIN_HEADING}


Fill "Valid Credentail" To "SignIn"
    [Arguments]                     ${Email}        ${Passowrd}
    Fill "Email" Field              ${Email}
    fill "passowrd" field           ${Passowrd}
    click "sign in" Button

Fill "Email" Field
    [Arguments]                     ${Email}
    input text                      ${SIGNIN_EMAIL}         ${Email}


Fill "Passowrd" Field
    [Arguments]                     ${Passowrd}
    input password                  ${SIGNIN_PASSWORD}         ${Passowrd}


Click "REMEMBER" CheckBox
    click element                   ${SIGNIN_REMEMBER_CB}

Click "Sign In" Button
    click button                    ${SIGNIN_SUBMIT_BUTTON}