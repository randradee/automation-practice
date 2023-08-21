*** Settings ***
Resource    package.robot


*** Keywords ***
Abrir Navegador
    [Arguments]    ${URL}=about:blank    ${BROWSER}=chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Fechar Navegador
    Close Browser