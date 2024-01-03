*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections

*** Keywords ***
Criar um usuário novo
    ${NOME}              Generate Random String    length=5    chars=[LETTERS]
    ${NOME}              Convert To Lower Case     ${NOME}
    Set Test Variable    ${EMAIL}   ${NOME}@yahoo.com.br
    Log To Console       ${EMAIL}   

Cadastrar o usuário criado na ServeRest 
    [Arguments]    ${EMAIL2}  ${status_code_desejado}    
    ${body}        Create Dictionary    
    ...            nome=Fulano da Silva    
    ...            email=${EMAIL2}   
    ...            password=1234@  
    ...            administrador=true
  
    Criar Sessão na ServeRest
    ${response}    POST On Session    
    ...            alias=ServeRest   
    ...            url=/usuarios    
    ...            json=${body}  
    ...            expected_status=${status_code_desejado}
    Log    ${response.json()}  

    IF    ${response.status_code} == 201
          Set Test Variable    ${userId}           ${response.json()["_id"]}
    END

    Set Test Variable    ${finalResponse}    ${response.json()}

Criar Sessão na ServeRest
    ${headers}        Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest   url=https://serverest.dev     headers=${headers}
Realizar Login com o usuário
     ${body}    Create Dictionary
     ...        email=${email}   
     ...        password=1234@
     
     Criar Sessão na ServeRest

     ${response}    POST On Session    
    ...             alias=ServeRest   
    ...             url=/Login
    ...             json=${body}
    Log  ${response.json()}
    Set Test Variable    ${statusLogin}  ${response.json()}

Conferir se o Login ocorreu com sucesso
    Log    ${statusLogin}   
    Dictionary Should Contain Item    ${statusLogin}  message  Login realizado com sucesso
    Dictionary Should Contain Key     ${statusLogin}  authorization    