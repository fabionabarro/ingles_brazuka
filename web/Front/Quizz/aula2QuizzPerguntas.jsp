<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

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
                    <form action="aula2QuizzRespostas.jsp" method="post">
                        <h1>Personal Pronouns</h1>

                        <h4>1- ____ gosta de comer bolo. (Minha Mãe)</h4>

                        <input type="radio" name="p1"  value="resposta_1"/>a) She <br>
                        <input type="radio" name="p1"  value="resposta_2"/>b) They <br>
                        <input type="radio" name="p1"  value="resposta_3"/>c) Her <br>
                        <input type="radio" name="p1"  value="resposta_4"/>d) We <br>

                        <h4>2- ____ plays soccer todos os dias. (Meu Irmão)</h4>
                        <input type="radio" name="p2" value="resposta_1"/>a) I <br>
                        <input type="radio" name="p2" value="resposta_2"/>b) He <br>
                        <input type="radio" name="p2" value="resposta_3"/>c) You <br>
                        <input type="radio" name="p2" value="resposta_4"/>d) They <br>

                        <h4>3- ____ gave money to ___. (Meus Pais / Eu)</h4>
                        <input type="radio" name="p3" value="resposta_1"/>a) They / I<br>
                        <input type="radio" name="p3" value="resposta_2"/>b) We / you<br>
                        <input type="radio" name="p3" value="resposta_3"/>c) They / me<br>
                        <input type="radio" name="p3" value="resposta_4"/>d) We / me<br>

                        <h4>4- ____ love going out with ____. (Eu / Você)</h4>
                        <input type="radio" name="p4" value="resposta_1"/>a) Me / you <br>
                        <input type="radio" name="p4" value="resposta_2"/>b) I / they <br>
                        <input type="radio" name="p4" value="resposta_3"/>c) We / him <br>
                        <input type="radio" name="p4" value="resposta_4"/>d) I / you <br>
                        <br>
                        <input type="button" class="button" value="Voltar" onclick="location.href='../Aulas/aula3.jsp'">
                        <input type="submit" class="button" value="Responder">

                        <%String p1 = request.getParameter("p1");%>

                    </form>
                </article>
            </section>
        </section>
    </body>
</html>