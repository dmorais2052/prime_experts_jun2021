*** Settings ***
Documentation    Suíte de Testes WEB - Site: http://automationpractice.com
Resource         resourceWebTesting.robot
Suite Setup      Abrir o Navegador
#Suite Teardown   Fechar o Navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente e adicioná-lo no carrinho
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
    Adicionar o produto "Blouse" no carrinho
    Conferir se o produto "Blouse" foi adicionado no carrinho

Caso de Teste 02: Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "PRODUTO" no campo de pesquisa
    Clicar no botão pesquisar
    

# Caso de Teste 03: Listar Produtos
#     Acessar a página home do site
#     Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
#     Clicar na sub categoria "Summer Dresses"
#     Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
   
# Caso de Teste 04: Adicionar Cliente
#     Acessar a página home do site
#     Clicar em "Sign in"
#     Informar um e-mail válido
#     Clicar em "Create an account"
#     Preencher os dados obrigatórios
#     Submeter cadastro