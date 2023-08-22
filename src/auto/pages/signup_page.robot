*** Settings ***
Resource    ../../config/package.robot

*** Variables ***

## Inputs ##
${SIGNUP_SENHA}                      id:password
${SIGNUP_PRIMEIRO_NOME}              id:first_name
${SIGNUP_SOBRENOME}                  id:last_name
${SIGNUP_EMPRESA}                    id:company
${SIGNUP_ENDERECO_1}                 id:address1
${SIGNUP_ENDERECO_2}                 id:address2
${SIGNUP_PAIS}                       id:country
${SIGNUP_CIDADE}                     id:city
${SIGNUP_ESTADO}                     id:state
${SIGNUP_CEP}                        id:zipcode
${SIGNUP_CELULAR}                    id:mobile_number

## Buttons ##
${GENERO_RB}                         xpath=//input[@type="radio" and @value="${DADOS.titulo_genero}"]
${CREATE_ACCOUNT_BTN}                xpath=//button[@data-qa="create-account"]

## Checkboxes ##
${NEWSLETTER_CHK}                    id:newsletter
${RECEIVE_OFFERS_CHK}                id:optin

## Comboboxes ##
${DIA_NASC_CB}                       id:days
${MES_NASC_CB}                       id:months
${ANO_NASC_CB}                       id:years

## Validação ##
${SIGNUP_PAGE_VALIDACAO}            xpath=//h2[text()="Enter Account Information"]