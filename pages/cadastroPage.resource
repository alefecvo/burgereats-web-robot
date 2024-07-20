*** Settings ***

Library    SeleniumLibrary


*** Variables ***
${LBL_TITULO_PAGINA_CADASTRO}          Buger Eats
${LBL_DESCRICAO_PAGINA_CADASTRO}       xpath=//*[contains(text(),'Cadastre-se para ')]

*** Keywords ***
Verificar Título da Página de Cadastro
    [Arguments]    ${expected_title}=${LBL_TITULO_PAGINA_CADASTRO}
    Title Should Be    ${expected_title}

Verificar Descrição da Página de Cadastro
    [Arguments]    ${expected_description}=${LBL_DESCRICAO_PAGINA_CADASTRO}
    Wait Until Element Contains    ${expected_description}      Cadastre-se para        10
    
