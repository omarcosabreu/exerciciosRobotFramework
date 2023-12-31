*** Settings ***
Documentation   Praticando IF com Loop FOR IN
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}
*** Variables ***
@{Numbers}   1  2  3  4  5  6  7  8  9  10  11  12

*** Test Case ***
A Pode ser 2 ou 7
    FOR    ${A}    IN   @{Numbers}
      IF  ${A} == 2
          Log To Console    A equivale ao número 2, Parabéns!
      ELSE IF  ${A} == 7
          Log To Console    A equivale ao número 7, Parabéns!
      ELSE
          Log To Console    Eu não sou o número 2 e nem o 7, tente novamente!
      END
  END