*** Settings ***
Library          SikuliLibrary
Library          ImageHorizonLibrary
Library          Browser
Documentation    Testes da página login

***Test Cases***
Login com sucesso
   #Open Browser            https://parodify.herokuapp.com/users/sign_in    chromium
    New Page    https://parodify.herokuapp.com/users/sign_in

    #validar campo texto e-mail
    Browser.Get Text    label[for="user_email"]    contains                      Email
   #preencher e-mail
    Fill Text           input[id="user_email"]     quintilianoteste@gmail.com

    #validar nome do campo senha
    Browser.Get Text    label[for="user_Senha secreta"]    contains     Senha secreta
    #preencher  campo senha
    Fill Text           input[id="user_password"]          Teste1234

    #clicar no botão salvar
    Browser.Click    input[type="submit"]

    #validar se na tela para onde foi logado existe o botão sair
    Browser.Wait For Elements State    a[href$=sign_out]    visible    10    