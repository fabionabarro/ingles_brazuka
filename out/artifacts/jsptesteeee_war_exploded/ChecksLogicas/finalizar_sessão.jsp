<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<body>

<%
    session.invalidate();
    response.sendRedirect("../Login/login.jsp");
%>
</body>
</html>