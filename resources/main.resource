*** Settings ***

Library     SeleniumLibrary
Variables   ../resources/enviroments/env.yml

*** Variables ***
${URL}           ${SELENIUM.URL} 
${HANDLESS}      ${SELENIUM.HANDLESS}
${BROWSER}       ${SELENIUM.BROWSER}



*** Keywords ***
Abrir Navegador
    IF  "${HANDLESS}"=="S"
        IF  "${BROWSER}"=="chrome" 
            
        ${options}=   Evaluate    sys.modules['selenium.webdriver'].ChromeOptions() 
        ...    sys, selenium.webdriver 
                
        Call Method     ${options}     add_argument    --headless 
        Call Method     ${options}     add_argument    --disable-gpu 
        Call Method     ${options}     add_argument    --no-sandbox 
        Call Method     ${options}     add_argument    --disable-dev-shm-usage 

        Open Browser    ${URL}       chrome    options=${options}
        
        ELSE IF  "${BROWSER}"=="firefox" 
        
        ${options}=   Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions() 
        ...    sys, selenium.webdriver 
                
        Call Method     ${options}     add_argument    --headless 

        Open Browser    ${URL}       firefox    options=${options}
        
        END
  
    ELSE IF  "${HANDLESS}"=="N"
        IF  "${BROWSER}"=="chrome" 
            Open Browser    ${URL}       chrome

        ELSE IF  "${BROWSER}"=="firefox" 
            Open Browser    ${URL}      firefox
        END
    END

    Maximize Browser Window


Fechar Navegador
    Capture Page Screenshot
    Close Browser