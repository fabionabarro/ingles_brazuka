<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Inglês Brazuka</title>
        <link rel="stylesheet" href="../CSS/styles.css" type="text/css" />
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
    </head>
    <body>
        <img src="../img/Logos/logo.jpg" class="logo">
        <header>
            <div class="header">
                <a href="../Front/home.jsp" class="logo">Inglês Brazuka</a>
            </div>
        </header>
        <section id="body" class="width">
            <section id="content" class="column-right">
                <article>
                        <form name="Login" method="post" action="../ChecksLogicas/logincheck.jsp">
                            <h2>Faça seu login! <br><br> </h2>
                            <p>
                                <input type="text" class="text" name="email" placeholder="Email">
                            </p>
                            <p>
                                <input type="password" class="text" name="senha" placeholder="Senha">
                            </p>
                            <button type="Submit" class="button">Login</button>
                            <button type="button"class="button" onclick="location.href='cadastro.jsp'">Cadastrar</button>
                        </form>
                    <h3><br><br><br><br><br><br><br></h3>
                </article>
            </section>
        </section>
    </body>
</html>