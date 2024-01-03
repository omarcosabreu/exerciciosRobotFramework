*** Settings ***
Documentation    Esta suíte realiza o teste de login no sistema CIGO
...              em ambiente de Desenvolvimento
Resource         ../resources/loginGIGO.resource
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
Test Case 1 - Teste Login no sistema Backoffice CIGO com sucesso
    [Documentation]    Esse teste verifica o acesso ao sistema Backoffice CIGO
    [Tags]             backoffice   
    Acessar a home page do site "CIGO" 
    Informar os dados de login corporação "marcosabreu", email "admin@marcosabreu.com.br" e senha "1234"
    Clicar no botão de Login
    Verificar se o Login foi realizado com sucesso 

Test Case 2 - Teste Login no sistema Backoffice CIGO com falha    
    [Documentation]    Esse teste verifica a falha no acesso ao sistema Backoffice CIGO
    [Tags]             backofficeOff 
    Acessar a home page do site "CIGO" 
    Informar os dados de login corporação "marcosabreu", email "admin@marcos.com" e senha "1234"
    Clicar no botão de Login
    Verificar se o Login falhou 

Test Case 3 - Teste Login no sistema ERP CIGO com sucesso
    [Documentation]    Esse teste verifica o acesso ao sistema ERP CIGO
    [Tags]             erp  
    Acessar a home page do site "CIGO" 
    Informar os dados de login corporação "marcosabreu", email "marcos.abreu@edesoft.com.br" e senha "223344"
    Clicar no botão de Login
    Verificar se o Login foi realizado com sucesso

Test Case 4 - Teste Login no sistema ERP CIGO com falha    
    [Documentation]    Esse teste verifica a falha no acesso ao sistema ERP CIGO
    [Tags]             erpOff    
    Acessar a home page do site "CIGO" 
    Informar os dados de login corporação "marcosabreu", email "marcosabreu@edesoft.com" e senha "223344"
    Clicar no botão de Login
    Verificar se o Login falhou 