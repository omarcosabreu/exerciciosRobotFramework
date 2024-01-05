*** Settings ***
Documentation    Esta suíte realiza o teste de cadastro de Produto no sistema CIGO
...              Na rotina Produtos, ao tentar cadastrar um novo produto a seguinte 
...              mensagem é apresentada: "Referência de objeto não definida para uma 
...              instância de um objeto."
...    
Resource         ../resources/produtoGIGO.resource
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Test Cases ***
Test Case 1 - 11497 Cadastro de Produto - Positivo
    [Documentation]    Esse teste verifica o cadastro de produto com sucesso
    [Tags]             produto   
    Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "marcos.abreu@edesoft.com.br" e senha "223344"
    Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Acessar no menu Produto => Produto
    Clicar no botão "+ Novo"
    Preencher todos os campos obrigatórios
    Clicar em Salvar
    Verificar o cadastro no Grid


Test Case 2 - 11497 Cadastro de Produto - Negativo(Sem incluir o Produto)  
    [Documentation]    Esse teste verifica a tentativa do cadastro de operador de caixa sem informar o operador
    [Tags]             operadorOff 
    Acessar sistema "CIGO" ERP com os dados corporação "marcosabreu", email "marcos.abreu@edesoft.com.br" e senha "223344"
    Clicar no botão de Login e verificar se o Login foi realizado com sucesso
    Acessar no menu Produto => Produto
    Clicar no botão "+ Novo"
    Clicar em Salvar
    Validar Alert e Cancelar Cadastro