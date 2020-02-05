<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Inglês Brazuka</title>
        <link rel="stylesheet" href="../CSS/styles.css" type="text/css" />
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <title>Aulas</title>
    </head>
    <body>
        <img src="../img/Logos/logo.jpg" class="logo">
        <header>
            <div class="icon">
                <a href="https://www.facebook.com/ingbrazuca/"> <img src="../img/icon/face4.png" class="iconface" ></a>
                <a href="https://www.youtube.com/channel/UCB56YY-Q6ZMpg6iKGBLYK_g"> <img src="../img/icon/you3.png"  class="iconyou" ></a>
            </div>
            <div class="header">
                <div class="header-right">
                    <a href="home.jsp">Home</a>
                    <a class="active" href="aulas.jsp">Aulas</a>
                    <a href="contato.jsp">Contato</a>
                    <form class="logout" method="post">
                        <a href="../ChecksLogicas/finalizar_sessão.jsp">Logout</a>
                    </form>
                </div>
            </div>
        </header>
        <section id="body" class="width">
            <aside id="sidebar" class="column-left">
                <nav id="mainnav">
                    <ul>
                        <li class="selected-item"><a href="aulas.jsp">Venha aprender inglês</a></li>
                        <li><a href="../Front/Aulas/aula2.jsp">Desenvolvendo as 4 habilidades</a></li>
                        <li><a href="../Front/Aulas/aula3.jsp">Personal pronouns</a></li>
                    </ul>
                </nav>
            </aside>
            <section id="content" class="column-right">
                <article>
                    <form method="post">
                        <%
                            String email = (String) session.getAttribute("email");
                            if(email == null){
                                response.sendRedirect("../Login/login.jsp");
                            }else{

                        %>
                        <h1>Introdução</h1>
                        <p>
                            O Inglês Brazuca têm como foco o ensino da gramática da língua inglesa, assim, poderá não somente aprender inglês, mas também, aprender o porquê está utilizando as palavras de sua oração, sem falar de um modo “Robotizado”.<br>
                            No site você encontrará diversos materiais de apoio para o seu aprendizado.<br>
                            Caso tenha alguma dúvida ou sugestão, não deixe de entrar em contato!


                        </p>
                        <%
                              }
                        %>
                    </form>
                    <br>
                    <video controls src="../video/introducao.mp4" width="426" height="240"></video>
                    <h1><br></h1>
                    </fieldset>
                </article>
            </section>

        </section>
    </body>
</html>