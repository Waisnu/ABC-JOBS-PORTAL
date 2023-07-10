<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="User Profile" name="HTMLtitle" />
</jsp:include>

 <div class="container" style="font-family: 'Roboto Slab', serif;">
        <form:form modelAttribute="profile" action="update-profile" method="post">
        <input type="hidden" name="userDetailsId" value="${id}">
            <div class="row">
            <div class="col-lg-3">
                <div class="card  mt-5">
                 <div class="card-header fs-5">Profile Picture</div>
                    <div class="card-body ">
                  <div class="account-settings">
                    <div class="user-profile">
                        <div class="user-avatar pb-3 text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="img-fluid" style="width:100px">
                        </div>
                        <h5 class="user-name text-center fs-5 fw-normal">${firstName} ${lastName}</h5>
                        <h5 class="user-title text-center fs-5 fw-normal">${title}</h5>                        
                        <h6 class="user-email text-center text-muted">${email}</h6>
                    </div> 
                                      
                 </div>  
                 <div class="mt-3" style="text-align:center; ">
                    <button type="submit" class="btn btn-primary text-center">Save Changes</button>
                </div>               
               </div>                               
             </div>
           </div>

          <!--- Personal Details, About, Experience, and Education Card-->                             
            <div class="col-lg-6 gedf-main mt-5">          
                    <div class="card social-timeline-card mb-4 shadow-lg">
                    <div class="card-header">
					<h2 class="fw-semibold">Personal Details</h2>
                    </div>
					  <div class="card-body">
         		<div class="row gutters">
                  
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group" >
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name" value="${firstName}">
                        </div>
                    </div>
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name" value="${lastName}">
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email ID" value="${email}" disabled>
                        </div>
                    </div>
                  <!-- <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone number" value="${phone}">
                        </div>
                    </div> -->
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="website">Websites</label>
                            <input type="text" class="form-control" id="website" name="website" placeholder="Website url" value="${website}">
                        </div>
                    </div>
                    
                      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="company">Company</label>
                            <input type="text" class="form-control" id="company" name="companyName" placeholder="Company" value="${company}">
                        </div>
                    </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
                            <label for="title">Position</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Position" value="${title}">
                        </div>
                    </div>
                </div>
					  </div>				
                </div>
                
                 <%-- About --%>
                 <div class="card social-timeline-card mb-5 shadow-lg">
                    <div class="card-header">
					<h2 class="fw-semibold">About</h2>
                    </div>
					  <div class="card-body">
					  	<textarea class="form-control" name="about" id="about" cols="10">${about}</textarea>						
					  </div>				
                </div>
                    
                    
                    <div class="mb-3"  style="color: white">
                        <div class="d-flex">
                            <h3 class="fw-semibold" >Experience</h3>
                            <button type="button" class="btn btn-primary ms-auto" data-bs-toggle="modal"
                                data-bs-target="#experiences">
                                Add Experience
                            </button>

                            <div class="modal fade" id="experiences" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="experiencesLabel">Add Experience</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="position" name="position">
                                                <label for="position">Position</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="startDateEX"
                                                    name="startDateEX">
                                                <label for="startDateEX">Start Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="endDateEX" name="endDateEX">
                                                <label for="endDateEX">End Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="companyName"
                                                    name="companyNameEX">
                                                <label for="companyName">Company Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal"
                                                id="exBtn">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div id="experiencesMD"></div>
                        <% int i = 0; %>
                        <c:forEach var="e" items="${ex}">
                        	<% i = i + 1; %>
                            <div class="c-ibc d-flex align-items-center border position-relative border mb-3 rounded-3 px-2">
                                <i class='bx bx-map-pin fs-2'></i>
                                <div class="p-3">
                                    <h4>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                    <small>${e.getCompanyName()}</small>
                                </div>
                                <div class="interactive-bc">
								  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#ex<%= i %>"><i class='bx bx-pencil'></i></button>
								  	<button type="button" class="button-card-hover text-danger"><i class='bx bx-trash'></i></button>
								</div>
                            </div>
                            
                            <!-- Edit -->
							<div class="modal fade" id="ex<%= i %>" tabindex="-1"  style="color: white">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        ...
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							        <button type="button" class="btn btn-primary">Save changes</button>
							      </div>
							    </div>
							  </div>
							</div>
                            
                        </c:forEach>
                    </div>
                    <div>
                        <div class="d-flex">
                            <h3 class="fw-semibold">Education</h3>
                            <button type="button" class="btn btn-primary ms-auto" data-bs-toggle="modal"
                                data-bs-target="#educations">
                                Add Education
                            </button>
                            <div class="modal fade" id="educations" tabindex="-1" aria-labelledby="educationsLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="educationsLabel">Add Education</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="intitutionName"
                                                    name="intitutionName">
                                                <label for="intitutionName">Institution Name</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="startDateED"
                                                    name="startDateED">
                                                <label for="startDateED">Start Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="endDateED" name="endDateED">
                                                <label for="endDateED">End Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="educationName"
                                                    name="educationName">
                                                <label for="educationName">Course Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal"
                                                id="edBtn">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div id="educationsMD" style="color: white"></div>
                        <c:forEach var="e" items="${ed}">
                            <div class="d-flex align-items-center">
                                <i class='bx bx-map-pin fs-2'></i>
                                <div class="p-3">
                                    <h4>${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                    <small>${e.getIntitutionName()}</small>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
    
<script src="../js/profile.js">
</script>

 
<jsp:include page="../../footer.jsp"></jsp:include>