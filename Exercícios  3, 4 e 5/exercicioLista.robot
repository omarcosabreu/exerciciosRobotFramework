*** Settings ***
Documentation   Exercício Lista
*** Variable ***
@{FRUTAS}    morango  banana  maçã  uva  abacaxi
@{LEGUMES}    batata  beterraba  cenoura
# @{MES}   Janeiro  Fevereiro  Março  Abril  Maio  Junho  Julho   Agosto  Setembro  Outubro  Novembro  Dezembro 

*** Test Cases ***
Lista de frutas e legumes da semana
    Compre esses itens

*** Keywords ***
Compre esses itens
    Log    De legumes quero 2 ${LEGUMES[2]} e 2kg de ${LEGUMES[0]}
    Log    De frutas quero 2 placa de ${FRUTAS[0]} e 1 placa de ${FRUTAS[3]}

