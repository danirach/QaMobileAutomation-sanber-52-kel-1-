*** Settings ***
Resource            ../base/base.robot
Variables           searchpage_locator.yaml

*** Keywords ***
Click SearchLink In HomePage
    Click Element    ${searchFlightLink}

Search Flight Appear
    Wait Until Element Is Visible    ${searchFlightInput}
    Wait Until Element Is Visible    ${searchFlightButton}

Input Flight Number
    [Arguments]    ${flightNumber}
    Click Element    ${searchFlightInput}
    Input Text Into Current Element    ${flightNumber}

Click SearchFlight Button
    Click Element    ${searchFlightButton}
Flight Detail Page Appear
    Wait Until Element Is Visible    ${flightNumber}
Message Invalid Search Appear
    Wait Until Page Contains Element    ${searchFlightMessage}
