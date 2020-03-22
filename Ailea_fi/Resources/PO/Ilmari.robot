*** Settings ***
Library  SeleniumLibrary
Library  SikuliLibrary
Library  Dialogs
*** Variables ***

${AILEA_LOGO} =  css=.logo-img
${ILMARI_OTSIKKO} =  id=staff-single-title
${PERSON_PAGE_TEXT} =  Related Staff
${TONNIN_SETELI} =  https://meemi.info/w/Tiedosto:Heikki_tonniHQ.jpg


*** Keywords ***
Test Settings
    Add Image Path  ../Resources/Images

Verify Page Loaded
    wait until page contains element  ${AILEA_LOGO}
    wait until page contains  ${PERSON_PAGE_TEXT}  6s

Verify Face Is Tonnin Seteli
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
    Sleep  3s
    go to  ${TONNIN_SETELI}
    Sleep  4s
    Log To Console  Ja Tuhanteen!  stream=STDOUT
    ${result} =  Ja_tuhat
    log  ${result}
    Log To Console  ${result}
    Pause Execution  Ja Tuhanteen!

    #${INPUT} =  raw_input()
    #log  ${INPUT}

Click Tonnin Seteli
    Click  Tonnin_Seteli.png