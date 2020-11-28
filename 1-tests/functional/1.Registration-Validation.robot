*** Settings ***
Resource          ../../3-resources/4-database/database.txt
Resource          ../../3-resources/2-steps/home-steps.txt
Resource          ../../3-resources/2-steps/register-steps.txt
Resource          ../../3-resources/2-steps/onboard-steps.txt

*** Test Cases ***
1-Valid-Registration
    Set Suite Variable    ${user}    user16
    GIVEN Go To Register Page
    WHEN Register and Process Onboarding new user "${user}"
    THEN "${user}" profile should be completed and waiting for approval

*** Keywords ***
Register and Process Onboarding new user "${user}"
    Register new user "${user}"
    "${user}" register should be completed
    Click Continue
    Process user "${user}" onboarding
    "${user}" onboarding should be completed

"${user}" profile should be completed and waiting for approval
    Log To Console    \nUser has been registed successfully
    Sleep    2s
    Close Browser
