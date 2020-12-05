*** Settings ***
Documentation                               This is a basic test
Library                                     Selenium2Library
*** Variables ***


*** Test Cases ***
User can open home page
    [Documentation]                         As a user I can open the home page and see the tagline
    open browser                            https://teamapt.com/
    maximize browser window
    wait until page contains                Technology for Financial Happiness of Africans.
    sleep  3
    click link  xpath://nav[@class='main-nav']//a[contains(.,'For Banks')]
    sleep   3
    click element   xpath://span[contains(.,'Profectus Robotics Automation')]
    click element   xpath://div[@class='info aos-init aos-animate']/a[contains(.,'Request Demo')]
    close browser

*** Keywords ***
