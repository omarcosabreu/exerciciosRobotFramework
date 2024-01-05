*** Settings ***
Library        SeleniumLibrary
Library        String
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
    Click Button    locator=${BUTTON_LOGIN}   
    Wait Until Element Is Visible    locator=${HOMEPAGE}     
    Element Should Be Visible        locator=${HOMEPAGE}
    
Acessar no menu Configurações => Auditoria de Dados
    Scroll Element Into View         locator=${MENU_AUDITORIA} 
    Click Element                    locator=${MENU_AUDITORIA}  
    Wait Until Element Is Visible    locator=${FILTROS}  

O sistema exibi na tela o Titulo escrito como "Auditoria de dados" 
    Sleep                            2s
    Element Should Be Visible        locator=${DADOS} 
    Capture Page Screenshot 
    # ${Dados}    Set Test Variable    ${GRAFIA}
    
# O sistema não deve exibir na tela o Titulo escrito como "${GRAFIA_ERRADA}"
#     IF  
      
#     ELSE
        
#     END
