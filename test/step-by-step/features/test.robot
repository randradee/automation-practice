*** Settings ***
Resource    ../../../src/config/package.robot

Test Setup       Abrir Navegador    ${URL}
Test Teardown    Fechar Navegador

*** Variables ***
${URL}    https://www.automationexercise.com/


*** Test Cases ***
