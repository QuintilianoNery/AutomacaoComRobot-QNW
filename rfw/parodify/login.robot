*** Settings ***
Library            SikuliLibrary
Library            ImageHorizonLibrary
Library            Browser
Documentation        Testes da página login

***Test Cases***
Login com sucesso
   #Open Browser            https://parodify.herokuapp.com/users/sign_in    chromium
   New Page            https://parodify.herokuapp.com/users/sign_in
   Browser.Get Text               label[for="user_email"]    contains    Email