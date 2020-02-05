<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Inglês Brazuka</title>
        <link rel="stylesheet" href="../../CSS/styles.css" type="text/css" />
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <title>Quizz</title>
    </head>
    <body>
        <img src="../../img/Logos/logo.jpg" class="logo">
        <header>
            <div class="header">
                <div class="header-right">
                    <a class="active" href="../home.jsp">Home</a>
                    <a href="../aulas.jsp">Aulas</a>
                    <a href="../contato.jsp">Contato</a>
                    <form class="logout" method="post">
                        <a href="../../ChecksLogicas/finalizar_sessão.jsp">Logout</a>
                    </form>
                </div>
            </div>
        </header>
        <section id="body" class="width">
            <section id="content" class="column-right">
                <article>
                    <form action="aula1QuizzRespostas.jsp" method="post">
                        <h1>Desenvolvendo as 4 habilidades</h1>

                        <h4>1- Qual destas habilidades está ligada a audição?</h4>

                        <input type="radio" name="p1"  value="resposta_1"/>a) Listening<br>
                        <input type="radio" name="p1"  value="resposta_2"/>b) Speaking<br>
                        <input type="radio" name="p1"  value="resposta_3"/>c) Reading<br>
                        <input type="radio" name="p1"  value="resposta_4"/>d) Writing<br>

                        <h4>2- Quais destas habilidades estão conectadas?</h4>
                        <input type="radio" name="p2" value="resposta_1"/>a) Listening/Reading<br>
                        <input type="radio" name="p2" value="resposta_2"/>b) Reading/Writing<br>
                        <input type="radio" name="p2" value="resposta_3"/>c) Writing/Speaking<br>
                        <input type="radio" name="p2" value="resposta_4"/>d) Speaking/Reading<br>

                        <h4>3- Qual desta habilidade está ligada a leitura?</h4>
                        <input type="radio" name="p3" value="resposta_1"/>a) Listening<br>
                        <input type="radio" name="p3" value="resposta_2"/>b) Speaking<br>
                        <input type="radio" name="p3" value="resposta_3"/>c) Reading<br>
                        <input type="radio" name="p3" value="resposta_4"/>d) Writing<br>

                        <h4>4- Quando falamos a forma correta de criar uma sentença, estamos falando de:</h4>
                        <input type="radio" name="p4" value="resposta_1"/>a) Speaking/Reading<br>
                        <input type="radio" name="p4" value="resposta_2"/>b) Reading/Listening<br>
                        <input type="radio" name="p4" value="resposta_3"/>c) Writing/Speaking<br>
                        <input type="radio" name="p4" value="resposta_4"/>d) Speaking/Listening<br>
                        <br>
                        <input type="button" class="button" value="Voltar" onclick="location.href='../Aulas/aula2.jsp'">
                        <input type="submit" class="button" value="Responder">
                    </form>
                </article>
            </section>
        </section>
    </body>
</html>