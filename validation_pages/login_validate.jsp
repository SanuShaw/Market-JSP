
<%@include file="../common/connnection.jsp" %>

<%
	try{
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		PreparedStatement ppst=con.prepareStatement("select * from USER where Email=? and  Password=?");
		ppst.setString(1,username);
		ppst.setString(2,password);
		ResultSet rs=ppst.executeQuery();
		//System.out.print("\n"+rs);
		if(username.isEmpty()||password.isEmpty())
		{
			String errMsg="Provide Id & password";
			session.setAttribute("errMsg",errMsg);
		    response.sendRedirect("../login");
		}
		else if(rs.next()){
			session.setAttribute("user_id",rs.getInt(1));
			response.sendRedirect("../home");
		}
		else{
			String errMsg="Wrong inputs!!!!";
			session.setAttribute("errMsg",errMsg);
		    response.sendRedirect("../login");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
