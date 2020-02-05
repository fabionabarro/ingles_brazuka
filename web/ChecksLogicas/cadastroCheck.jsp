<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String usuario = request.getParameter("usuario");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String skype = request.getParameter("skype");
    String celular = request.getParameter("celular");

    if((usuario == null) || (email == null) || (senha == null) || (skype == null) || (celular == null) || (usuario == "") || (email == "") || (senha == "") || (skype == "") || (celular == "")) {
        response.sendRedirect("../Login/cadastro.jsp");
    }else {

        try {
            String DATABASE_URL = "jdbc:mysql://localhost:3306/test";
            String USERNAME = "root";
            String PASSWORD = "";
            Connection conn = null;
            PreparedStatement pstm = null;

            String cadastro = "insert into tb_alunos (nome, email, senha, skype, celular) values (?, ?, ?, ?, ?)";

            Connection connection = null;
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

            PreparedStatement ps = connection.prepareStatement(cadastro);
            ps.setString(1, usuario);
            ps.setString(2, email);
            ps.setString(3, senha);
            ps.setString(4, celular);
            ps.setString(5, skype);

            String checkIfCadastrado = "SELECT email FROM tb_alunos where email=?";
            PreparedStatement ps1 = connection.prepareStatement(checkIfCadastrado);
            ps1.setString(1, email);
            ResultSet rs = ps1.executeQuery();
            while (rs.next()) {
                response.sendRedirect("jaExiste.jsp");
                return;
            }
            ps.executeUpdate();
            response.sendRedirect("../Login/cadastroComSucesso.jsp");
        } catch (Exception ex) {
            out.println("Unable to connect to database.   " + ex);
        }
    }
%>
