<% 
	try{ 
		String first_name = request.getParameter("fname");
		String last_name = request.getParameter("lname");
		String address = request.getParameter("addr");
		//String addr = request.getParameter("addr");
		String pincode = request.getParameter("pincode");
		String email = request.getParameter("email");
		
		if(first_name.isEmpty() || last_name.isEmpty() || email.isEmpty() || address.isEmpty() || pincode.isEmpty())
		{
			String errMsg="Provide all info";
			session.setAttribute("errMsg",errMsg);
			System.out.print("\n"+first_name);

		    response.sendRedirect("../register");
		}
		else
		{
			response.sendRedirect("../login");
		}
	}
	catch(Exception e)
		{
			out.println(e);
		}
%>

