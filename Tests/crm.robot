*** Settings ***
Resource            ../Resource/Common.robot
Resource            ../Resource/CrmApp.robot


Test Setup      Begin Web Test
Test Teardown       End Web Test

#cmd to run the file
#robot -d results tests/crm.robot
*** Variables ***
${BROWSER} =    firefox
${START_URL} =    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =    arshad.irtassam+1222@gmail.com
${VALID_LOGIN_PASSWORD} =    User@1234
${EMAIL} =    arshad.irtassam+221@gmail.com
${FIRSTNAEM} =    Irtassam
${LASTNAEM} =    Arshad
${CITY}   =     Vehari
${STATE_VALUE} =    LA
${GENDER} =    male

*** Test Cases ***
Should be able to go to home screen
    [Documentation]             this is some basic info about test
    [Tags]                      Smoke       105        home
    CrmApp.Load Web App
Should be able to go on customer pape
    [Documentation]             this is some basic info about test
    [Tags]                      Smoke       104        logout
    CrmApp.Load Web App
    CrmApp.Redir To "Sign In" Page
    CrmApp.Login                ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}
    CrmApp.Click on "Add new Customer" Button
    CrmApp.Signout


Should be able to Login
    [Documentation]             this is some basic info about test
    [Tags]                      Smoke       103     Login
    CrmApp.Load Web App
    CrmApp.Redir To "Sign In" Page
    CrmApp.Login                ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}

Should be able to Logout
    [Documentation]             this is some basic info about test
    [Tags]                      Smoke       104        logout
    CrmApp.Load Web App
    CrmApp.Redir To "Sign In" Page
    CrmApp.Login                ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}
    CrmApp.Signout

Should be able to add new customer
    [Documentation]             this is some basic info about test
    [Tags]                      Smoke       1006        contacts
    CrmApp.Load Web App
    CrmApp.Redir To "Sign In" Page
    CrmApp.Login                ${VALID_LOGIN_EMAIL}      ${VALID_LOGIN_PASSWORD}
    CrmApp.Click on "Add new Customer" Button
    CrmApp.Enter "Add Customer" Information    #${EMAIL}    ${FIRSTNAEM}   ${LASTNAEM}    ${CITY}   ${STATE_VALUE} ${GENDER}
    CrmApp.Check "Customer Added" in list
    CrmApp.Signout



*** Keywords ***
