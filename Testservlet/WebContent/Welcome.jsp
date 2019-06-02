<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="Icons/fmsi.png" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}
.menu {
  float:left;
  width:20%;
  text-align:center;
}
.menu a {
  background-color:DodgerBlue;
  padding:8px;
  margin-top:7px;
  display:block;
  width:100%;
  color:black;
}
.main {
  float:left;
  width:60%;
  padding:0 20px;
}
.right {
  background-color:DodgerBlue;
  float:left;
  width:20%;
  padding:15px;
  margin-top:7px;
  text-align:center;
  color:black;
  text-style:Bold;
}

@media only screen and (max-width:620px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width:100%;
  }
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Family Media</title>
</head>
<body style="font-family:Agency FB;color:Tomato;background-color:Black;">

<% 
if (session.getAttribute("username")==null)
{
response.sendRedirect("Login.jsp");
}

%>

<div style="background-color:DodgerBlue;padding:10px;text-align:center;color:black;">
  <h1>Welcome to Family Media</h1>
</div>
<h2 style="text-align:left;text-transform:capitalize;">User: ${username}
<span style="float:right;">Role: ${role}
</span></h2>


<div style="overflow:auto">
  <div class="menu">
    <a style="font-size:20px" href="page1.jsp"><b>Create User</b></a>
    <a style="font-size:20px" href="page2.jsp"><b>Send Messages</b></a>
    <a style="font-size:20px" href="page3.jsp"><b>View Messages</b></a>
    <a style="font-size:20px" href="page4.jsp"><b>Relation</b></a>
    <a style="font-size:20px" href="https://hackeshhack.wordpress.com"><b>About</b></a>
  	<form  action="Logout">
    <input style="padding: 10px 32px;font-size: 20px;font-weight: bold;text-decoration: underline;font-family:Agency FB;border: 7px solid black;width:259px;background-color:DodgerBlue; color:black;font-style:Bold;border:none;"type="submit" value="Logout">
    </form>
  </div>

  <div class="main">
   <table><tr>
<td><img src="Icons/fms1.jpg" alt="" width="730px" height="400px"/></td>
</tr>
</table>
    <h2 style="text-transform:capitalize;">Hai ${username}</h2>
    <p>We Welcome you as a Family member to have a look on your family. Kindly spend time with everyone.</p>
  </div>

  <div class="right"><b>
    <h2>About</h2>
    <p><marquee>FMS was designed by hackeshhack@gmail.com</marquee></p>
    </b>
  </div>
</div>

<div style="background-color:DodgerBlue;text-align:center;padding:10px;margin-top:7px;color:black;"><b>© copyright hackeshhack.wordpress.com</b></div>

</body>
</html>