import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class inputdata extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException
	{
		PrintWriter out =response.getWriter();
        // String stuName = request.getParameter("stuname");
        // String enrNo =request.getParameter("enrno");

		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String connectionString ="jdbc:oracle:thin:@localhost:1521:xe";
			String userName ="ujal";
			String password ="cestlavie";
			Connection cn = DriverManager.getConnection(connectionString,userName,password);
			
            String sql = "insert into STUDENTDATA values(" + enrNo + ",'" + stuName + "')";
            Statement st = cn.createStatement();
            int n = st.executeUpdate(sql);
            if ( n == 0 )
            {
                out.println("failed. Add same record again!");
                return;
            }response.sendRedirect("loginP.html");
        }
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
				
}
// "C:\Program Files\Apache Software Foundation\Tomcat 8.5\lib\servlet-api.jar"

