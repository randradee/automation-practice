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
    Set Selenium Speed                 0.3
    Input Text     ${NEW_USER_NAME}                ${DADOS.nome}
    Input Text     ${NEW_USER_EMAIL}               ${DADOS.email}

acessar a página de signup
    Click Element    ${SIGNUP_BUTTON}
    Wait Until Page Contains           Enter Account Information

preencher todos os dados obrigatórios
    [Arguments]    ${DADOS}
    # Obs.: As keywords de Realizar rolagem da tela na vertical são uma gambiarra temporária
    # para evitar que aconteça Click Element Intercepted, pois a página sobe um elemento de propaganda acima do footer
    # durante a execução da automação
    Set Selenium Speed                      0.3
    Click Element                           ${GENERO_RB}
    Scroll Element Into View                ${SIGNUP_SENHA}
    Input Text                              ${SIGNUP_SENHA}                  ${DADOS.senha}
    Realizar rolagem da tela na vertical    100
    Select From List By Value               ${DIA_NASC_CB}                   ${DADOS.dia_nasc}
    Select From List By Value               ${MES_NASC_CB}                   ${DADOS.mes_nasc}
    Select From List By Value               ${ANO_NASC_CB}                   ${DADOS.ano_nasc}
    Realizar rolagem da tela na vertical    100
    Select Checkbox                         ${NEWSLETTER_CHK}
    Select Checkbox                         ${RECEIVE_OFFERS_CHK}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_PRIMEIRO_NOME}          ${DADOS.primeiro_nome}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_SOBRENOME}              ${DADOS.sobrenome}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_EMPRESA}                ${DADOS.empresa}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_ENDERECO_1}             ${DADOS.endereco_linha_1}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_ENDERECO_2}             ${DADOS.endereco_linha_2}
    Realizar rolagem da tela na vertical    100
    Select From List By Value               ${SIGNUP_PAIS}                   ${DADOS.pais}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_ESTADO}                 ${DADOS.estado}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_CIDADE}                 ${DADOS.cidade}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_CEP}                    ${DADOS.cep}
    Realizar rolagem da tela na vertical    100
    Input Text                              ${SIGNUP_CELULAR}                ${DADOS.celular}

clicar no botão de criar conta
    Scroll Element Into View                ${CREATE_ACCOUNT_BTN}
    Click Button                            ${CREATE_ACCOUNT_BTN}

deve mostrar que a conta foi criada com sucesso
    Wait Until Page Contains                Account Created!

preencher o endereço de email e a senha
    [Arguments]    ${DADOS}
    Set Selenium Speed                      0.3
    Input Text                              ${LOGIN_EMAIL}                   ${DADOS.email}
    Input Text                              ${LOGIN_PASSWORD}                ${DADOS.senha}

clicar no botão de realizar login
    Click Element                           ${LOGIN_BUTTON}

deve exibir o nome do usuário como logado
    Wait Until Page Contains                ${DADOS.nome}