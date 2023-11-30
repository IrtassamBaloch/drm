*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test
    #set selenium speed          -2s
    set selenium timeout        10s
    log                         starting the test case!
    open browser                about:blank        ${BROWSER}

End Web Test
    close browser