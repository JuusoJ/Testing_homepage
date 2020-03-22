*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot
Resource  ./PO/Ilmari.robot
Resource  ./PO/Contact.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents

Go to "Contact" Page
    TopNav.Select "Contact" Page
    Contact.Verify Page Loaded

Validate "Contact" Page
    Contact.Validate Page Contents


Validate "Ilmari" Page
    Team.Go To Ilmari Page
    Ilmari.Verify Page Loaded

Validate "Tonnin Seteli" look
    Ilmari.Verify Face Is Tonnin Seteli
    #Ilmari.Click Tonnin Seteli