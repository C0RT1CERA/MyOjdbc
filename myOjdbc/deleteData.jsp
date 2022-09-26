<%@page  import="java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>


<%
String memoryAddr = request.getParameter("memAddr");
String[] arrOfStr = memoryAddr.split(" ", 5);      
String newMad = arrOfStr[0]+"+"+arrOfStr[1];
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String connectionString ="jdbc:oracle:thin:@localhost:1521:xe";
	String userName ="ujal";
	String password ="cestlavie";
	Connection con = DriverManager.getConnection(connectionString,userName,password);

String sql = "delete from STUDENTDATA where rowID = '"+newMad+"'";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);


}
catch (Exception e)
{
	e.printStackTrace();
}
response.sendRedirect("modifyEntriesnew.jsp");
%>