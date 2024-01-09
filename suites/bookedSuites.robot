*** Settings ***
Resource         ../pageObject/base/base.robot
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/loginPageObject/loginPage.robot
Resource    ../pageObject/bookPageObject/bookPage.robot
Test Setup       Login With Valid Credentials    ${validEmail}    ${validPassword}
Test Teardown    Close flight Application

*** Variables ***
${validEmail}            support@ngendigital.com
${validPassword}         abc123

*** Test Cases ***
Booked Flight Test With Valid Credentials
# Click Booked Link In Home Page
    Click BookedLink In HomePage
# Verify BookedPage Appear
    Verify BookedPage Appear
# # Choose From City
    Choose From City Option
# # Choose To City
    Choose To City Option
# # Choose Class
    Choose Class Option
# # Choose Start Date
    Choose Start Date
# Choose End Date
    Choose End Date
# Choose Packet
    Choose Packet
# Click Book In Booked Page
    Click Booked Button
# Click Confirm Book
    Click Confirm Button
# Verify Booked Successfully
    Verified Booked Successfully

Booked Flight Test With Empty Date
# Click Booked Link In Home Page
    Click BookedLink In HomePage
# Verify BookedPage Appear
    Verify BookedPage Appear
# # Choose From City
    Choose From City Option
# # Choose To City
    Choose To City Option
# # Choose Class
    Choose Class Option
# Choose Packet
    Choose Packet
# Click Book In Booked Page
    Click Booked Button
# Appear Notifications Message

Booked Flight Test With Empty Packet 
# Click Booked Link In Home Page
    Click BookedLink In HomePage
# Verify BookedPage Appear
    Verify BookedPage Appear
# # Choose Start Date
    Choose Start Date
# Choose End Date
    Choose End Date
# Click Book In Booked Page
    Click Booked Button
# Appear Notifications Message