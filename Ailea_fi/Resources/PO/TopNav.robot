*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${TOP_NAV_TEAM_LINK} =  css=#menu-item-419 > a:nth-child(1) > span:nth-child(1)
${TOP_NAV_CONTACT_LINK} =  css=#menu-item-420 > a:nth-child(1) > span:nth-child(1)

*** Keywords ***
Select "Team" Page
    click element  ${TOP_NAV_TEAM_LINK}
    Sleep  1s

Select "Contact" Page
    click element  ${TOP_NAV_CONTACT_LINK}
    Sleep  1s