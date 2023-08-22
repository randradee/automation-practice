Language: Brazilian Portuguese
*** Settings ***
Resource         ../../../src/config/package.robot

Test Setup       Abrir Navegador    ${URL}
Test Teardown    Fechar Navegador

*** Variables ***
${URL}           https://www.automationexercise.com/


*** Test Cases ***
CT01:Realizar registro de novo usuário com sucesso
    [Etiquetas]    ct01
    Dado que esteja na página de signup/login
    Quando preencher o nome e endereço de email    ${DADOS}
    E acessar a página de signup
    E preencher todos os dados obrigatórios        ${DADOS}
    E clicar no botão de criar conta
    Então deve mostrar que a conta foi criada com sucesso

CT02:Realizar login com usuário e senha corretos
    [Etiquetas]    ct02
    Dado que esteja na página de signup/login
    Quando preencher o endereço de email e a senha    ${DADOS}
    E clicar no botão de realizar login
    Então deve exibir o nome do usuário como logado

CT03:Excluir conta com sucesso
    [Etiquetas]    ct03
    Dado que esteja logado na home page
    Quando clicar no link de excluir conta
    Então deve realizar a exclusão da conta com sucesso