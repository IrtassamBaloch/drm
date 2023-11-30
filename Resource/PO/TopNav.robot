*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SIGNIN_LINK} =                    id=SignIn
${SIGNOUT_BUTTON} =                 Sign Out
*** Keywords ***

Click on "Sign In" Page Link
    click link                      ${SIGNIN_LINK}
Click on "Sign Out" Button
    click link                      ${SIGNOUT_BUTTON}



