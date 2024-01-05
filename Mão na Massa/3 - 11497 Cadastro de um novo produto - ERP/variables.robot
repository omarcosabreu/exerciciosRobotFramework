*** Variables ***
${URLDESENV}                    http://edesoftsa.dyndns.biz:2022/Account/Login
${URLHOMOLOG}                   http://edesoftsa.dyndns.biz:2023/Account/Login
${URLPROD}                      http://edesoftsa.dyndns.biz:2021/Account/Login

${VALIDALOGO}                   //img[contains(@alt,'Logo CIGO')]
${HOMEPAGE}                     //h1[@class='page-header'][contains(.,'Home Page')]
${BUTTON_LOGIN}                 //button[@type='submit'][contains(.,'Login')]
${BUTTON_NOVO}                  //i[contains(@class,'dx-icon fa fa-plus text-white')]

${BUTTON_SAVE}                  (//a[@href='javascript:;'][contains(.,'Salvar')])[2]
${SAVE}                         //a[@href='javascript:;'][contains(.,'Salvar')] 
                                
${MENU_PRODUTO}                 (//div[@class='menu-text'][contains(.,'Produto')])[2]  
${TITLE_PRODUTO}                //li[@class='breadcrumb-item template'][contains(.,'Produto')]
${TITLE_CADASTRO_PRODUTO}       //h4[@class='modal-title'][contains(.,'Cadastro de Produto')]
${PRODUTO}                             (//td[contains(@aria-describedby,'dx-col-16')])[2]

${INPUT_NOME_PRODUTO}           //input[contains(@class,'form-control edt-nome-produto')]
${INPUT_MARCA_PRODUTO}          (//input[contains(@data-parsley-trigger,'change')])[14]       
${INPUT_UNIDADE}                //input[contains(@class,'form-control edt-nome-unidade-medida')]  
${INPUT_NFE}                    (//input[contains(@data-parsley-trigger,'change')])[15]            
${INPUT_GRUPO}                  (//input[contains(@data-parsley-trigger,'change')])[14]
${INPUT_VALORVENDA}             (//input[contains(@data-parsley-trigger,'change')])[7]

${EDIT_BUTTON_MARCA}            //button[contains(@class,'btn btn-outline-secondary btn-inserir-marca')]
${EDIT_BUTTON_UNIDADE}          //button[contains(@class,'btn btn-outline-secondary btn-inserir-unidade-medida')]
${EDIT_BUTTON_GRUPO}            //button[contains(@class,'btn btn-outline-secondary btn-inserir-grupo-produto')]

${ALERT_PRODUTO}                //div[@class='swal2-html-container popup-htmlContainer'][contains(.,'Nome não pode ser vazio')]
${BUTTON_OK}                    //button[@type='button'][contains(.,'OK')]
${BUTTON_CANCEL}                (//a[@href='javascript:;'][contains(.,'Cancelar')])[1]