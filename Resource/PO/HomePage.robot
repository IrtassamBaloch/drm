*** Settings ***
Library    SeleniumLibrary

*** Variables ***


${HOME_HEADING} =    Customers Are Priority One!

*** Keywords ***

Load
    go to    ${START_URL}

Verify Page Loaded
    wait until page contains    ${HOME_HEADING}

