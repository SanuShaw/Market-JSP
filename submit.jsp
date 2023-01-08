<h1>Submit</h1>
<%
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    if(email.isEmpty() || pass.isEmpty())
    {
        response.sendRedirect("./login.jsp");
    }
    
%>