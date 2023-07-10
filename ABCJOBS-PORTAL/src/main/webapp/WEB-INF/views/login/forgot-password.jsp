<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>
<!-- <div >
   <h2>Reset your password</h2>
    <p>Enter your email and we'll send you a link to reset your password</p>
    <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
  		${message}
	</div>
    <form action="forgot-password" method="post">
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required>
            <label for="floatingInput">Email address</label>
			<div class="invalid-feedback">
	      		Email address should be have @ and .
    		</div>
        </div>
        <button type="submit" class="btn btn-primary">Reset your password</button>
    </form>
</div> -->


<div class="container min-vh-50 card border border-2 border border-dark mx-auto m-5" style="width: 50rem; font-family: 'Roboto Slab', serif;" >
  
    <form action="forgot-password" method="post" >
        <div class="card-body m-4 pe-5 ps-5">
         <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
  		${message}
	</div>
          <h3 class="card-title mb-4 fs-3">Reset your password</h3>
          <hr class="border border-1 border border-dark mb-4">
          <h5 class="card-subtitle mb-2 fs-5 text-center">Please enter your registered email address</h5>
                     
        </div>
        <div class="w-50 d-grid gap-2 col-3 mx-auto">
		  <div class="mb-3">
		    <label for="floatingInput" class="form-label">Email Address</label>
		    <input  type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required>		    	     
		 <div class="invalid-feedback">
	      		Email address should be have @ and .
    		</div>
		  </div>
			
		  </div>
		  <button type="submit" class="btn btn-primary d-grid gap-2 col-3 mx-auto mb-5" data-bs-toggle="modal" data-bs-target="#ver" style="width:30%;">Continue</button>  	
  </form>  
      </div>
<jsp:include page="../../footer.jsp"></jsp:include>