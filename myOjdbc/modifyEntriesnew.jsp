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
    font-weight: 100;
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
    background-color: #cfbfd6;
    
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

.delete-icon{
    display: flex;
    align-items:baseline;
    width: 120px;
    height: 40px;
    
}
.editIcon{
    width: 25px;
    height: 20px;
    margin-top: 2px;

}

/* .binsvg .tooltiptext1, .tooltiptext2 {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0; */
  
  /* Position the tooltip */
  /* position: absolute;
  z-index: 1;
  top: -5px;
  left: 105%;
}

.binsvg:hover .tooltiptext1 {
  visibility: visible;
} */

.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 100px;
  background-color: #541d6d;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -52px;
  opacity: 0;
  transition: opacity 0.3s;
}

.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #541d6d transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}
    
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" type="text/javascript"></script>
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(window).scroll(function(){
                $('.sec0').css("opacity", 1 - $(window).scrollTop()/70)
            })
        });

        $(document).ready(function() {
            $("#color_mode").on("change", function () {
        colorModePreview(this);
            })
        });

        function colorModePreview(ele) {
        if($(ele).prop("checked") == true){
                $('body').addClass('dark-preview');
                $('body').removeClass('white-preview');
            }
        else if($(ele).prop("checked") == false){
                $('body').addClass('white-preview');
                $('body').removeClass('dark-preview');
            }
        }

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
                <a style="text-decoration: none;" href="#">
                    <h1 class="h1_attr" style=" margin-top: 60px; cursor: pointer;">Modify</h1>
                
                </a>
                <a style="text-decoration: none;"  href="displayEntries.jsp">
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
<h1 class="h1_entry">Modify Entries</h1>


<table class="container" align="center"  border=1>
	<thead>
    <tr>
        <th style="width: 60px; justify-content: center;"><h1 class="h1_table"> Sr No. </h1></th>
		<th style="width: 150px ;"><h1 class="h1_table"> Roll No </h1></th>
		<th style="width: 100px ;"><h1 class="h1_table" > Name </h1></th>
        <th style="width: 50px ;" ><h1 class="h1_table"> Actions </h1></th>
        
	</tr>
    </thead>
<%
String sql = "Select rowID, id, name from STUDENTDATA order by rowID desc";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
int rollNo ;
String name ;
String memAddr;
int i=1;

while (rs.next())  
{
    
    memAddr = rs.getString(1);
	rollNo = rs.getInt(2);
	name = rs.getString(3);
%>
			<tr>
                <td><%= i %> </td>
				<td> <%= rollNo %> </td>
				<td> <%= name %> 
                </td>
                
                <td style="display:flex;  ">
                    <div class="delete-icon" style="justify-content: space-evenly; border: 0px solid white; margin-top: 20px;">
                        
                        <div class="tooltip">
                            
                            <a href='deleteData.jsp?memAddr=<%= memAddr %>'>
                            
                        
                            <svg class="binsvg" width="23px" height="23px" fill="#000000" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" width="192px" height="192px"><path d="M 10 2 L 9 3 L 5 3 C 4.4 3 4 3.4 4 4 C 4 4.6 4.4 5 5 5 L 7 5 L 17 5 L 19 5 C 19.6 5 20 4.6 20 4 C 20 3.4 19.6 3 19 3 L 15 3 L 14 2 L 10 2 z M 5 7 L 5 20 C 5 21.1 5.9 22 7 22 L 17 22 C 18.1 22 19 21.1 19 20 L 19 7 L 5 7 z M 9 9 C 9.6 9 10 9.4 10 10 L 10 19 C 10 19.6 9.6 20 9 20 C 8.4 20 8 19.6 8 19 L 8 10 C 8 9.4 8.4 9 9 9 z M 15 9 C 15.6 9 16 9.4 16 10 L 16 19 C 16 19.6 15.6 20 15 20 C 14.4 20 14 19.6 14 19 L 14 10 C 14 9.4 14.4 9 15 9 z"/></svg>
                            <!-- <svg class="binsvg" width="23px" height="23px" fill="#fff" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 40 40" width="40px" height="40px"><path fill="#4788c7" d="M24.279,3l0.667,2h-9.892l0.667-2H24.279 M24.279,2h-8.558c-0.43,0-0.813,0.275-0.949,0.684L14,5v1 h12V5l-0.772-2.316C25.092,2.275,24.71,2,24.279,2L24.279,2z"/><path fill="#dff0fe" d="M8,37.5c-0.827,0-1.5-0.673-1.5-1.5V8.5h27V36c0,0.827-0.673,1.5-1.5,1.5H8z"/><path fill="#4788c7" d="M33,9v27c0,0.551-0.449,1-1,1H8c-0.551,0-1-0.449-1-1V9H33 M34,8H6v28c0,1.105,0.895,2,2,2h24 c1.105,0,2-0.895,2-2V8L34,8z"/><path fill="#dff0fe" d="M4.5,8.5V7c0-0.827,0.673-1.5,1.5-1.5h28c0.827,0,1.5,0.673,1.5,1.5v1.5H4.5z"/><path fill="#4788c7" d="M34 6c.551 0 1 .449 1 1v1H5V7c0-.551.449-1 1-1H34M34 5H6C4.895 5 4 5.895 4 7v2h32V7C36 5.895 35.105 5 34 5L34 5zM24.5 35L24.5 35c-.276 0-.5-.224-.5-.5v-23c0-.276.224-.5.5-.5h0c.276 0 .5.224.5.5v23C25 34.776 24.776 35 24.5 35zM15.5 35L15.5 35c-.276 0-.5-.224-.5-.5v-23c0-.276.224-.5.5-.5h0c.276 0 .5.224.5.5v23C16 34.776 15.776 35 15.5 35zM10.5 35L10.5 35c-.276 0-.5-.224-.5-.5v-23c0-.276.224-.5.5-.5h0c.276 0 .5.224.5.5v23C11 34.776 10.776 35 10.5 35zM29.5 35L29.5 35c-.276 0-.5-.224-.5-.5v-23c0-.276.224-.5.5-.5h0c.276 0 .5.224.5.5v23C30 34.776 29.776 35 29.5 35z"/></svg> -->
                            <!-- <img  src="icons8-trash-192.svg" alt=""> -->
                            
                        </a>
                        <span class="tooltiptext">delete</span>
                        </div>

                        <div class="tooltip">
                            <a href="modifyEntriesform.jsp?edplace=<%=i%>">
                                <img class="editIcon" src="peneditico.svg" alt="pen edit">     
                             </a>
                            <span class="tooltiptext">edit</span>
                        </div>
                    </div>
                    
                    
                </td>
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


<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript" src="script.js"></script>   
</body>
</html>