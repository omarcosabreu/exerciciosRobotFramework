*** Settings ***
Resource    ../Resources/api_login.resource

*** Test Cases ***
Cenário 01: Fazendo Login na ServeRest com sucesso
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest    ${EMAIL}    status_code_desejado=201
    Realizar Login com o usuário
    Conferir se o Login ocorreu com sucesso