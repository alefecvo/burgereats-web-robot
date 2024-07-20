*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${LBL_TITULO_PAGINA_INICIAL}          Buger Eats
${LBL_DESCRICAO_PAGINA_INICIAL}       xpath=//*[contains(text(),'Seja um parceiro entregador pela Buger Eats')]
${BTN_CADASTRAR_PAGINA_INICIAL}       xpath=//*[contains(text(),'Cadastre-se para fazer entregas')]

*** Keywords ***
Verificar Título da Página Inicial
    [Arguments]    ${expected_title}=${LBL_TITULO_PAGINA_INICIAL}
    Title Should Be    ${expected_title}

Verificar Descrição da Página Inicial
    [Arguments]    ${expected_description}=${LBL_DESCRICAO_PAGINA_INICIAL}
    Wait Until Element Contains    ${expected_description}        Seja um parceiro entregador pela Buger Eats

Acionar botão cadastrar
    [Arguments]    ${expected_button}=${BTN_CADASTRAR_PAGINA_INICIAL}
    Click Element    ${expected_button}
