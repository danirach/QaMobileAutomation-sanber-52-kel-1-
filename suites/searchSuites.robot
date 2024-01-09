*** Settings ***
Resource         ../pageObject/base/base.robot
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/loginPageObject/loginPage.robot
Resource        ../pageObject/searchPageObject/searchPage.robot
Test Setup       Login With Valid Credentials    ${validEmail}    ${validPassword}
Test Teardown    Close flight Application

*** Variables ***
${validEmail}            support@ngendigital.com
${validPassword}         abc123
${validFlightNumber}     DA935
${invalidFlightNumber}     12345

*** Test Cases ***

User Should Be Able To Search Flight Number With Valid Flight Number

# login Application
# Klik Search Link
    Click SearchLink In HomePage
# Search Flight Page Appear
    Search Flight Appear
# Input Flight Number
    Input Flight Number            ${validFlightNumber}
# Klik Search Flight
    Click SearchFlight Button
# Flight Detail Appear
    Flight Detail Page Appear
# Close App

User Not Be Able To Search Flight Number With Empty Flight Number

# login Application
# Klik Search Link
    Click SearchLink In HomePage
# Search Flight Page Appear
    Search Flight Appear
# Klik Search Flight
    Click SearchFlight Button
# Message Appear
    Message Invalid Search Appear
# Close App

User Not Be Able To Search Flight Number With InValid Flight Number

# login Application
# Klik Search Link
    Click SearchLink In HomePage
# Search Flight Page Appear
    Search Flight Appear
# Input Flight Number
    Input Flight Number            ${invalidFlightNumber}
# Klik Search Flight
    Click SearchFlight Button
    # Message Appear
    Message Invalid Search Appear