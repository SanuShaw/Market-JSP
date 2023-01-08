<%@page import="java.sql.*" %>
<%!
	Connection con=null;
%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://sql6.freesqldatabase.com:3306/sql6511090","sql6511090","5utPIJUMNT");

	}
	catch(Exception e){}
%>
