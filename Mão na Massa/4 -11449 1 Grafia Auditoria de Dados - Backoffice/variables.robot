*** Variables ***
${URLDESENV}                    http://edesoftsa.dyndns.biz:2022/Account/Login
${URLHOMOLOG}                   http://edesoftsa.dyndns.biz:2023/Account/Login
${URLPROD}                      http://edesoftsa.dyndns.biz:2021/Account/Login

${VALIDALOGO}                   //img[contains(@alt,'Logo CIGO')]
${HOMEPAGE}                     //h1[@class='page-header'][contains(.,'Home Page')]
${BUTTON_LOGIN}                 //button[@type='submit'][contains(.,'Login')]
${BUTTON_NOVO}                  //i[contains(@class,'dx-icon fa fa-plus text-white')]

                                
${MENU_AUDITORIA}               (//div[contains(@class,'menu-text')])[9]  
${FILTROS}                      //h4[@class='panel-title'][contains(.,'Filtros')]
${DADOS}                        //h1[@class='page-header'][contains(.,'Auditoria de dados Log de modificações em dados do sistema')]
# ${GRAFIA_CERTA}                 ${DADOS}
# ${GRAFIA_ERRADA}                Auditoria de modificações



