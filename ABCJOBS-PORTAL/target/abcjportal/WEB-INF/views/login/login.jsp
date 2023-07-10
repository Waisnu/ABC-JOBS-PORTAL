<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>
  <section class="vh-50 mt-5" style="font-family: 'Roboto Slab', serif;">
        <div class="container h-50">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md- col-xl-11">
              <div class="card text-black" style="border-radius: 25px;">
                <div class="card-body p-md-3 " >
                  <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">      
                      <p class="text-center h1 fw-bold mb-4 mx-1 mx-md-4 mt-4">Sign in</p>     
                                       
                      <form:form class="mx-1 mx-md-4" action="login" method="post">                                
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <div class="mb-4 text-center fs-5">                            
                      	<span>Don't have an account yet?</span>
      					<a href="registration" style="text-decoration: none;">Register</a>
      					</div>

					    <div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? " d-none" : "d-block" }" role="alert">
					      ${ message }
					      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					    </div>
					
					    <div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? " d-none" : "d-block" }" role="alert">
					      ${ scMessage }
					      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					    </div>
					
					<label class="form-label" for="emailAddress">Email</label>
                            <input type="email" id="emailAddress" name="email" required class="form-control" />
                          </div>
                        </div>      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <label class="form-label" for="password">Password</label>
                            <input type="password" id="password" name="password" class="form-control" required/>
                          </div>
                        </div>                           
                        <div class=" d-flex justify-content-center mb-4">                       
                          <label class="fs-5 mb-2">
                            Forget your password? 
                            <button type="button" class=" text-dark fs-6 btn btn-outline-success btn-sm" style="text-decoration:none; margin:0"  
                            data-bs-toggle="modal" data-bs-target="#ver">Click here</button>
                          </label>
                        </div>
                        
                        <%-- modal --%>
	                 	 <div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog ">
						    <div class="modal-content">
						      <div class="modal-header  border border-0">
					              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					            </div>
						      <div class="modal-body">
						      	<i class='bx bxs-envelope fs-2'></i>
						      	<h2>Forget your password?</h2>
						      	<p>Please click the button below for further instructions in resetting your password.</p>
						 		<a href="forgot-password" class="btn btn-primary ">Continue</a>
						      </div>
						      <div class="modal-footer border border-0">
           					 </div>						        
						    </div>
						  </div>
						</div>
					  <%-- modal --%>
                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                          <button type="submit" class="fs-5 btn btn-primary btn-sm" style="width:100%;">Log in</button>
                        </div>      
                      </form:form>      
                    </div>
                   <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
  <img src="images/loginpage-2.svg" class="img-fluid" style="width: 100%; height: auto;">
</div>
      
                  
                 
                </div>
              </div>
            </div>
           
          </div>
        </div>
      </section>

<jsp:include page="../../footer.jsp"></jsp:include>