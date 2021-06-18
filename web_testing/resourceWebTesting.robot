*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Library              SeleniumLibrary

*** Variables ***
${URL}      http://automationpractice.com/index.php


*** Keywords ***
## ---- SETUP
Abrir o navegador
    Open Browser  browser=chrome

## ---- TEARDOWN
Fechar o navegador
#    Close Browser

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo pesquisar
    Input Text     xpath=//input[@class='search_query form-control ac_input'][contains(@id,'top')]    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search
    
Conferir se o produto "${PRODUTO}" foi listado na pesquisa
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'Blouse')]

Adcionar o produto "${PRODUTO}" no carrinho
    Wait Until Element Is Visible    xpath=//span[contains(.,'Add to cart')]
    Click Element     xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text     xpath=//input[@class='search_query form-control ac_input'][contains(@id,'top')]    ${PRODUTO}

Conferir mensagem "${MENSAGEM}"
    Wait Until Element Is Visible    //p[@class='alert alert-warning']
    Element Should Contain    xpath=//p[@class='alert alert-warning']    ${MENSAGEM}

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Mouse Over    xpath=//a[contains(@title,'Women')]

Clicar na sub categoria "${SUBCATEGORIA}"
    Click Element   xpath=(//a[contains(@title,'Summer Dresses')])[1]

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Wait Until Element Is Visible   xpath=//span[@class='cat-name']
    Element Should Contain          xpath=//span[@class='category-name']    ${SUBCATEGORIA}

Clicar em "${CATEGORIA}"
    IF  '${CATEGORIA}' == 'Sign in'
        Click Element    xpath=//a[@class='login'][contains(.,'${CATEGORIA}')]
    ELSE
        Click Element    xpath=//span[contains(.,'${CATEGORIA}')]
    END

Informar um e-mail válido
    Input Text    id=email_create    daymorais2052@gmail.com

Preencher os dados obrigatórios
    Sleep    5s
    Wait Until Element Is Visible    xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
    Click Element                   xpath=//label[@for='id_gender2'][contains(.,'Mrs.')]
    Input Text    id=customer_firstname    Dayane
    Input Text    id=customer_lastname     Morais
    Input Text    id=email                 meuemailbrazuca@yahoo.com
    Input Text    id=passwd                998877
    Input Text    id=passwd                998877
    Input Text    id=firstname             Endereço
    Input Text    id=lastname              Comercial
    Input Text    id=address1              Avenida Victor Ferreira do Amaral
    Input Text    id=city                  Curitiba
    Select From List By Index    id_state    9
    Input Text    id=postcode              00000
    Select From List By Index    id_country    1
    Input Text    id=other                  123456
    Input Text    id=phone                 123456789
    Input Text    id=phone_mobile          123456789
    Input Text    id=alias                 Alias teste

Submeter cadastro
    Click Element    xpath=//span[contains(.,'Register')]

Conferir se o cadastro foi efetuado com sucesso
    Sleep    5s
    Wait Until Element Is Visible    xpath=//p[@class='info-account'][contains(.,'Welcome to your account. Here you can manage all of your personal information and orders.')]