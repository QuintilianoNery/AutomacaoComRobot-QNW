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
   Fill Text            input[id="user_email"]            quintilianoteste@gmail.com

   Browser.Get Text               label[for="user_Senha secreta"]    contains    Senha secreta
   Fill Text            input[id="user_password"]     Teste1234

   Browser.Click                input[type="submit"]

   Browser.Wait For Elements State            a[href$=sign_out]            visible                    