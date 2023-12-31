*** Settings ***
Documentation   Exercicios com argumentos

*** Variable ***
&{PESSOA}       NOME=marcos  SOBRENOME=abreu  

*** Test Cases ***
Criação de Email
    Coleta de dados pessoais
*** Keywords ***
Coleta de dados pessoais
    ${EMAIL}    Dados para o email   ${PESSOA.NOME}   ${PESSOA.SOBRENOME}
    Log     ${EMAIL}

Dados para o email
    [Arguments]     ${NOME}   ${SOBRENOME}
    ${RESULTS}      Set Variable     ${NOME}${SOBRENOME}@gmail.com
    [Return]        ${RESULTS}
