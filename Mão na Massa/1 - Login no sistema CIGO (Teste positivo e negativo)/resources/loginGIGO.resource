*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URLDESENV}            http://edesoftsa.dyndns.biz:2022/Account/Login
${URLHOMOLOG}           http://edesoftsa.dyndns.biz:2023/Account/Login
${URLPROD}              http://edesoftsa.dyndns.biz:2021/Account/Login
${VALIDALOGO}           //img[contains(@alt,'Logo CIGO')]
${BUTTON}               //button[@type='submit'][contains(.,'Login')]
${HOMEPAGE}             //h1[@class='page-header'][contains(.,'Home Page')]
${DADOSINVALIDOS}       //div[@class='alert alert-danger fade show'][contains(.,'Usuário ou senha inválido!')]

*** Keywords ***
Abrir o Navegador
    Open Browser        browser=chrome
    Maximize Browser Window
    
Fechar o Navegador
    Close Browser
    Capture Page Screenshot

Acessar a home page do site "CIGO"         
    Go To    url=${URLDESENV}
    Wait Until Element Is Visible    ${VALIDALOGO}

Informar os dados de login corporação "${CORPORACAO}", email "${EMAIL}" e senha "${SENHA}"
    Input Text        locator=//input[contains(@id,'corp')]    text=${CORPORACAO}
    Input Text        locator=//input[contains(@id,'emailAddress')]    text=${EMAIL}
    Input Password    locator=//input[contains(@id,'password')]    password=${SENHA}

Clicar no botão de Login
    Click Button    locator=${BUTTON}  

Verificar se o Login foi realizado com sucesso
    Wait Until Element Is Visible    locator=${HOMEPAGE}     
    Element Should Be Visible        locator=${HOMEPAGE}

Verificar se o Login falhou     
    Wait Until Element Is Visible    locator=${DADOSINVALIDOS}     
    Element Should Be Visible        locator=${DADOSINVALIDOS}        
        