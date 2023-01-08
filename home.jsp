

<%@include file="./common/navbar.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home ~ MARKET</title>
        <style>
             .list-group-item.active{
                background-color: #0e1c36 !important;
                border-color: #0e1c36 !important;
             }
             body{
                background-color: #ebf2fa !important;
             }
             .btn-outline-primary{
                color: #0e1c36b0 !important;
                border-color: #0e1c36 !important;
                border: 2px solid #0e1c36 !important;
             }
             .btn-outline-primary:hover{
                background-color: #0e1c36 !important;
                color: #fff !important;
             }
        </style>
        <script>
            const params = new URLSearchParams(window.location.search)
            if(params.has('placed'))
            {
                localStorage.removeItem('productArray');
                $(function() {
                    $("#success-alert").html("<strong>Hooray!</strong> Your order has been placed.");
                    $("#success-alert").show();
                    setTimeout(()=>{
                        $("#success-alert").hide();
                    },4500);
                    document.getElementById("cart_icon").dataset.count = 0;
                });
            }
        </script>

    </head>

    <%@page import="java.text.DecimalFormat" %>

    <body>
        <div class="p-4">
            <div class="row">
                <div class="col-md-2">
                    <div class="list-group">
                        <%
                        String c_id=request.getParameter("cid");
                        String classname="list-group-item list-group-item-action";

                        if(c_id == null || c_id.equals("all"))
                            classname+=" active";
                        
                        %>
                        <a href="home?cid=all" class="<%=classname%>">
                          All Products
                        </a>
                        <%
                        try{
                            PreparedStatement pst=con.prepareStatement("select * from CATEGORY");
                            ResultSet rs=pst.executeQuery();
                            while(rs.next())
                            {
                                classname="list-group-item list-group-item-action";
                                if(c_id != null && !c_id.equals("all") && Integer.parseInt(c_id) == rs.getInt(1))
                                    classname+=" active";
                        
                                %>
                                <a href="home?cid=<%=rs.getInt(1)%>" class="<%=classname%>"><%=rs.getString(2)%></a>
                                <%
                            }

                        %>
                      </div>
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <%
                            
                            System.out.println(c_id);
                            DecimalFormat d = new DecimalFormat("'Rs. '0.00");
                            if(c_id == null || c_id.equals("all"))
                                pst=con.prepareStatement("select * from PRODUCT order by Category_id");
                            else
                            {
                                pst=con.prepareStatement("select * from PRODUCT where Category_id=?");
                                pst.setInt(1,Integer.parseInt(c_id));
                            }   
                            rs=pst.executeQuery();
                            while(rs.next())
                            {
                                %>
                                <div class="col-lg-4 col-md-12 mb-4">
                                    <div class="card">
                                        <div class="d-flex justify-content-center mt-2">
                                            <img src="<%=rs.getString(7)%>" class="w-80" style="max-height: 150px;"/>
                                            <!-- <a href="#!">
                                                <div class="hover-overlay">
                                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                                </div>
                                            </a> -->
                                        </div>
                                        <div class="card-body">
                                            <a href="" class="text-reset">
                                            <h5 class="card-title mb-3"><%=rs.getString(2)%></h5>
                                            </a>
                                            <!-- <a href="" class="text-reset">
                                                <p>Category</p>
                                            </a> -->
                                            <div class="d-flex justify-content-between" style="color:#0e1c36b0">
                                                <h6 class="mb-3"><%=d.format(rs.getInt(4))%></h6>
                                                <button type="button" class="btn btn-outline-primary" 
                                                    style="font-size:12px;font-weight:600" onclick='update_cart(<%=rs.getInt(1)%>,"<%=rs.getString(2)%>",<%=rs.getInt(4)%>)'>
                                                    Add To Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%
                            }
                        }
                        catch(Exception e)
                        {
                            out.println(e);
                        }
                        %>
                    </div>
                </div>
                <div class="alert alert-success" id="success-alert" style="position: fixed;right:5px;"></div>
            </div>
    </body>

</html>