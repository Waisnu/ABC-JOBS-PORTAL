<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Reset" name="HTMLtitle" />
</jsp:include>

<div class="container min-vh-50 card border border-2 border border-dark mx-auto m-5" style="width: 50rem; font-family: 'Roboto Slab', serif;" >
    <form:form action="reset" method="post" >
        <div class="card-body m-4 pe-5 ps-5">
          <h3 class="card-title mb-4">Change your password</h3>
          <hr class="border border-1 border border-dark mb-4">
          <h5 class="card-subtitle mb-4 ">Please create a new password for your account</h5>
          
          <div class="lh-base" style=" text-align: justify;">
          <p class="card-text"><b>Tips:</b> We strongly recommend using a password that is unique to ABC Jobs.
				Avoid overly simple passwords like 12345, or password123. Use a combination of characters, letters and numbers</p>
		</div>      
        </div>
        <div class="w-50 d-grid gap-2 col-3 mx-auto">
		  <div class="mb-3">
		    <label for="password" class="form-label">New Password</label>
		    <input type="password" class="form-control border border-1 border border-dark" id="password" name="password" required>
		    <div class="invalid-feedback">
	      		Password required & must be match
	   		</div>
		  </div>
		  <div class="mb-3">
		    <label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
		    <input type="password" class="form-control border border-1 border border-dark" id="passwordConfirmation" required>
		    <div class="invalid-feedback">
	      		Password required & must be match
	   		</div>
		  </div>
		  </div>
		  <button type="submit" class="btn btn-primary d-grid gap-2 col-3 mx-auto mb-5" data-bs-toggle="modal" data-bs-target="#ver" style="width:30%;">Update Password</button>  	
  </form:form>  
      </div>

<jsp:include page="../../footer.jsp"></jsp:include>