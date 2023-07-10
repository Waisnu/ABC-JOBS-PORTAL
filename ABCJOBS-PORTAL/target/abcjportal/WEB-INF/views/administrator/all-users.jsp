<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="All users" name="HTMLtitle" />
    <jsp:param value="../css/zephyr.css" name="isNested" />
</jsp:include>

<div class="container d-flex justify-content-center align-items-center vh-100">
	<table class="table table-hover my-3">
	    <thead>
	      <tr>
	        <th scope="col">#</th>
	        <th scope="col">Full Name</th>
	        <th scope="col">Email</th>
	        <th scope="col">Title</th>
	        <th scope="col">Action</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<% int i = 1; %>
		   	<c:forEach var="user" items="${users}">
	   		  <tr>
		        <th scope="row"><%= i++ %></th>
		        <td>${user.getFirstName()} ${user.getLastName()}</td>
		        <td>${user.getUser().getEmail()}</td>
		        <td>${user.getTitle() == null ? "-" : user.getTitle()}</td>
		        <td>
		          <a href="profile/${user.getUserId()}">Edit</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#deleteModal">Delete</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}">Detail</a>
		        </td>
		      </tr>
		      
		      <!-- delete confirmation -->
				<div class="modal fade" id="deleteModal" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete ${user.getFirstName()}</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        You want to really delete this user?
				      </div>
				      <div class="modal-footer">
				        <a href="delete/${user.getUserId()}" class="btn btn-outline-danger">Delete</a>
				      </div>
				    </div>
				  </div>
				</div>
				
				<!-- detail -->
				 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Detail</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <ul class="list-group list-group-flush">
				          <li class="list-group-item">
				            <h4>First Name</h4>
				            <p>${user.getFirstName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Last Name</h4>
				            <p>${user.getLastName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>City</h4>
				            <c:forEach var="c" items="${cities}">
		            			<p>
		            				${user.getCityId().equals(c.getCityId().toString()) ? c.getCountry().getCountryName() : "" }
	            			 	</p>
				            </c:forEach>
				          </li>
				          <li class="list-group-item">
				            <h4>Title</h4>
				            <p>${user.getTitle()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>About</h4>
				            <p>${user.getAbout()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Company Name</h4>
				            <p>${user.getCompanyName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Website</h4>
				            <a href="">${user.getWebsite()}</a>
				          </li>
				        </ul>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
			  	</div>
			   </div>
		   	</c:forEach>
	    </tbody>
	  </table>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>  --%>


<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="All users" name="HTMLtitle" />
    <jsp:param value="../css/zephyr.css" name="isNested" />
</jsp:include>

<div class="container  justify-content-center align-items-center bootstrap snippets bootdey min-vh-100">
    <div class="row">
    <div>
    <h1 class="pb-5 mt-5 text-center text-primary" style="color: #2bcbba;">Admin | User's Information</h1>

    </div>
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
    <tr>
        <th style="color: white;"><span>#</span></th>
        <th style="color: white;"><span></span></th>
        <th style="color: white;"><span>Full Name</span></th>
        <th class="" style="color: white;"><span>Email</span></th>
        <th style="color: white;"><span>Title</span></th>
        <th style="color: white;"><span>Action</span></th>
        <th>&nbsp;</th>
    </tr>
</thead>

 							
 							<tbody>
 								<% int i = 1; %>
		   						<c:forEach var="user" items="${users}">
                                <tr>
                                	<th scope="row"><%= i++ %></th>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" style="width:100px; height:100px;"alt=""></td>
                                    <td style="color: white;">${user.getFirstName()} ${user.getLastName()}</td>
<td style="color: white;">${user.getUser().getEmail()}</td>
<td style="color: white;">${user.getTitle() == null ? "-" : user.getTitle()}</td>

							        <td> 
							          <a href="profile/${user.getUserId()}" class="text-success" style="text-decoration:none;">Edit</a>
							          <a href="" data-bs-toggle="modal" data-bs-target="#deleteModal${user.getUserId()}" class="text-danger ps-3 pe-3" style="text-decoration:none;">Delete</a>
							          <a href="" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}" style="text-decoration:none;">Detail</a>
							        </td>
                                </tr>   
                                
                         <!-- delete confirmation -->
				<div class="modal fade" id="deleteModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete ${user.getFirstName()}</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        Do you really want to delete this user?
				      </div>
				      <div class="modal-footer">
				        <a href="delete/${user.getUserId()}" class="btn btn-outline-danger">Delete</a>
				      </div>
				    </div>
				  </div>
				</div>
				
				<!-- detail -->
				 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">User Information</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">				     
					  <div class="card-body">
         		<div class="row gutters">
                  
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="firstName" class="pb-2">First Name</label>                        				            
				            <p class="border border-1 border border-dark rounded-2 p-1">${user.getFirstName()}</p>
                        </div>
                    </div>
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" class="pb-2">
                            <label for="lastName" class="pb-2">Last Name</label>
                             <p class="border border-1 border border-dark rounded-2 p-1">${user.getLastName()}</p>
                        </div>
                    </div>
                     <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" class="pb-2">
                            <label for="lastName">About</label>
                             <p class="border border-1 border border-dark rounded-2 p-1">${user.getAbout()}</p>
                        </div>
                    </div>
                          
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" class="pb-2">
                            <label for="website">Websites</label>
                             <p class="border border-1 border border-dark rounded-2 p-1">${user.getWebsite()}</p>
                        </div>
                    </div>
                    
                      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" class="pb-2">
                            <label for="company">Company</label>
                             <p class="border border-1 border border-dark rounded-2 p-1">${user.getCompanyName()}</p>
                        </div>
                    </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" class="pb-2">
                            <label for="title">Position</label>
                             <p class="border border-1 border border-dark rounded-2 p-1">${user.getTitle()}</p>
                        </div>
                    </div>
                </div>
					  </div>				
                </div>
                 <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
			  	</div>
			   </div>
			 
		   	</c:forEach>
	    </tbody>
	  </table>
</div>
</div>
</div>
</div>
</div>
<div>
</div>
</div>
                
<jsp:include page="../../footer.jsp"></jsp:include>               		
				                         
				                      