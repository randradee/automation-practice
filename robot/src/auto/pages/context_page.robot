*** Settings ***
Resource    ../../config/package.robot

*** Variables ***
${POPUP_PROPAGANDA}                 tag:path
${POPUP_CLOSE_AD_EXCLUSAO}          xpath=//span[text()="Close"]/..
${POPUP_CLOSE_AD_EXCLUSAO_2}        id:dismiss-button