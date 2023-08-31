*** Settings ***
Resource    package.robot


*** Keywords ***
Abrir Navegador
    [Arguments]    ${URL}=about:blank    ${BROWSER}=chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Fechar Navegador
    Close Browser

Remover propaganda
    [Arguments]    ${TEMPO}
    ${isVisible}    Run Keyword And Return Status    Wait Until Element Is Visible    ${POPUP_PROPAGANDA}    ${TEMPO}
    IF    ${isVisible} == True
        Click Element    ${POPUP_PROPAGANDA}
    END

Realizar rolagem da tela na vertical
    [Arguments]    ${DISTANCIA}
    Execute Javascript    window.scrollTo(0, window.scrollY+${DISTANCIA})