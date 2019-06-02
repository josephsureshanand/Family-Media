<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"    %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="Icons/fmsi.png" />
<style>
h1{
background-color:DodgerBlue;
text-align:center;
font-family:Agency FB;
font-size:4vw;
color:black;
}
body{
background-color:Black;
}
table{
font-family:Agency FB;
font-size:30px;
text-align:center;
text-color:Tomato;
color:Tomato;
}
</style>

<title>View Messages</title>
</head>
<body>
<h1>Messages</h1>
<div align="center">
<br>
              <%         	
        			Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/fms","root","hack");
              		Statement statement = connection.createStatement() ;
        			String rname="Esther";
                    String sql = "select * from message";
                    ResultSet rs=statement.executeQuery(sql);
                    %>
<TABLE style="color:Tomato;"BORDER="1">
            <TR>
                <TH >SName</TH>
                <TH>RName</TH>
                <TH>Role</TH>
                <TH>Message</TH>
                <TH>Date and Time</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
            </TR>
            <% } %>
        </TABLE>
        </div>
    </BODY>
</html>