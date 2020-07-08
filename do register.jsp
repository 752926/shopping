<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="dao.*,entity.*,java.util.*,java.sql.*"  contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%>
http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;
    charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%   request.setCharacterEncoding("utf-8");   String users = request.getParameter("username");
String pass = request.getParameter("pwd");
%>
<%   String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/shop";
String use = "root";
String password = "password";
Class.forName(driver);
Connection conn = DriverManager.getConnection(url, use, password);
PreparedStatement sql = conn.prepareStatement("insert into user(username,password)values(?,?)");
sql.setString(1, users);
sql.setString(2, pass);
int rtn = sql.executeUpdate();
sql.close();   conn.close();  %>
<script>   alert("注册成功");
window.location = "login.jsp";
</script>
</body>
</html>
