<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DayaGold</title>
</head>
<body>
<%
try 
{
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/website","root","root");
    String username = request.getParameter("username");
    String password = request.getParameter("pass");
    PreparedStatement stmt = con.prepareStatement("select * from registration where name='" + username + "' and pass='" + password + "'");
    ResultSet rs = stmt.executeQuery();
    if(!rs.next()) out.print("Wrong username or password.");
    else { 
        String site = new String("http://localhost:8080/website/");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
    }
  }
  catch(SQLException e) {
    e.getMessage();
  }
%>
</body>
</html>