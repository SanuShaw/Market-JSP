<%@include file="../common/connnection.jsp" %>

<%
	try{
        int total_quantity = Integer.parseInt(request.getParameter("total_quantity"));
		int total_amount = Integer.parseInt(request.getParameter("total_amount"));

        PreparedStatement ppst=con.prepareStatement("Insert into ORDERS (`customer_id`,`total`,`quantity`) values (?,?,?)");
		ppst.setInt(1,1);
		ppst.setInt(2,total_amount);
        ppst.setInt(3,total_quantity);

        int res=ppst.executeUpdate();
        if(res>0){
            response.sendRedirect("../home?placed=true");
        }


    }
	catch(Exception e)
	{
		out.println(e);
	}
%>