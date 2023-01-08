
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Order ~ MARKET</title>
    <style>
    
        body{
            background-color: #ebf2fa !important;
        }
        .table-order thead th{
            background-color: #0e1c36b0 !important;
            border-color: #0e1c36 !important;
            border: 2px solid #0e1c36 !important;
            color: white;
        }
        .table-order tr{
            border: 2px solid #0e1c36 !important;
            border-color: #0e1c36 !important;
        }
        
    </style>

</head>

<%@include file="./common/navbar.jsp" %>

<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>

<body>
<div class="container">
    <center><h2 class="container pt-2">My Orders</h2></center>
   <div class="row">
    <%
    try{
        DecimalFormat d = new DecimalFormat("'Rs. '0.00");
        SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        SimpleDateFormat sdf = new SimpleDateFormat("E, dd MMM yyyy h:mm a");  

        PreparedStatement pst=con.prepareStatement("select * from ORDERS where customer_id=? order by order_date desc");
        pst.setInt(1,1);
        ResultSet rs=pst.executeQuery();

        %>
        <table class="table table-order table-hover">
            <thead class="thead light">
            <tr>
                <th scope="col">Order Date</th>
                <th scope="col">Total Quantity</th>
                <th scope="col">Total Amount</th>
                <th scope="col">Status</th>
            </tr>
            </thead>
            <tbody>
        <%
        while(rs.next())
        {
            %>
            <tr>
                <td><%=sdf.format(sd.parse(rs.getString(5)).getTime() + (5.5 *3600*1000))%></td>
                <td><%=rs.getInt(6)%></td>
                <td><%=d.format(rs.getInt(3))%></td>
                <td>Placed</td>
            </tr>
            <%
        }
        %>
            </tbody>
        </table>
        <%
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
    </div>
</div>
