*** Settings ***
Library        SeleniumLibrary
Resource       ../variables.robot

*** Keywords ***
Abrir o Navegador
    Open Browser        browser=chrome
    Maximize Browser Window
    
Fechar o Navegador
    Close Browser
    Capture Page Screenshot

Acessar sistema "CIGO" ERP com os dados corporação "${CORPORACAO}", email "${EMAIL}" e senha "${SENHA}"        
    Go To    url=${URLDESENV}
    Wait Until Element Is Visible    ${VALIDALOGO}
    Input Text        locator=//input[contains(@id,'corp')]    text=${CORPORACAO}
    Input Text        locator=//input[contains(@id,'emailAddress')]    text=${EMAIL}
    Input Password    locator=//input[contains(@id,'password')]    password=${SENHA}

Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Click Button    locator=${BUTTON}  
    Wait Until Element Is Visible    locator=${HOMEPAGE}     
    Element Should Be Visible        locator=${HOMEPAGE}
    
Acessar no menu Cadastros => Operador de Caixa
    Scroll Element Into View         locator=${OPERADORCAIXA}
    Click Element                    locator=${OPERADORCAIXA}   
    Wait Until Element Is Visible    locator=${TITLEOPERADOR}

Clicar no botão "+ Novo"   
    Sleep                            5s
    Click Element                    locator=${BUTTON_NOVO_OPERADOR}
    Wait Until Element Is Visible    locator=${TITLE_CADASTRO_OPERADOR}     

Clicar no botão F2 e anexar um Operador
    Click Button                     locator=${BUTTON_F2}  
    Wait Until Element Is Visible    locator=${TITLESEARCH}
    Click Element                    locator=${SELECIONAR}

    # IF    ${SELECIONAR} == ${SELECIONAR}
    #     Click Element                    locator=${SELECIONAR}
    # ELSE
    #     Click Element                    locator=${BUTTON_CANCELAR}
    # END  
Clicar em Salvar
    Wait Until Element Is Visible    locator=${TITLE_CADASTRO_OPERADOR}
    Click Element                    locator=${BUTTON_SALVAR}   

Verificar o cadastro no Grid  
    Sleep                            4s
    Element Should Be Visible    locator=${PESSOA} 
    Capture Page Screenshot
    
Validar Obrigatoriedade
    Wait Until Element Is Visible    locator=${OBRIGATORIO}
    Element Should Be Visible        locator=${OBRIGATORIO}     
    Capture Page Screenshot  