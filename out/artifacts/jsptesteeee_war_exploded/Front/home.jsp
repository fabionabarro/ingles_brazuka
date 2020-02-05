<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Inglês Brazuka</title>
        <link rel="stylesheet" href="../CSS/styles.css" type="text/css" />
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <title>Página logado</title>
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
                    <a class="active" href="home.jsp">Home</a>
                    <a href="aulas.jsp">Aulas</a>
                    <a href="contato.jsp">Contato</a>

                    <form class="logout" method="post">
                        <a href="../ChecksLogicas/finalizar_sessão.jsp">Logout</a>
                    </form>
                </div>
            </div>
        </header>
        <section id="body" class="width">
            <section id="content" class="column-right">
                <article>
                    <form action="aulas.jsp" method="post">
                                <%
                                    String email = (String) session.getAttribute("email");
                                    if (email == null) {
                                            response.sendRedirect("../Login/login.jsp");
                                        } else {

                                            try {
                                                String DATABASE_URL = "jdbc:mysql://localhost:3306/test";
                                                String USERNAME = "root";
                                                String PASSWORD = "";
                                                Connection conn = null;
                                                PreparedStatement pstm = null;

                                                String login = "SELECT nome FROM tb_alunos where email=? ";

                                                Connection connection = null;
                                                Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                                                connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

                                                PreparedStatement ps=connection.prepareStatement(login);
                                                ps.setString(1,email);

                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    String usuario = rs.getString("nome");
                                                    out.print("<h1>Seja bem vindo " + usuario + "</h1>");
                                %>
                         <p>

                             Seja bem vindo ao Inglês Brazuca.<br>

                             Aqui você encontrará aulas, dicas e praticas para aprender inglês.<br>

                             Aproveite para tirar dúvidas através de nossas redes sociais, os links podem ser acessados pelo canto superior direito.<br>

                             Caso tenha alguma sugestão, esta será sempre muito bem vinda.<br>

                             Ainda estamos em desenvolvimento, então por favor, colabore com a sua opinião para criarmos um ambiente no qual todos poderemos compartilhar nossos conhecimentos referentes a lingua inglesa e sua aquisição


                        </p>
                        <h3>Let's Speak English !!!</h3>
                                    <%
                                                }
                                            }catch (Exception ex) {
                                            out.println("Unable to connect to database.   " + ex);
                                            }
                                        }
                                    %>
                    </form>
                </article>
            </section>
            <div class="clear"></div>
        </section>
    </body>
</html>