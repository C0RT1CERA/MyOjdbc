<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>student data</title>
    <style>
        body{
            /* background-color: #4c0033;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23af0171' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"); */

            background-color: #180e15;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23af0171' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");

        } 
        
.warppersec0{
    display: flex;  
    width: 100%;
    height: 50px;
    border: 0px solid #e6e7e7;
    flex-direction: row;  
}
.sec0{
    position:fixed;
    width: 100%;
    top: 8px;
    opacity: 1;
    
}
.logoD{
    width: 35%;
    height: 150px;
    border: 0px solid #e6e7e7;
}
.spaceD{
    width: 5%;
    height: 150px;
    border: 0px solid #e6e7e7;
}
.contentD{
    display: flex;
    width: 55%;
    height: 150px;
    border: 0px solid #e6e7e7;
    justify-content:space-around;
    margin-left: -8px;
}


.sec2{
    display: grid;
    place-items: center;
    align-content: center;
    margin-top: 100px;
}
.h1_logo{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    color: #e6e7e7 ;
    font-size: 35px;
    
}
.h1_attr{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    color: #e6e7e7 ;
    font-size: 35px;
}

.h1_attr:hover{
    color: #ec41ab;
    font-size: 36px;
    
}
.h1_entry{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    color: #e6e7e7 ;
    font-size: 50px;
}
.h1_table{
    font-size: 3em;
    font-weight: 300;
    line-height: 1em;
    text-align: center;
    color: #e6e7e7;
}
.container th h1{
    font-weight: bold;
    font-size: 2em;
    text-align: left;
}
.container td{
    font-weight: normal;
    font-size: 1em;
    
}
.container{
    text-align: left;
    overflow: hidden;
    width: 60%;
    margin: 0 auto;
    display: table;
    padding: 0 0 auto 0;
}
.container td, .container th{
    padding-bottom: 2%;
    padding-top: 2%;
    padding-left: 2%;
}

.container tr:nth-child(odd){
    background-color: #77299b;
}

.container tr:nth-child(even){
    background-color: #9b299b;
}

.container th{
    background-color: #3d103d;
}
.container tr:first-child{
    background-color: #77299b;
}
.container tr:hover{
    background-color: #c95ffa;
    
}
.container td:first-child{
    color: #000000;
    font-weight: bold;
}
.separatorD1{
    position: fixed;
    height: 150px;
    border: 0px solid #e6e7e7;
    color: #ec41ab ;
    font-size: 65px;
    margin-left: 220px;
    margin-top: 25px;
    
}







    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" type="text/javascript"></script>
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(window).scroll(function(){
                $('.sec0').css("opacity", 1 - $(window).scrollTop()/70)
            })
        })
    </script> 
</head>
<body>
    <section class="sec0" id="sec_0">
        <div class="warppersec0">
            <div class="logoD">
                <a style="text-decoration: none;" href="loginP.html">
                <h1 class="h1_logo" id="test" style="color:#ca41ec ;">Database</h1><h1 class="h1_logo" style="font-size: 35px; margin-top: -40px;">Connectivity</h1>
                </a>
            </div>
            <div class="separatorD1">|</div>
            <!-- <div class="separatorD2">__</div>
            <div class="separatorD3">__</div> -->
            
            <div class="spaceD"></div>
            <div class="contentD">
                <a style="text-decoration: none;" href="#">
                    <h1 class="h1_attr" style="margin-top: 60px; cursor: pointer;">Search</h1>
                
                </a>
                <a style="text-decoration: none;" href="modifyEntriesnew.jsp">
                    <h1 class="h1_attr" style=" margin-top: 60px; cursor: pointer;">Modify</h1>
                
                </a>
                <a style="text-decoration: none;"  href="#">
                    <h1 class="h1_attr" style="margin-top: 60px; cursor: pointer;">Display</h1>
            
                </a>
                </div>
        </div>
    </section>

    <section class="sec2">
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String connectionString ="jdbc:oracle:thin:@localhost:1521:xe";
	String userName ="ujal";
	String password ="cestlavie";
	Connection con = DriverManager.getConnection(connectionString,userName,password);

%>
<h1 class="h1_entry">Display Entries</h1>
<table class="container" align="center"  border=1>
	<thead>
    <tr>
        <th><h1 class="h1_table"> Sr No. </h1></th>
		<th><h1 class="h1_table"> Roll No </h1></th>
		<th><h1 class="h1_table"> Name </h1></th>
	</tr>
    </thead>
<%
String sql = "Select * from STUDENTDATA order by rowID desc";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
int rollNo ;
String name ;
int i=1;
while ( rs.next())
{
	rollNo = rs.getInt(1);
	name = rs.getString(2);
%>
			<tr>
                <td><%= i %> </td>
				<td> <%= rollNo %> </td>
				<td> <%= name %> </td>
			</tr>
<%
i++;
}
%>
</table>
	
<%
}
catch (Exception e)
{
	e.printStackTrace();
}%>

</section>


   
</body>
</html>