*** Settings ***
Resource            ../base/base.robot
Resource            ../homePageObject/homePage.robot
Variables           loginpage_locator.yaml

*** Keywords ***
Verify Login Page Appear
    Wait Until Element Is Visible    ${userName_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_Button_loginPage}

Input Username On Login Page
    [Arguments]        ${email}
    Input Text    ${userName_input_loginPage}    ${email}

Input Password On Login Page
    [Arguments]        ${password}
    Input Text    ${password_input_loginPage}    ${password}

Click Sign In Button loginPage
    Click Element    ${signIn_Button_loginPage}

Notifications Appear On LoginPage
    Wait Until Page Contains Element    ${invalid_userNameOrPassword}

Logout In LoginPage
    Click Element    ${signOut_Button_LoginPage}

Login With Valid Credentials
    [Arguments]        ${email}        ${password}
    Open flight Application
    Click Sign In Button HomePage
    Verify Login Page Appear
    Input Username On Login Page    ${email}
    Input Password On Login Page    ${password}
    Click Sign In Button loginPage
    Verify User Log In