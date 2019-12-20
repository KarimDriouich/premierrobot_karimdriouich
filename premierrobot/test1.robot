*** Settings ***
Library    SeleniumLibrary 
Default Tags    sanity
   
*** Test Cases ***
MyFirstTest
    [Tags]    first
    Log      Hello world...
    
MyFirstTestSelenium
    Open Browser    https://google.com    gc
    Set Browser Implicit Wait    20
    Close Browser  
    Set Tags    second

Sample Login Test
    Open Browser    ${URL}    gc
    Input Text    id=txtUsername    Admin
    Input Text    id=txtPassword    admin123     
    Click Button    name=Submit          
    Close Browser
    
*** Variables ***
${URL}    https://orangehrm-demo-6x.orangehrmlive.com

*** Keywords ***
