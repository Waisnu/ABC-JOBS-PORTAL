<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin Dashboard" name="HTMLtitle" />
</jsp:include>


<div class="container d-flex justify-content-center align-items-center min-vh-100" >
    <div class="card shadow-lg w-60 d-flex justify-content-center align-items-center" >
        <img src="images/img4.svg" width="600px" height="300px" style="transform: translateY(-50%); position: absolute;">
        <div class="card-body text-center mb-3" style="margin-top: 170px;">
          <h5 class="card-title text-dark ms-5 me-5 mb-3" style="font-family: 'Bodoni Moda', serif; font-size: 50px;">Welcome Back, ${adminName}</h5>
           <a href="admin/send-bulk" class="btn btn-primary" style="font-family: 'Roboto Slab', serif;">Send bulk email</a>
  		   <a href="admin/all-users" class="btn btn-primary" style="font-family: 'Roboto Slab', serif;">Show all users</a>
        </div>
      </div>
   </div>




<jsp:include page="../../footer.jsp"></jsp:include>