<%-- 
    Document   : cadastro
    Created on : 26 May 2022, 07:47:45
    Author     : benny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>forum de registro com validacoes JS</title>
    <link rel="stylesheet" href="css/sstyle.css">
    <link rel="icon" href="img/const.png">
</head>
<body>
    <div id ="main-container"> 
        <h1>Cadastre-se para acessar o sistema</h1>
        <form id="register-form">
            <div class="full-box">
                <label for="email">E-mail</label>
                <input type="email" name="email" id="email" placeholder="digite seu e-mail" data-min-length="3" data-required data-email-validate>
            </div>
            <div class="half-box spacing">
                <label for="name">Nome</label>
                <input type="text" name="name" id="name" placeholder="digite seu nome" data-max-length="16" data-only-letters>
            </div>
            <div class="half-box">
                <label for="lastname">Sobrenome</label>
                <input type="text" name="lastname" id="lastname" placeholder="digite seu Sobrenome">
            </div>
            <div class="half-box spacing">
                <label for="password">palavra-passe</label>
                <input type="password" name="password" id="password" placeholder="digite sua senha" data-required data-password-validate>
            </div>
            <div class="half-box">
                <label for="passconfirmation">Confirmacao de senha</label>
                <input type="password" name="passconfirmation" id="passconfirmation" placeholder="confirme a sua password" data-equal="password" data-required>
            </div>
            <div class="full-box">
               
                <input type="checkbox" name="agreement" id="agreement" >
                <label for="agreement" id="agreement-label"> Eu li e aceito todos <a href="#">termos de uso</a></label>
            </div>
            <div class="full-box"> 
                <input type="submit" id="btn-submit" value="Registar">
                
            </div>
        </form>
    </div>
    <p class="error-validation template"></p>
  <script src="js/scripts.js"></script>  
</body>
</html>