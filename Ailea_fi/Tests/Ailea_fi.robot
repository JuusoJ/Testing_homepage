*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/Ailea_fiApp.robot
Resource  ../Resources/CommonWeb.robot
Library  ../Scripts/Python/Ailea_Test.py
Test Setup  Begin Web Test
Test Teardown  End Web Test


# robot -d Ailea_fi/results Ailea_fi/tests/Ailea_fi.robot

*** Variables ***
${BROWSER} =  ff
${URL} =  http://www.ailea.fi

*** Test Cases ***

'''
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test1
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Team" Page


"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  test2
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Team" Page
    Ailea_fiApp.Validate "Team" Page

"Contact" page should match requirements
    [Documentation]  This is test 3 which tests if "Contact" page is reachable from front page
    [Tags]  test3
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Contact" Page
    Ailea_fiApp.Validate "Contact" Page

"Ilmari" page should match requirements
    [Documentation]  This is test 4 - Person window test
    [Tags]  test4  Ilmari
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Team" Page
    Ailea_fiApp.Validate "Team" Page
    Ailea_fiApp.Validate "Ilmari" Page



"Contact" should be reachable from "Ilmari" page
    [Documentation]  This is test 5 - Person window test
    [Tags]  test5 - Ilmari to contact
    #Should fail in this point.
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Team" Page
    Ailea_fiApp.Validate "Team" Page
    Ailea_fiApp.Validate "Ilmari" Page
    Ailea_fiApp.Go to "Contact" Page
    Ailea_fiApp.Validate "Contact" Page




### HASSUTTELU OSIO ###

"Ilmari" Should Have Classic "Tonnin Seteli" Customer Service Face
    [Documentation]  This is test 6 - Person window test validates that programmers facial expression is identical to good practices or so called "Tonnin Seteli"
    [Tags]  test6  Ilmari2
    Ailea_fiApp.Go to Landing Page
    Ailea_fiApp.Go to "Team" Page
    Ailea_fiApp.Validate "Team" Page
    Ailea_fiApp.Validate "Ilmari" Page
    Ailea_fiApp.Validate "Tonnin Seteli" look

