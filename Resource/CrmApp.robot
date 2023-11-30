*** Settings ***

Resource        ../Resource/PO/AddCustomer.robot/
Resource        ../Resource/PO/Customer.robot/
Resource        ../Resource/PO/HomePage.robot/
Resource        ../Resource/PO/SignIn.robot/
Resource        ../Resource/PO/SignOut.robot/
Resource        ../Resource/PO/TopNav.robot/


*** Variables ***


*** Keywords ***
Load Web App
    HomePage.load
    Homepage.Verify Page Loaded

Redir To "Sign In" Page
    TopNav.Click on "Sign In" Page Link
    signin.verify page loaded
Login
    [Arguments]    ${Email}    ${Password}
    SignIn.Fill "Valid Credentail" To "SignIn"     ${Email}    ${Password}
Click on "Add new Customer" Button
    Customer.Verify Page Loaded
    Customer.click on "Add new Customer" button
    ADDCUSTOMER.VERIFY PAGE LOADED

Enter "Add Customer" Information
    #[Arguments]                 ${Email Address}    ${First_Name}    ${Last_Name}    ${City}   ${State_Value}   ${Gender}
    AddCustomer.Enter Valid Information in "Add new Customer" Form       #${Email Address}    ${First_Name}    ${Last_Name}    ${City}   ${State_Value}   ${Gender}

Check "Customer Added" in list
    Customer.Verify New Customer Added

Signout
     click on "sign out" button
     signout.verify the page loaded
