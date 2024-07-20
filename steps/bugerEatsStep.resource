*** Settings ***
Resource   ../pages/allPages.resource
Resource    ../resources/main.resource


*** Keywords ***
Dado que estou no site Burger Eats
    Verificar Título da Página Inicial
    Verificar Descrição da Página Inicial

Quando acessar a página inicial
    Acionar botão cadastrar
 
Então devo validar cadastro feito com sucesso
    Verificar Título da Página de Cadastro
    Verificar Descrição da Página de Cadastro
      