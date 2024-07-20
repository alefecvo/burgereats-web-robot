*** Settings ***
Library    SeleniumLibrary

Resource   ../resources/main.resource
Resource   ../steps/bugerEatsStep.resource

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador


*** Test Cases ***
Deve realizar cadastro com sucesso
    [Documentation]    Este é um caso de teste para validação de cadastro com sucesso
    [Tags]    buger-eats
    Dado que estou no site Burger Eats
    Quando acessar a página inicial
    Então devo validar cadastro feito com sucesso