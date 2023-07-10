<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Profile" name="HTMLtitle" />
</jsp:include>


<div class="container" style="font-family: 'Roboto Slab', serif;">
    	<div class="alert alert-success alert-dismissible fade show ${message == null ? " d-none" : "d-flex" }"
                role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
        <div class="img" style="    background-image: linear-gradient(150deg, rgba(63, 174, 255, .3)15%, rgba(63, 174, 255, .3)70%, rgba(63, 174, 255, .3)94%), url(images/pic2.jpeg);height: 350px;background-size: cover;"></div>
        <div class="card social-prof">
            <div class="card-body">
                <div class="wrapper">
                    <img src="https://i0.wp.com/www.cssscript.com/wp-content/uploads/2020/12/Customizable-SVG-Avatar-Generator-In-JavaScript-Avataaars.js.png?fit=438%2C408&ssl=1" alt="" class="user-profile">
                    <h3>${fullName}</h3>
                    <span class="fs-4">${title}</span>
                </div>
            </div>
        </div>
        
		 <div class="row">
            <div class="col-lg-3">
                <div class="card">
                    <div class="card-body ">
						<a href="update-profile" class="btn btn-primary mb-3" style="width:100%;">Edit Profile</a>
                        <div class="fs-6"><strong>Name :</strong> ${fullName}</div>
                        <div class="fs-6 mt-2"><strong>Position :</strong> ${title}</div>
                        <div class="fs-6 mt-2"><strong>About :</strong> ${about}</div>                       
                    </div>
                    
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="h6 text-muted">Followers</div>
                            <div class="h5">5.2342</div>
                        </li>
                        <li class="list-group-item">
                            <div class="h6 text-muted">Following</div>
                            <div class="h5">6758</div>
                        </li>
                        <li class="list-group-item">
                            <div class="h6 text-muted">Themes</div>
                            <div class="h5">6758</div>
                        </li>
                    </ul>
                </div>
                
                  <div class="card social-timeline-card">
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-muted">Other Details</h3>
					<ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="fs-5  mb-3">Company</div>
                            <div class="fs-6 ">${company}</div>
                        </li>
                        <li class="list-group-item">
                            <div class="fs-5 mb-3">Email</div>
                            <div class="fs-6 ">${email}</div>
                        </li>
                       <!-- <li class="list-group-item">
                            <div class="fs-5 mb-3">Phone</div>
                            <div class="fs-6 ">${phone}</div>
                        </li> -->
                        <li class="list-group-item">
                            <div class="fs-5 mb-3">Websites</div>
                            <div class="fs-6 ">${website}</div>
                        </li>
                    </ul>
                    </div>
                </div>  
                
            </div>
                                
            
            <div class="col-lg-6 gedf-main">
                <!--- Experience and Education Card-->
                <div class="card social-timeline-card">
                    <div class="card-header" style="color: #2babba" >
					<h2>Experience</h2>
                    </div>
					  <div class="card-body">
 					 <c:forEach var="e" items="${ex}">
                    <div class="d-flex align-items-center">
                        <i class='bx bx-map-pin fs-2'></i>
                        <div class="p-3">
                            <h4>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                            <small>${e.getCompanyName()}</small>
                        </div>
                    </div>
                </c:forEach>
					  </div>				
                </div>
                
                  <div class="card social-timeline-card">
                    <div class="card-header" style="color: #2babba">
					<h2>Education</h2>
                    </div>
					  <div class="card-body">
 						 <c:forEach var="e" items="${ed}">
                    <div class="d-flex align-items-center">
                        <i class='bx bx-book fs-2'></i>
                        <div class="p-3">
                            <h4>${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                            <small>${e.getIntitutionName()}</small>
                        </div>
                    </div>
                </c:forEach>
					  </div>				
                </div>
       		</div>
       		
       		
       		      <div class="col-lg-3">
       		      
       		      <div class="card">
                    <div class="card-header ">
                        <div class="h2 text-center text-muted">Announcements</div>                                          
                    </div>
                    <div class="card-body">
                           <div class="border-bottom mb-3">
				          <h4 class="fs-4">${nf1.getEmailSubject()}</h4>
				          <p>Check your email</p>
				        </div>
				
				        <div class="border-bottom mb-3">
				          <h4 class="fs-4">${nf2.getEmailSubject()}</h4>
				          <p>Check your email</p>
				        </div>
				        
				        <div class="border-bottom mb-3">
				          <h4 class="fs-4">${nf3.getEmailSubject()}</h4>
				          <p>Check your email</p>
				        </div>
				
				        <div class="text-center">
				          <a href="" class="btn btn-primary">See all notifications</a>
				        </div>
                    </div>                                      
                </div>
               
             <div class="card social-timeline-card">
                    <div class="card-body">
                        <h5 class="card-title text-muted">People you may know</h5>
                        <ul class="friend-list">
                            <li>
                                <div class="left">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                </div>
                                <div class="right">
                                    <h3>Chris Lane</h3>
                                    <p>30 Friends</p>
                                </div>
                            </li>
                            <li>
                                <div class="left">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="">
                                </div>
                                <div class="right">
                                    <h3>James Miller</h3>
                                    <p>23 Friends</p>
                                </div>
                            </li>
                            <li>
                                <div class="left">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                                </div>
                                <div class="right">
                                    <h3>Patricia Smith</h3>
                                    <p>30 Friends</p>
                                </div>
                            </li>
                            <li>
                                <div class="left">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="">
                                </div>
                                <div class="right">
                                    <h3>Robert Johnson</h3>
                                    <p>33 Friends</p>
                                </div>
                            </li>
                            </ul>
                    </div>
                </div>                
            </div>
        </div>  
     </div>		
<jsp:include page="../../footer.jsp"></jsp:include>