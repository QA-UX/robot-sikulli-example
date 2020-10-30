*** Settings ***
Documentation    Sikuli Library Demo
Test Setup       Carrega diretório de imagens
Test Teardown    Stop Remote Server
Library          SikuliLibrary
Library          OperatingSystem

*** Variables ***
${IMAGE_DIR}    ..${/}img${/}libreoffice

*** Test Cases ***
Utilizar o Libreoffice
    Quando o usuario clicar no libreoffice na área de trabalho
    E clicar no botão de negrito
    E digitar "Ola, eu sou o Sikulli com Robot Framework"
    Então deve aparecer a mensagem Ola, eu sou o Sikulli com Robot Framework

*** Keywords ***
Carrega diretório de imagens
    Add Image Path    ${IMAGE_DIR}

Quando o usuario clicar no libreoffice na área de trabalho
    Set timeout              15
    Click    icone_libreoffice.png 

E clicar no botão de negrito
    Click   botao_negrito.png

E digitar "${TEXTO}"
    Set timeout              15
    Input Text    cursor.png    ${TEXTO}

Então deve aparecer a mensagem Ola, eu sou o Sikulli com Robot Framework
    Screen Should Contain       saida_ola.png



