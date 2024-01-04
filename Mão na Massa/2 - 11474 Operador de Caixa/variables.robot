*** Variables ***
${URLDESENV}                    http://edesoftsa.dyndns.biz:2022/Account/Login
${URLHOMOLOG}                   http://edesoftsa.dyndns.biz:2023/Account/Login
${URLPROD}                      http://edesoftsa.dyndns.biz:2021/Account/Login

${VALIDALOGO}                   //img[contains(@alt,'Logo CIGO')]

${HOMEPAGE}                     //h1[@class='page-header'][contains(.,'Home Page')]
${OPERADORCAIXA}                //div[@class='menu-text'][contains(.,'Operador de Caixa')]

${TITLEOPERADOR}                //li[@class='breadcrumb-item template'][contains(.,'Operador de Caixa')]
${TITLESEARCH}                  //h4[@class='modal-title'][contains(.,'Pesquisa de Operador')]
${TITLE_CADASTRO_OPERADOR}      //h4[@class='modal-title'][contains(.,'Cadastro de Operador de Caixa')]

${SELECIONAR}                   //i[contains(@title,'Selecionar')]
${PESSOA}                       (//td[contains(@aria-describedby,'dx-col-9')])[2]

${BUTTON}                       //button[@type='submit'][contains(.,'Login')]
${BUTTON_SALVAR}                //a[@href='javascript:;'][contains(.,'Salvar')]
${BUTTON_CANCELAR}              (//a[@href='javascript:;'][contains(.,'Cancelar')])[3]
${BUTTON_F2}                    //button[@type='button'][contains(.,'F2')] 
${BUTTON_NOVO_OPERADOR}         //div[@class='dx-button-content'][contains(.,'Novo')]

${OBRIGATORIO}                  //li[@class='parsley-required'][contains(.,'Esse campo é obrigatório.')]