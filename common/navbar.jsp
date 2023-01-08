<%
    if(session.getAttribute("user_id") == null )
    {
        System.out.print("\nNot allowed!!!");
        response.sendRedirect("./login");
    }
%>
<style>
    .navbar{
      position: sticky !important;
      top: 0;
      z-index: 5;
    }
    .badge:after{
        content:attr(data-count);
        font-size:12px;
        color: #fff;
        background: #e62929;
        border-radius:50%;
        padding: 2px 5px;
        position:relative;
        left:-6px;
        top:-12px;
        opacity:0.9;
    }
    .badge{
      cursor: pointer;
      margin-right: 20px;
    }
</style>

<!-- common include -->
<%@include file="common-style.jsp" %>
<script src="./js/script.js"></script>
<%@include file="connnection.jsp" %>
<%@include file="../common/modal.jsp" %>
<%
  String requestURI=request.getRequestURI();
  System.out.print("\n"+requestURI.contains("/home"));
%>


<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #0e1c36;color: white;">
    <img src="./image/logo_text.jpg" height="40px" class="px-4"/>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class='<%=requestURI.contains("/home")?"nav-item nav-link active mx-5":"nav-item nav-link mx-5"%>' href="./home">Home</a>
        <a class='<%=requestURI.contains("/order")?"nav-item nav-link active mx-5":"nav-item nav-link mx-5"%>' href="./order">My Orders</a>
        <a class="nav-item nav-link mx-5" href="#">About us</a>
        <a class="nav-item nav-link mx-5 disabled" href="#">Profile</a>  
      </div>
      <div>
        <i class="fa badge fa-lg" data-toggle="modal" data-target="#Cart" id="cart_icon" data-count=0>&#xf07a;</i>
        <a href="./validation_pages/logout_validation.jsp">
            <button class="btn btn btn-outline-light my-2 my-sm-0 btn-sm">Logout</button>
        </a>
      </div>
    </div>
  </nav>