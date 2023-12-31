*** Settings ***
Documentation   Exercício Dicionários
*** Variable ***

&{JOIASDOINFINITO}     Alma=Laranja    Tempo=Verde    Poder=Roxo    Espaço=Azul    Realidade=Vermelho    Mente=Amarelo 

*** Test Cases ***
Test Case Marvel
    As Joias do infinito

*** Keywords ***
As Joias do Infinito
    Log     A Joia do Tempo possui a cor ${JOIASDOINFINITO.Tempo}
    Log     A Joia do Espaço possui a cor ${JOIASDOINFINITO.Espaço}
    Log     A Joia do Poder possui a cor ${JOIASDOINFINITO.Poder}
    Log     A Joia da Alma possui a cor ${JOIASDOINFINITO.Alma}
    Log     A Joia da Realidade possui a cor ${JOIASDOINFINITO.Realidade}
    Log     A Joia da Mente possui a cor ${JOIASDOINFINITO.Mente}

    
