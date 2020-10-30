*** Settings ***
Documentation    Sikuli Library Demo
Test Setup       Carrega diretório de imagens
#Test Teardown    Stop Remote Server
Library          SikuliLibrary
Library          OperatingSystem

*** Variables ***
${IMAGE_DIR}    ..${/}img${/}calculadora

*** Test Cases ***
Utilizar a Calculadora
    Quando o usuario clicar na calculadora na área de trabalho
    E digitar o valor 9
    E clicar no botão multiplicação
    E digitar o valor 2
    E clicar no botão igual
    Então o usuário deverá visualizar o valor 18

*** Keywords ***
Carrega diretório de imagens
    Add Image Path    ${IMAGE_DIR}

Quando o usuario clicar na calculadora na área de trabalho
    Set timeout              15
    Click    icone_calculadora.png 

E digitar o valor 9
    Click   botao_nove.png

E clicar no botão multiplicação
    Click   botao_multiplicacao.png

E digitar o valor 2
    Click   botao_dois.png

E clicar no botão igual
    Click   botao_igual.png

Então o usuário deverá visualizar o valor 18
    Screen Should Contain    saida_dezoito.png