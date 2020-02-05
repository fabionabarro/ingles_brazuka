<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
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
        <div class="icon">
            <a href="https://www.facebook.com/ingbrazuca/"> <img src="../img/icon/face4.png" class="iconface" ></a>
            <a href="https://www.youtube.com/channel/UCB56YY-Q6ZMpg6iKGBLYK_g"> <img src="../img/icon/you3.png"  class="iconyou" ></a>
        </div>
        <div class="header">
            <div class="header-right">
                <a href="home.jsp">Home</a>
                <a href="aulas.jsp">Aulas</a>
                <a class="active" href="contato.jsp">Contato</a>
                <form class="logout" method="post">
                    <a href="../ChecksLogicas/finalizar_sessão.jsp">Logout</a>
                </form>
            </div>
        </div>
    </header>
        <section id="body" class="width">
            <aside id="sidebar" class="column-left">
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
                        <h1>Contatos</h1><br>
                        <p>Caso queria entrar em contato conosco, fazer uma critica ou sugestão, por favor,
                            acesse uma de nossas redes sociais ou se preferir, envie-nos um e-mail: ingbrazuca@gmail.com</p>
                        <p>Acesse nossa pagina no Facebook: https://www.facebook.com/ingbrazuca/</p>
                        <p>Acesse nosso canal no Youtube: https://www.youtube.com/channel/UCB56YY-Q6ZMpg6iKGBLYK_g</p>

                        <%
                            }
                        %>
                    </form>
                </article>
            </section>
        </section>
    </body>
</html>
