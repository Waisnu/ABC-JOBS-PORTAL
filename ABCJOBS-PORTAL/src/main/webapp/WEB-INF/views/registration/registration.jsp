<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Registration" name="HTMLtitle" />
</jsp:include>
<section class="vh-50 mt-5" style="font-family: 'Roboto Slab', serif;">
        <div class="container h-50">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-12 col-xl-11">
              <div class="card text-black" style="border-radius: 25px;">
                <div class="card-body p-md-3 " >
                  <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                    
                      <p class="text-center h1 fw-bold mb-4 mx-1 mx-md-4 mt-4 fs-1">Sign up</p>   


    <div class="alert alert-danger ${errMsg != null ? " d-block" : "d-none" }" role="alert">
      ${errMsg}
    </div>

    <form:form class="mx-1 mx-md-4" action="registration" method="post" modelAttribute="registration">
     <div class="mb-4 text-center fs-5">
     <span>I am already a member!</span>
     <a href="login" style="text-decoration: none;">Log in</a>
      </div>
      					

		<div class="d-flex flex-row align-items-center mb-4 mt-3">
		<i class="fas fa-user fa-lg me-3 fa-fw"></i>                         
		<div class="form-outline flex-fill mb-0">
		                          
		<label for="firstName" class="form-label">First Name</label>
		<input type="text" class="form-control" id="firstName" name="firstName" required>
		<div class="invalid-feedback">
		First Name is required
		</div>
		</div>          
		</div>

		<div class="d-flex flex-row align-items-center mb-4 mt-3">
		<i class="fas fa-user fa-lg me-3 fa-fw"></i>                         
		<div class="form-outline flex-fill mb-0">
		                          
		<label for="lastName" class="form-label">Last Name</label>
		<input type="text" class="form-control" id="lastName" name="lastName" required>
		<div class="invalid-feedback">
		last Name is required
		</div>
		</div>          
		</div>

      <div class="d-flex flex-row align-items-center mb-4">
		<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
		<div class="form-outline flex-fill mb-0">
        <label for="emailAddresss" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailAddress" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>" required>
        <div class="invalid-feedback">
          Email address should be have @ and .
        </div>
      </div>
	</div>
	
        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
        <div class="invalid-feedback">
          Password required & must be match
        </div>
      </div>
      </div>

          <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">   
        <label for="passwordConfirmation" class="form-label">Password Confirmation</label>
        <input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" required>
        <div class="invalid-feedback">
          Password required & must be match
        </div>
      </div>
      </div>
      
		<%--Terms of service --%>
		<div class="form-check d-flex justify-content-center mb-5">
		<input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
		<label class="form-check-label">
		I agree all statements in <a href="#!">Terms of service</a>
		</label>
		</div>
		<%--Terms of service --%>
     		 
		<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
		<button type="submit" class="btn btn-primary btn-lg">Register</button>
		</div>  
		</form:form>
		</div>
<div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">                          
<img src="images/join-now.svg" class="img-fluid" alt="join now">                         
</div>                    
</div>                  
</div>                
</div>      
</div>          
</div>          
</div>
</section>      
<jsp:include page="../../footer.jsp"></jsp:include>