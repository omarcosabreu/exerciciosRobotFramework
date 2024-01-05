*** Settings ***
Library        SeleniumLibrary
Library    String
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
    
Acessar no menu Produto => Produto
    Scroll Element Into View         locator=${MENU_PRODUTO} 
    Click Element                    locator=${MENU_PRODUTO}  
    Wait Until Element Is Visible    locator=${TITLE_PRODUTO}

Clicar no botão "+ Novo"   
    Sleep                            5s
    Click Element                    locator=${BUTTON_NOVO}
    Wait Until Element Is Visible    locator=${TITLE_CADASTRO_PRODUTO}  

Preencher todos os campos obrigatórios
    ${NOME_PRODUTO}          Generate Random String            chars=[LETTERS]
    Convert To Upper Case    ${NOME_PRODUTO}
    Input Text               locator=${INPUT_NOME_PRODUTO}     text=${NOME_PRODUTO}  

    ${MARCA_PRODUTO}          Generate Random String            chars=[LETTERS]  
    Convert To Upper Case     ${MARCA_PRODUTO}
    Click Element             locator=${EDIT_BUTTON_MARCA} 
    Sleep                     3s       
    Input Text                locator=${INPUT_MARCA_PRODUTO}    text=${MARCA_PRODUTO}
    Click Element    locator=${BUTTON_SAVE} 

    ${UND_MEDIDA}            Generate Random String            chars=[LETTERS]
    ${NOME_NFCe/NFe}         Generate Random String            chars=[LETTERS]
    Convert To Upper Case    ${UND_MEDIDA}
    Convert To Upper Case    ${NOME_NFCe/NFe}
    Click Element            locator=${EDIT_BUTTON_UNIDADE}
    Sleep                    3s     
    Input Text               locator=${INPUT_UNIDADE}          text=${UND_MEDIDA}
    Input Text               locator=${INPUT_NFE}              text=${NOME_NFCe/NFe}  
    Click Element            locator=${BUTTON_SAVE} 

    ${NOME_GRUPOPROD}        Generate Random String            chars=[LETTERS]
    Convert To Upper Case    ${NOME_GRUPOPROD}
    Click Element            locator=${EDIT_BUTTON_GRUPO} 
    Sleep                    3s
    Input Text               locator=${INPUT_GRUPO}            text=${NOME_GRUPOPROD}
    Click Element            locator=${BUTTON_SAVE} 

    ${VALOR}                 Generate Random String            chars=[NUMBERS]
    Input Text               locator=${INPUT_VALORVENDA}       text=${VALOR} 

Clicar em Salvar
    Sleep                            3s
    Click Element                    locator=${SAVE}   

Verificar o cadastro no Grid  
    Sleep                            4s
    Element Should Be Visible        locator=${PRODUTO} 
    Capture Page Screenshot
    
Validar Alert e Cancelar Cadastro
    Wait Until Element Is Visible    locator=${ALERT_PRODUTO}
    Element Should Be Visible        locator=${BUTTON_OK}
    Sleep                            3s    
    Capture Page Screenshot 
    Click Element                    locator=${BUTTON_OK}
    Click Element                    locator=${BUTTON_CANCEL}                
     