*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2
${TEAM_HEADER_LABEL} =  css=div.vc_row:nth-child(5) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2
#/html/body/div[1]/div/main/div/div/div/article/div/div[5]/div/div/div/h2
${ILMARI_KUVA} =  css=div.staff-entry:nth-child(7) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1) > img:nth-child(1)
#div.vc_row:nth-child(5) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1)
${ILMARI_OTSIKKO} =  id=staff-single-title
${ILMARI_URL} =  https://www.ailea.fi/staff-member/ilmari-kautiala/#home-contact


*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${TEAM_HEADER_LABEL}
    #Element Text Should Be    text=#Aileans
Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team
    ${ElementText} =  SeleniumLibrary.Get Text  ${TEAM_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Tiimi  ignore_case=true

Go To Ilmari Page
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
    #Scroll Element Into View  ${ILMARI_KUVA}
    Click Element  ${ILMARI_KUVA}
    #wait until page contains element  ${IlMARI_OTSIKKO}
    wait until page contains  Ilmari Kautiala
    # Shouldn't be Sleep, should be solved so that robot knows it is waiting new window
    Sleep  5s
    ${url1} =  get location
    log to console  ${url1}
    Switch Window  Ilmari Kautiala – Ailea Oy
    ${url2} =  get location
    log to console  ${url2}