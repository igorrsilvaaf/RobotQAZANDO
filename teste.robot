*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${site_url}  https://automationpratice.com.br/
${url_tkm}  https://ticketmais.com.br/
${user_email}  #adiciona seu user
${user_senha}  #adiciona sua senha
${sleep_3s}  3s
${sleep_5s}  5s 
${user_email_tkm}  #adiciona seu user
${user_senha_tkm}  #adiciona sua senha



*** Keywords ***
Acessar site da QAZANDO
    Open Browser  ${site_url}  chrome

Sleep de 5s
    Sleep  ${sleep_5s}

Clicar no botão de login
    Click Element  //*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a

Inserir Email
    Input Text  id:user  ${user_email}

Inserir Senha
    Input Text    id:password  ${user_senha}

CLicar no botão para realziar login
    Click Button  id:btnLogin

Acessar site da Ticket Mais
    Open Browser  ${url_tkm}

Sleep de 3s 
    Sleep  ${sleep_3s}

Clicando no botao de login
    Click Element    xpath=//a[@class='btn-login']

Inserir Email_tkm
    Input Text  id:username  ${user_email_tkm}

Inserir Senha_tkm
    Input Text  id:password  ${user_senha_tkm}

Entrar na minha conta
    Click Button  xpath=//input[@class='btn btn-info btn-block btn-large']

*** Test Cases ***
Cenário 1: Acessando o site da QAZANDO
    Acessar site da QAZANDO
    Sleep de 5s
    Clicar no botão de login
    Sleep de 3s 
    Inserir Email
    Inserir Senha
    CLicar no botão para realziar login
    Sleep de 3s 

Cenário 2: Abrindo site ticket mais
    Acessar site da Ticket Mais
    Sleep de 5s
    Clicando no botao de login
    Sleep de 3s 
    Inserir Email_tkm
    Inserir Senha_tkm
    Entrar na minha conta
    Sleep de 3s 

