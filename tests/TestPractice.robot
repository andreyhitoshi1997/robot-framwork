*** Settings ***
Resource       ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

### Setup ele roda keywords antes da suite
##Teardown ele roda keywords depois de uma suite ou um teste

*** Test Case ***
Caso de Teste 01: Pesquisar produtos existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão de pesquisa
    Conferir se o produto "Blouse" foi listado no site

# Caso de Teste 02: Pesquisar produto não existente
#     Acessar a página home do site
#     Digitar o nome do produto "ItemNãoExistente" no campo de Pesquisa
#     Clicar no botão de pesquisa
#     Conferir mensagem de erro "No results were found for your search "ItemNãoExistente""

*** Keywords ***