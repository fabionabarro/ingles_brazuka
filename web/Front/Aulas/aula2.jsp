<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Inglês Brazuka</title>
        <link rel="stylesheet" href="../../CSS/styles.css" type="text/css" />
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
    </head>
    <body>
        <img src="../../img/Logos/logo.jpg" class="logo">
        <header>
            <div class="icon">
                <a href="https://www.facebook.com/ingbrazuca/"> <img src="../../img/icon/face4.png" class="iconface" ></a>
                <a href="https://www.youtube.com/channel/UCB56YY-Q6ZMpg6iKGBLYK_g"> <img src="../../img/icon/you3.png"  class="iconyou" ></a>
            </div>
            <div class="header">

                <div class="header-right">
                    <a href="../../Front/home.jsp">Home</a>
                    <a class="active" href="../../Front/aulas.jsp">Aulas</a>
                    <a href="../../Front/contato.jsp">Contato</a>
                    <form class="logout" method="post">
                        <a href="../../ChecksLogicas/finalizar_sessão.jsp">Logout</a>
                    </form>
                </div>
            </div>
        </header>
        <section id="body" class="width">
            <aside id="sidebar" class="column-left">
                <nav id="mainnav">
                    <ul>
                        <li><a href="../aulas.jsp">Venha aprender inglês</a></li>
                        <li class="selected-item"><a href="aula2.jsp">Desenvolvendo as 4 habilidades</a></li>
                        <li><a href="aula3.jsp">Personal pronouns</a></li>
                    </ul>
                </nav>
            </aside>
            <section id="content" class="column-right">
                <article>
                    <form method="post">
                        <%
                            String email = (String) session.getAttribute("email");
                            if(email == null){
                                response.sendRedirect("../../Login/login.jsp");
                            }else{

                        %>
                        <h1>Desenvolvendo as 4 habilidades</h1>
                        <p>
                            Provavelmente já ouviu o ditado: “a prática leva a perfeição”, nesta vídeo aula vamos falar sobre as 4 habilidades básicas para aprendermos a falar um novo idioma corretamente e com fluência.
                        </p>
                        <%
                            }
                        %>
                    </form>
                    <video controls src="../../video/aula1.mp4" width="426" height="240"></video>
                    <h1><br></h1>
                    </fieldset>
                    <button type="button" class="button" onclick="location.href='../Quizz/aula1QuizzPerguntas.jsp'">Quizz</button>
                </article>
            </section>

        </section>
    </body>
</html>