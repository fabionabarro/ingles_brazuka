<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String nome = request.getParameter("usuario");

        try {
            String DATABASE_URL = "jdbc:mysql://localhost:3306/test";
            String USERNAME = "root";
            String PASSWORD = "";
            Connection conn = null;
            PreparedStatement pstm = null;

            String login = "SELECT email, senha, nome FROM tb_alunos where email=? and senha=?";

            Connection connection = null;
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

            PreparedStatement ps = connection.prepareStatement(login);
            ps.setString(1, email);
            ps.setString(2, senha);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                session.setAttribute("email", email);
                session.setAttribute("usuario", nome);
                response.sendRedirect("../Front/home.jsp");
                return;
            }
            response.sendRedirect("../Login/login.jsp");
            return;

        } catch (Exception ex) {
            out.println("Unable to connect to database.   " + ex);
    }
%>
