<%@page  import="java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>


<%
String usrChoice = request.getParameter("btchoice");
//String cancelUP = request.getParameter("canc");

String nm = request.getParameter("name");
String rno = request.getParameter("rollNo");
String memoryAddr = request.getParameter("memAd");
//String[] arrOfStr = memoryAddr.split(" ", 5);      
//out.println(memoryAddr);
//String newMad = arrOfStr[0]+"+"+arrOfStr[1];
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String connectionString ="jdbc:oracle:thin:@localhost:1521:xe";
	String userName ="ujal";
	String password ="cestlavie";
	Connection con = DriverManager.getConnection(connectionString,userName,password);
if(usrChoice.equals("Update"))
{
//String sql = "update STUDENTDATA set id="+rno+", name='"+nm+"' where rowID = '"+memoryAddr+"'";
  String sql = "update STUDENTDATA set id="+rno+" , name='"+nm+"' where rowID = '"+memoryAddr+"'";

Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
response.sendRedirect("displayEntries.jsp");
}else{
    response.sendRedirect("modifyEntriesnew.jsp");

    //out.println("cancel");
}



}
catch (Exception e)
{
	e.printStackTrace();
}
%>