<%@ page import="java.sql.*" %>
<%@ page  contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
                            response.sendRedirect("aula1QuizzPerguntas.jsp");

                            }else {

                                PreparedStatement pstm;
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
                                    out.println("Unable to connect to database.  " + ex);
                                }
                        %>
                        <h1>Desenvolvendo as 4 habilidades</h1>

                        <h4>1- Qual destas habilidades está ligada a audição?  <%out.println("#" + resp1opt1);%></h4>

                        <input type="radio" name="p1"  value="resposta_1"/>a) Listening<br>
                        <input type="radio" name="p1"  value="resposta_2"/>b) Speaking<br>
                        <input type="radio" name="p1"  value="resposta_3"/>c) Reading<br>
                        <input type="radio" name="p1"  value="resposta_4"/>d) Writing<br>

                        <h4>2- Quais destas habilidades estão conectadas? <%out.println("#" + resp1opt2);%></h4>

                        <input type="radio" name="p2" value="resposta_1"/>a) Listening/Reading<br>
                        <input type="radio" name="p2" value="resposta_2"/>b) Reading/Writing<br>
                        <input type="radio" name="p2" value="resposta_3"/>c) Writing/Speaking<br>
                        <input type="radio" name="p2" value="resposta_4"/>d) Speaking/Reading<br>

                        <h4>3- Qual desta habilidade está ligada a leitura? <%out.println("#" + resp1opt3);%></h4>

                        <input type="radio" name="p3" value="resposta_1"/>a) Listening<br>
                        <input type="radio" name="p3" value="resposta_2"/>b) Speaking<br>
                        <input type="radio" name="p3" value="resposta_3"/>c) Reading<br>
                        <input type="radio" name="p3" value="resposta_4"/>d) Writing<br>

                        <h4>4- Quando falamos a forma correta de criar uma sentença, estamos falando de:  <%out.println("#" + resp1opt4);%> </h4>

                        <input type="radio" name="p4" value="resposta_1"/>a) Speaking/Reading<br>
                        <input type="radio" name="p4" value="resposta_2"/>b) Reading/Listening<br>
                        <input type="radio" name="p4" value="resposta_3"/>c) Writing/Speaking<br>
                        <input type="radio" name="p4" value="resposta_4"/>d) Speaking/Listening<br>
                        <br>
                        <input type="button" class="button" value="Voltar" onclick="location.href='aula1QuizzPerguntas.jsp'">
                    </form>
                </article>
            </section>
        </section>
    </body>
</html>
<%}%>