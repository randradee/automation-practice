Language: Brazilian Portuguese
*** Settings ***
Resource         ../../../src/config/package.robot

Test Setup       Abrir Navegador    ${URL}
Test Teardown    Fechar Navegador

*** Variables ***
${URL}           https://www.automationexercise.com/


*** Test Cases ***
CT01:Realizar registro de novo usuário com sucesso
    [Etiquetas]    CT01
    Dado que esteja na página de signup/login
    Quando preencher o nome e endereço de email    ${DADOS}
    E acessar a página de signup
    E preencher todos os dados obrigatórios        ${DADOS}
    E clicar no botão de criar conta
    Então deve mostrar que a conta foi criada com sucesso