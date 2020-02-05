<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <form name="cadastro" method="post" action="../ChecksLogicas/cadastroCheck.jsp">
                        <h2>Faça seu Cadastro! <br><br> </h2>
                        <p>
                            <input type="text" class="text" name="usuario" placeholder="Usuário">
                        </p>
                        <p>
                            <input type="email" class="text" name="email" placeholder="Email">
                        </p>
                        <p>
                            <input type="password" class="text" name="senha" placeholder="Senha">
                        </p>
                        <p>
                            <input type="text" class="text" name="skype" placeholder="Skype">
                        </p>
                        <p>
                            <input type="text" class="text" name="celular" placeholder="Celular">
                        </p>
                        <button type="Submit" class="button">Cadastrar</button>
                        <button type="button" class="button" onclick="location.href='../Login/login.jsp'">Voltar</button>
                    </form>

                    <h3> <br><br><br><br><br> </h3>
                </article>
            </section>
        </section>
    </body>
</html>