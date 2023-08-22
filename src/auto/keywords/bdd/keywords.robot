*** Settings ***
Resource    ../../../config/package.robot

*** Keywords ***
que esteja na página de signup/login
    # Validar que esteja na home page
    Wait Until Element Is Visible          ${HOME_CAROUSEL}                  10
    # Navegar até a página de signup/login
    Wait Until Element Is Visible          ${SIGNUP_LOGIN_ANCHOR}            10
    Click Link                             ${SIGNUP_LOGIN_ANCHOR}
    Wait Until Element Is Visible          ${NEW_USER_SIGNUP_TEXT}           10
    
preencher o nome e endereço de email
    [Arguments]    ${DADOS}
    Set Selenium Speed                 0.2
    Input Text     ${NEW_USER_NAME}                ${DADOS.nome}
    Input Text     ${NEW_USER_EMAIL}               ${DADOS.email}

acessar a página de signup
    Click Element    ${SIGNUP_BUTTON}
    Wait Until Page Contains           Enter Account Information

preencher todos os dados obrigatórios
    [Arguments]    ${DADOS}
    Set Selenium Speed                 0.2
    Click Element                      ${GENERO_RB}
    Scroll Element Into View           ${SIGNUP_SENHA}
    Input Text                         ${SIGNUP_SENHA}                  ${DADOS.senha}
    Scroll Element Into View           ${DIA_NASC_CB}
    Select From List By Value          ${DIA_NASC_CB}                   ${DADOS.dia_nasc}
    Select From List By Value          ${MES_NASC_CB}                   ${DADOS.mes_nasc}
    Select From List By Value          ${ANO_NASC_CB}                   ${DADOS.ano_nasc}
    Scroll Element Into View           ${NEWSLETTER_CHK}
    Select Checkbox                    ${NEWSLETTER_CHK}
    Scroll Element Into View           ${RECEIVE_OFFERS_CHK}
    Select Checkbox                    ${RECEIVE_OFFERS_CHK}
    Scroll Element Into View           ${SIGNUP_PRIMEIRO_NOME}
    Input Text                         ${SIGNUP_PRIMEIRO_NOME}          ${DADOS.primeiro_nome}
    Scroll Element Into View           ${SIGNUP_SOBRENOME}
    Input Text                         ${SIGNUP_SOBRENOME}              ${DADOS.sobrenome}
    Scroll Element Into View           ${SIGNUP_EMPRESA}
    Input Text                         ${SIGNUP_EMPRESA}                ${DADOS.empresa}
    Scroll Element Into View           ${SIGNUP_ENDERECO_1}
    Input Text                         ${SIGNUP_ENDERECO_1}             ${DADOS.endereco_linha_1}
    Scroll Element Into View           ${SIGNUP_ENDERECO_2}
    Input Text                         ${SIGNUP_ENDERECO_2}             ${DADOS.endereco_linha_2}
    Scroll Element Into View           ${SIGNUP_PAIS}
    Select From List By Value          ${SIGNUP_PAIS}                   ${DADOS.pais}
    Scroll Element Into View           ${SIGNUP_ESTADO}
    Input Text                         ${SIGNUP_ESTADO}                 ${DADOS.estado}
    Scroll Element Into View           ${SIGNUP_CEP}
    Input Text                         ${SIGNUP_CEP}                    ${DADOS.cep}
    Scroll Element Into View           ${SIGNUP_CELULAR}
    Input Text                         ${SIGNUP_CELULAR}                ${DADOS.celular}

clicar no botão de criar conta
    Click Button                       ${CREATE_ACCOUNT_BTN}

deve mostrar que a conta foi criada com sucesso
    Wait Until Page Contains           Account Created!