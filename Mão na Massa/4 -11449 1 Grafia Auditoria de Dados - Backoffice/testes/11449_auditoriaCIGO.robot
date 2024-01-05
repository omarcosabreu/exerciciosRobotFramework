*** Settings ***
Documentation    Esta suíte realiza o teste de verificação de grafia na rotina
...              Auditoria de Dados pois apresentava como esta como Auditoria de modificações
Resource         ../resources/auditoriaGIGO.resource
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Test Cases ***
Test Case 1 - 11449 Validar a Grafia Correta da Rotina Auditoria de Dados
    [Tags]             auditar   
    Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "admin@marcosabreu.com.br" e senha "1234"
    Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Acessar no menu Configurações => Auditoria de Dados
    O sistema exibi na tela o Titulo escrito como "Auditoria de dados" 

# Test Case 2 - 11449 Validar a Grafia Incorreta da Rotina Auditoria de Dados  
#     [Tags]             auditarFail 
#     Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "admin@marcosabreu.com.br" e senha "1234"
#     Clicar no botão de Login e verificar se o Login foi realizado com sucesso
#     Acessar no menu Configurações => Auditoria de Dados
#     O sistema não deve exibir na tela o Titulo escrito como "Auditoria de modificações"