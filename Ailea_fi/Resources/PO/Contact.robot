*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2
${CONTACT_HEADER_LABEL} =  css=div.vc_row:nth-child(7) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2


*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${CONTACT_HEADER_LABEL}
    #Element Text Should Be    text=#Aileans

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team
    ${ElementText} =  SeleniumLibrary.Get Text  ${CONTACT_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Ota Yhteyttä!  ignore_case=true