*** Settings ***
Resource         ../pageObject/base/base.robot
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/loginPageObject/loginPage.robot
Test Setup        Open flight Application
Test Teardown     Close flight Application

*** Variables ***
${validEmail}            support@ngendigital.com
${validPassword}         abc123
${invalidEmail}          admin@gmail.com
${invalidPassword}       admin123

*** Test Cases ***
User should be able to login with valid credentials
    # Open Application
    # Verify Home Page Appears
    Verify Home Page Appear
    # Click Sign In Button HomePage
    Click Sign In Button HomePage
    # Verify Login Page Appears
    Verify Login Page Appear
    # Input Username Login Page
    Input Username On Login Page    ${validEmail}
    # Input Password Login Page
    Input Password On Login Page    ${validPassword}
    # CLick Sign In Button In Login Page
    Click Sign In Button loginPage
    # Verify User Login 
    Verify User Log In
    # Close Application
    Logout In LoginPage

User Not Able To Login With Invalid Credentials
    # Verify Home Page Appears
    Verify Home Page Appear
    # Click Sign In Button HomePage
    Click Sign In Button HomePage
    # Verify Login Page Appears
    Verify Login Page Appear
    # Input Username Login Page
    Input Username On Login Page    ${invalidEmail}
    # Input Password Login Page
    Input Password On Login Page    ${invalidPassword}
    # ClikSignin Button
    Click Sign In Button loginPage
    # Appears Notifications
    Notifications Appear On LoginPage
    # Close Aplication
    
User Not Able To Login With Empty Credentials
    # Verify Home Page Appears
    Verify Home Page Appear
    # Click Sign In Button HomePage
    Click Sign In Button HomePage
    # Verify Login Page Appears
    Verify Login Page Appear
    # Click Sign In Button HomePage
    Click Sign In Button loginPage
    # Appears Notifications
    Notifications Appear On LoginPage