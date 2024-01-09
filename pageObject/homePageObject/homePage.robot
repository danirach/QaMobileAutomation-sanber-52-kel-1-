*** Settings ***
Resource            ../base/base.robot
Variables           homepage_locator.yaml

*** Keywords ***

Verify Home Page Appear
    Wait Until Element Is Visible    ${logo_homePage}

Click Sign In Button HomePage
    Wait Until Element Is Visible    ${signIn_Button}
    Click Element    ${signIn_Button}

Verify User Log In
    Wait Until Element Is Visible    ${userName_view_homePage}