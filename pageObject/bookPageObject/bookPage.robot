*** Settings ***
Resource            ../base/base.robot
Variables           bookpage.yaml

*** Keywords ***

Click BookedLink In HomePage
    Click Element    ${booked_link_homepage}

Verify BookedPage Appear
    Wait Until Element Is Visible    ${fromcity_option_bookpage}
    Wait Until Element Is Visible    ${tocity_option_bookpage}
    Wait Until Element Is Visible    ${class_option_bookpage}

Choose From City Option
    Click Element    ${fromcity_option_bookpage}
    Wait Until Element Is Visible    ${chicago_fromOption}
    Click Element    ${chicago_fromOption}

Choose To City Option
    Click Element    ${tocity_option_bookpage}
    Wait Until Element Is Visible    ${paris_toOption}
    Click Element    ${paris_toOption}

Choose Class Option
    Click Element    ${class_option_bookpage}
    Wait Until Element Is Visible    ${first_classOption}
    Click Element    ${first_classOption}

Choose Start Date
    Click Element    ${startDate_option}
    Wait Until Element Is Visible    ${1agustus_startDateOption}
    Wait Until Element Is Visible    ${8agustus_startDateOption}
    Wait Until Element Is Visible    ${oke_StartDateButton}
    Click Element    ${1agustus_startDateOption}
    Click Element    ${oke_StartDateButton}

Choose End Date
    Click Element    ${endDate_option}
    Wait Until Element Is Visible    ${1agustus_endDateOption}
    Wait Until Element Is Visible    ${8agustus_endDateOption}
    Wait Until Element Is Visible    ${oke_endDateButton}
    Click Element    ${8agustus_endDateOption}
    Click Element    ${oke_endDateButton}

Choose Packet
    Click Element    ${flight_radioButton}

Click Booked Button
    Click Element    ${booked_button_bookpage}

Click Confirm Button
    Wait Until Element Is Visible    ${confirmButtonInBookedPage}
    Click Element    ${confirmButtonInBookedPage}

Verified Booked Successfully
    Wait Until Element Is Visible    ${bookedSuccessMessage}
