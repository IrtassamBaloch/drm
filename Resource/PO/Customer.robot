*** Settings ***
Library                                 SeleniumLibrary

*** Variables ***
#locator
${CUSTOMER_ADD_CUSTOMER_BUTTON} =       id=new-customer

#static variable
${CUSTOMER_HEADING} =                   Our Happy Customers
${CUSTOMER_ADDED_SUCCES} =              Success! New customer added
*** Keywords ***

Verify Page Loaded
    wait until page contains            ${CUSTOMER_HEADING}
click on "Add new Customer" button
    click element                       ${CUSTOMER_ADD_CUSTOMER_BUTTON}
Verify New Customer Added
    wait until page contains            ${CUSTOMER_ADDED_SUCCES}
