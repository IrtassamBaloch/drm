*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators



#static variable
${SIGNOUT_HEADING} =             Signed Out

*** Keywords ***
Verify the Page Loaded
    wait until page contains    ${signout_heading}
