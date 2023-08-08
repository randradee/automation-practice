*** Settings ***
Resource    package.robot


*** Keywords ***
Abrir Navegador
    [Arguments]    ${URL}    ${BROWSER}=chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Fechar Navegador
    Close Browser