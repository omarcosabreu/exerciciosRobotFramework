*** Settings ***
Documentation    Esta suíte realiza o teste Mensagem quebrando o campo Input Operador
...              no sistema CIGO
Resource         ../resources/loginGIGO.resource
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
Test Case 1 - 11474 Operador de Caixa Positivo
    [Documentation]    Esse teste verifica a inclusão do cadastro de operador de caixa com sucesso
    [Tags]             operador   
    Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "marcos.abreu@edesoft.com.br" e senha "223344"
    Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Acessar no menu Cadastros => Operador de Caixa
    Clicar no botão "+ Novo"
    Clicar no botão F2 e anexar um Operador
    Clicar em Salvar
    Verificar o cadastro no Grid


Test Case 2 - 11474 Operador de Caixa Negativo(Sem incluir o Operador)   
    [Documentation]    Esse teste verifica a tentativa do cadastro de operador de caixa sem informar o operador
    [Tags]             operadorOff 
    Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "marcos.abreu@edesoft.com.br" e senha "223344"
    Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Acessar no menu Cadastros => Operador de Caixa
    Clicar no botão "+ Novo"
    Clicar em Salvar
    Validar Obrigatoriedade