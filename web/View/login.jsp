<%-- 
    Document   : login
    Created on : 26 May 2022, 07:48:28
    Author     : benny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar a seccao & Registar </title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" href="img/const.png">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

</head>

<body>
    <header>
        <div class="hero">
            <nav>
                <input type="checkbox" id="check">
                <label for="check">
                    <i class="fas fa-bars" id="btn"></i>
                    <i class="fas fa-times" id="cancel"></i>
                </label>
                <img src="photo.png" alt="foto">
                <ul>
                     <li><a href="">Inicio</a></li>
          <li><a href="">Comunidade</a></li>
          <li><a href="">Contactos</a></li>
          <li><a href="">Licencas</a></li>
          <li><a href="">A cerca do MozWorkers</a></li>
          <li><a href="">Contacto do programador</a></li>
                    
                </ul>
            </nav>
        </div>
    </header>
    

    <section>
        <div class="container">
            <div class="user signinBx">
                <div class="imgBx"><img src="img/lock.jpg"></div>
                <div class="formBx">
                    <form action="login" method="POST">
                        <h2>Inicio da sessao</h2>
                        <input autocomplete="off" type="text" placeholder="Nome do usuario">
                        <input type="password" placeholder="Palavra-passe">
                        <input type ="submit" value="Entrar" onclick="submitData();">
                        <p class="signup">Nao tens uma conta? Resgista-se <a href="#" onclick="toggleForm();">aqui.</a></p>
                       
                    </form>
                    <?php require 'script.php';?>
                </div>
            </div>

        
            <div class="user signupBx">
            
            <div class="formBx">
                <form action="cadastro" method="POST">
                    <h2>Criar umam conta </h2>
                    <input type="text" name="nome" placeholder="Nome do usuario">
                    <input type="text" name="email" placeholder="Email">
                    <input type="password" name="password" placeholder="Palavra-passe">
                    <input type="password" name="repassword" placeholder=" confierme a Palavra-passe">
                    <input type ="submit" value="Cadastrar"> 
                    <p class="signup">ja tens uma conta faca o <a href="#" onclick="toggleForm();">login.</a></p>
                </form>
                <?php require  'script.php';?>
            </div> 
            <div class="imgBx"><img src="img/register.jpg"></div>
            </div>
        </div> 
    </section>
    
     <footer>
        <div class="main-content">
            <div class="left box">
                <h2>sobre nos</h2>
                <div class="content">
                    <p>eus sou programador web mas nao sei nada de front end mas sou mau em back end</p>
                
                <div class="social">
                    <a href="#"><span class="fab fa-facebook-f"></span></a>
                    <a href="#"><span class="fab fa-twitter"></span></a>
                    <a href="#"><span class="fab fa-instagram"></span></a>
                    <a href="#"><span class="fab fa-youtube"></span></a>
                </div>
            </div>
            </div>
            <div class="center box">
                <h2>Endereco</h2>
                <div class="content">
                    <div class="place">
                        <span class="fas fa-map-marker"></span>
                        <span class="text">Av de mocambique, maputo</span>
                    </div>

                    <div class="phone">
                        <span class="fas fa-phone-alt"></span>
                        <span class="text">840462348</span>
                    </div>
                    <div class="email">
                        <span class="fas fa-envelope"></span>
                        <span class="text">bennedito01@gmail.com</span>
                    </div>
                </div>
            </div>
            <div class="right box">
                <h2>contacto</h2>
                <div class="content">
                    <form action="#">
                        <div class="email">
                            <div class="text">Email *</div>
                            <input type="email" required>
                        </div>
                        <div class="msg">
                            <div class="text">Mensagem *</div>
                            <textarea cols="25" rows="2" required></textarea>
                        </div>
                        <div class="btn">
                            <button type="submit">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="bottom">
            <div class="center">
                <span class="credit">criado por <a href="#">Front</a></span>
                <span class=""> 2022 tosos os direitos reservadoso</span>
            </div>
        </div>
    </footer>

    <script>
        function toggleForm(){
            section = document.querySelector('section');
            container = document.querySelector('.container');
            container.classList.toggle('active');
            section.classList.toggle('active');
        }
    </script>
</body>
</html>