*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#locators
${ADDCUSTOMER_Email} =              EmailAddress
${ADDCUSTOMER_FIRSTNAME} =          id=FirstName
${ADDCUSTOMER_LASTNAME} =           id=LastName
${ADDCUSTOMER_CITY} =               id=City
${ADDCUSTOMER_STATE} =              StateOrRegion
${ADDCUSTOMER_Gender} =             gender
${ADDCUSTOMER_PROMO_CB} =           promos-name
${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit
#Static Variable
${ADDCUSTOMER_HEADING} =            Add Customer
*** Keywords ***

Verify Page Loaded
        wait until page contains                ${ADDCUSTOMER_HEADING}

Enter Valid Information in "Add new Customer" Form
    #[Arguments]     ${Email Address}    ${First_Name}    ${Last_Name}    ${City}  ${State_Value}  ${Gender}
    Fill "Email" field                          #${Email Address}
    Fill "First Name" Field                     #${First_Name}
    Fill "Last Name" Field                      #${Last_Name}
    Fill "City" Field                           #${City}
    Select "state" From List                    #${State_Value}
    Select "Gender"                             #${Gender}
    click "Add Promotional List" Checkbox
    click on "submit" button

Fill "Email" field
    #[Arguments]    ${Email Address}
    input text                                  ${ADDCUSTOMER_Email}        irtassamarshad64@gmail.com

Fill "First Name" Field
    #[Arguments]    ${First_Name}
    input text                                  ${ADDCUSTOMER_FIRSTNAME}      irtassam

Fill "Last Name" Field
    #[Arguments]    ${Last Name}
    input text                                  ${ADDCUSTOMER_LASTNAME}         arshad

Fill "City" Field
    #[Arguments]    ${City}
    input text                                  ${ADDCUSTOMER_CITY}             lahore

Select "state" From List
    #[Arguments]    ${State_Value}
    select from list by value                   ${ADDCUSTOMER_STATE}      TX

Select "Gender"
    #[Arguments]    ${Gender}
    select radio button                         ${ADDCUSTOMER_Gender}    male

click "Add Promotional List" Checkbox
    click element                               ${ADDCUSTOMER_PROMO_CB}

Click on "Submit" Button
    click button                                ${ADDCUSTOMER_SUBMIT_BUTTON}

