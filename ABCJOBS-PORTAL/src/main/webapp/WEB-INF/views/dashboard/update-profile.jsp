<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="../../header.jsp">
        <jsp:param value="Update Profile" name="HTMLtitle" />
    </jsp:include>



 <div class="container" style="font-family: 'Roboto Slab', serif;">
        <form:form modelAttribute="profile" action="update-profile" method="post">
            <div class="row">
            <div class="col-lg-3">
                <div class="card  mt-5">
                 <div class="card-header">Profile Picture</div>
                    <div class="card-body">
                  <div class="account-settings">
                    <div class="user-profile">
                        <div class="user-avatar">
                            <img class="rounded-circle" src="https://i0.wp.com/www.cssscript.com/wp-content/uploads/2020/12/Customizable-SVG-Avatar-Generator-In-JavaScript-Avataaars.js.png?fit=438%2C408&ssl=1" alt="Maxwell Admin">
                        </div>
                        <h5 class="user-name">${firstName} ${lastName}</h5>
                        <h5 class="user-title">${title}</h5>                        
                        <h6 class="user-email">${email}</h6>
                    </div> 
                                      
                 </div>  
                 <div class="" style="text-align:center; ">
                    <button type="submit" class="btn btn-primary text-center">Save Changes</button>
                </div>               
               </div>                               
             </div>
           </div>

          <!--- Personal Details, About, Experience, and Education Card-->                             
            <div class="col-lg-6 gedf-main mt-5">          
                    <div class="card social-timeline-card">
                    <div class="card-header">
					<h2>Personal Details</h2>
                    </div>
					  <div class="card-body">
         		<div class="row gutters">
                  
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="form-group">
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
                 <div class="card social-timeline-card">
                    <div class="card-header">
					<h2>About</h2>
                    </div>
					  <div class="card-body">
					  	<textarea class="form-control" name="about" id="about" cols="10">${about}</textarea>						
					  </div>				
                </div>
                    
                    
                    <div class="mb-3"  style="color: white">
                        <div class="d-flex">
                            <h3>Experience</h3>
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
        <i class="bx bx-map-pin fs-2"></i>
        <div class="p-3" style="color: white">
            <h4>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
            <small>${e.getCompanyName()}</small>
        </div>
        
        <div class="interactive-bc">
        
        <!--TR DELETE -->
     
                                
                                 
            <button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#ex${i}">
                <i class="bx bx-pencil"></i>
            </button>
            <button type="button" class="button-card-hover text-danger" onclick="deleteExperience(${i})">
             <i class="bx bx-trash"></i>
            </button>
         
            

        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal fade" id="ex${i}" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Experience</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Add your form fields for editing here -->
                    <!-- Example: -->
                    <label for="position${i}">Position:</label>
<input type="text" id="position${i}" name="position${i}" value="${e.position}">

<label for="startDate${i}">Start Date:</label>
<input type="text" id="startDate${i}" name="startDate${i}" value="${e.startDate}">


                    <!-- Add more form fields as needed -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="saveChanges(${i})">Save changes</button>
                </div>
            </div>
        </div>
    </div>
  


<script>
function deleteExperience(experienceId) {
    // Display a confirmation dialog
    if (confirm("Are you sure you want to delete this experience?")) {
        // Perform an AJAX request to delete the experience
        $.ajax({
            type: 'POST',
            url: '/delete-experience/' + experienceId,
            success: function(data) {
                // Handle the success response
                // You can redirect or show a success message
                window.location.reload(); // Refresh the page
            },
            error: function(xhr, status, error) {
                // Handle the error response
                // You can display an error message or take appropriate action
                console.log(xhr.responseText);
            }
        });
    }
}


    function saveChanges(index) {
        // Retrieve the updated values from the input fields in the modal
        const position = document.querySelector(`#position${index}`).value;
        const startDate = document.querySelector(`#startDate${index}`).value;
        // Retrieve other input values as needed

        // Create an object with the updated values
        const updatedExperience = {
            position: position,
            startDate: startDate,
            // Add other properties as needed
        };

        // Send an AJAX request to update the experience on the server-side
        const xhr = new XMLHttpRequest();
        xhr.open("POST", `/update-experience/${index}`, true); // Use POST method and specify the endpoint
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    // Handle the successful response
                    console.log("Experience updated successfully!");
                } else {
                    // Handle any errors or failed response
                    console.error("Failed to update experience:", xhr.responseText);
                }
            }
        };
        xhr.send(JSON.stringify(updatedExperience));
    }
</script>



</c:forEach>
</div>
                    
                   
                    
                    <div>
                        <div class="d-flex"  style="color: white">
                            <h3>Education</h3>
                            <button type="button" class="btn btn-primary ms-auto" data-bs-toggle="modal"
                                data-bs-target="#educations">
                                Add Education
                            </button>
                            <div class="modal fade" id="educations" tabindex="-1" aria-labelledby="educationsLabel"
                                aria-hidden="true"  style="color: white">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="educationsLabel">Add Education</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body"  style="color: white">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="intitutionName"
                                                    name="intitutionName">
                                                <label for="intitutionName">Institution Name</label>
                                            </div>
                                            <div class="form-floating mb-3"  style="color: white">
                                                <input type="date" class="form-control" id="startDateED"
                                                    name="startDateED">
                                                <label for="startDateED">Start Date</label>
                                            </div>
                                            <div class="form-floating mb-3"  style="color: white">
                                                <input type="date" class="form-control" id="endDateED" name="endDateED">
                                                <label for="endDateED">End Date</label>
                                            </div>
                                            <div class="form-floating mb-3"  style="color: white">
                                                <input type="text" class="form-control" id="educationName"
                                                    name="educationName">
                                                <label for="educationName">Course Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer"  style="color: white">
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal"
                                                id="edBtn">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr >
                        <div id="educationsMD"  style="color: white"></div>
                        <c:forEach var="e" items="${ed}">
                            <div class="d-flex align-items-center"  style="color: white">
                                <i class='bx bx-map-pin fs-2' style="color: white"></i>
                                <div class="p-3"  style="color: white" >
                                    <h4  style="color: white">${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                    <small  style="color: white">${e.getIntitutionName()}</small>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
    
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
<script src="../js/profile.js">
</script>

<jsp:include page="../../footer.jsp"></jsp:include>