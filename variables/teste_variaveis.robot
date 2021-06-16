*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
${MENSAGEM}    Hello World!
${NUMERO}    ${10}

*** Test Cases ***
Meu teste de impressão de mensagem de terminal
    Logar no meu terminal uma mensagem

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}