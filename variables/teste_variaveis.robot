*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
${MENSAGEM}    Hello World!
${NUMERO}    ${10}
${BOLLEAN}    ${true}
# ${BOLLEAN}    ${false}
&{PESSOA}        nome=Dayane    sobrenome=Morais    idade=34
@{FRUTAS}        banana    maça    laranja


*** Test Cases ***
Meu teste de impressão de mensagem de terminal
    Logar no meu terminal uma mensagem
    Logar to Console    ${nova_fruta}

Meu teste imprimindo um dicionário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!

Logar no meu terminal uma LISTA DE FRUTAS
    ## Declaro localmente uma nova variável
    ${outra_fruta}        Set Variable    abacaxi
    Set test Variable     ${nova_fruta}     morango
    Log To Console        ${\n}
    Log To Console        ${FRUTAS}
    Log Many              ${FRUTAS}
    Log To Console        ${nova_fruta}-${outra_fruta}