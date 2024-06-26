*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
    [Documentation]     Esse teste verifica o menu Iphone do site da pontofrio.com
    ...                 e verifica a categoria Desconto
    [Tags]              menus categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Livros"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se o título da página fica "Livros | Amazon.com.br"
    Verificar se aparece a categoria "Livro em Ofertas"


Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto            
    [Tags]             busca_produtos lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa 
    Verificar o resultado da pesquisa, listando o produto "Amazon.com.br : Xbox Series S"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso