*** Variables ***

# Inputs
${NEW_USER_NAME}             name:name
${NEW_USER_EMAIL}            xpath=//input[@data-qa="signup-email"]
${LOGIN_EMAIL}               xpath=//input[@data-qa="login-email"]
${LOGIN_PASSWORD}            name:password


# Buttons
${LOGIN_BUTTON}              xpath=//button[@data-qa="login-button"]
${SIGNUP_BUTTON}             xpath=//button[@data-qa="signup-button"]