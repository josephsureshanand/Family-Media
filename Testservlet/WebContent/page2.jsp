<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
background-color:Black;
}
input{font-size:20px;
color:white;
font-family:Agency FB}
h1{
background-color:DodgerBlue;
font-family:Agency FB;
color:white;
font-size:30px}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Message</title>
<link rel="shortcut icon" type="image/x-icon" href="Icons/fmsi.png" />
</head>
<body>
<form action="Send" autocomplete="off">
<center>
<h1>Send Message</h1>
<table border=0>
<tr><td><h2 style="font-family:Agency FB;font-size:2vw;color:white";>Enter Username:</h2></td><td><input style="color:black;width:220px;height:20px" type="text" name="uname" required></td></tr>
<tr><td><h2 style="font-family:Agency FB;font-size:2vw;color:white">Choose the Role: </h2></td><td>
<select name="role" style="width:220px;height:27px;font-size:20px;font-family:Agency FB;">
<option value="father">Father</option>
<option value="mother">Mother</option>
<option value="gfather">G.Father</option>
<option value="gmother">G.Mother</option>
<option value="son">Son</option>
<option value="daughter">Daughter</option>
<option value="gchild">G.Children</option>
</select></td>
<input type="hidden" name="sname" value=${role}>
	<tr><td><h2 style="font-family:Agency FB;font-size:2vw;color:white">Enter the content: </h2></td><td><textarea style="font-family: Agency FB;align:center;font-size:20px;"rows="5" cols="28" wrap="hard" name="message" required></textarea></td>
	<tr><td></td><td><input type="submit" value="Send" style="width:220px;height:30px;color:black;background-color:white;"></td></tr>
	</table>
	</center>
</form>
</body>
</html>