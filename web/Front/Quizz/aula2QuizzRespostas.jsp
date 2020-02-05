<%@ page import="java.sql.*" %>
<%@ page  contentType="text/html; charset=utf-8"
          pageEncoding="utf-8" %>

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
                    <form>
                        <%
                            String r1 = request.getParameter("p1");
                            String r2 = request.getParameter("p2");
                            String r3 = request.getParameter("p3");
                            String r4 = request.getParameter("p4");

                            if((r1 == null) || (r2 == null) || (r3 == null) || (r4 == null)){
                                response.sendRedirect("aula2QuizzPerguntas.jsp");

                            }else {

                                PreparedStatement pstm = null;
                                String resp1opt1 = null;
                                String resp1opt2 = null;
                                String resp1opt3 = null;
                                String resp1opt4 = null;

                                try {
                                    String DATABASE_URL = "jdbc:mysql://localhost:3306/test";
                                    String USERNAME = "root";
                                    String PASSWORD = "";

                                    String mat1p1 = "SELECT * FROM tb_respostas where id_materia=1 && id_pergunta=1";
                                    String mat1p2 = "SELECT * FROM tb_respostas where id_materia=1 && id_pergunta=2";
                                    String mat1p3 = "SELECT * FROM tb_respostas where id_materia=1 && id_pergunta=3";
                                    String mat1p4 = "SELECT * FROM tb_respostas where id_materia=1 && id_pergunta=4";

                                    Connection connection = null;
                                    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                                    connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

                                    pstm = connection.prepareStatement(mat1p1);
                                    ResultSet rs1 = pstm.executeQuery(mat1p1);
                                    while (rs1.next()) {
                                        resp1opt1 = rs1.getString(r1);
                                    }
                                    pstm = connection.prepareStatement(mat1p2);
                                    ResultSet rs2 = pstm.executeQuery(mat1p2);
                                    while (rs2.next()) {
                                        resp1opt2 = rs2.getString(r2);
                                    }
                                    pstm = connection.prepareStatement(mat1p3);
                                    ResultSet rs3 = pstm.executeQuery(mat1p3);
                                    while (rs3.next()) {
                                        resp1opt3 = rs3.getString(r3);
                                    }
                                    pstm = connection.prepareStatement(mat1p4);
                                    ResultSet rs4 = pstm.executeQuery(mat1p4);
                                    while (rs4.next()) {
                                        resp1opt4 = rs4.getString(r4);
                                    }
                                } catch (Exception ex) {
                                    out.println("Unable to connect to database.   " + ex);
                                }
                        %>

                        <h1>Personal Pronouns</h1>

                        <h4>1- ____ gosta de comer bolo. (Minha Mãe) <%out.println("#" + resp1opt1);%></h4>

                        <input type="radio" name="p1"  value="resposta_1"/>a) She <br>
                        <input type="radio" name="p1"  value="resposta_2"/>b) They <br>
                        <input type="radio" name="p1"  value="resposta_3"/>c) Her <br>
                        <input type="radio" name="p1"  value="resposta_4"/>d) We <br>

                        <h4>2- ____ plays soccer todos os dias. (Meu Irmão) <%out.println("#" + resp1opt2);%></h4>

                        <input type="radio" name="p2" value="resposta_1"/>a) I <br>
                        <input type="radio" name="p2" value="resposta_2"/>b) He <br>
                        <input type="radio" name="p2" value="resposta_3"/>c) You <br>
                        <input type="radio" name="p2" value="resposta_4"/>d) They <br>

                        <h4>3- ___ gave money to ___. (Meus Pais / Eu) <%out.println("#" + resp1opt3);%></h4>

                        <input type="radio" name="p3" value="resposta_1"/>a) They / I<br>
                        <input type="radio" name="p3" value="resposta_2"/>b) We / you<br>
                        <input type="radio" name="p3" value="resposta_3"/>c) They / me<br>
                        <input type="radio" name="p3" value="resposta_4"/>d) We / me<br>

                        <h4>4- ___ love going out with ____. (Eu / Você) <%out.println("#" + resp1opt4);%></h4>

                        <input type="radio" name="p4" value="resposta_1"/>a) Me / you <br>
                        <input type="radio" name="p4" value="resposta_2"/>b) I / they <br>
                        <input type="radio" name="p4" value="resposta_3"/>c) We / him <br>
                        <input type="radio" name="p4" value="resposta_4"/>d) I / you <br>
                        <br>
                        <input type="button" class="button" value="Voltar" onclick="location.href='aula2QuizzPerguntas.jsp'">
                    </form>
                </article>
            </section>
        </section>
    </body>
</html>
<%}%>