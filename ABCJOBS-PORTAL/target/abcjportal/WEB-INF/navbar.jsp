 <nav class="navbar navbar-expand-lg navbar-dark bg-ccae62 shadow-sm">
    <div class="container collapse" id="navbarToggleExternalContent">
        <a class="navbar-brand fs-2 fw-bold text-white me-5" href="home" style="font-family: 'GFS Didot', serif;">
            <img src="images/logo-1.png" alt="ABCJobs Logo" height="40px" width="40px">
            ABCJobs
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse flex-grow-1 text-right" id="navbarSupportedContent" style="font-family: 'Roboto Slab', serif;">
          
             <!--  <form action="search" method="post" class="d-flex " role="search">
		      <input class="form-control me-2 ms-5"  style="justify-content:center;" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-light" type="submit">Search</button>
		    </form>-->
	
      
            <ul class="navbar-nav ms-auto flex-nowrap">
              <li class="nav-item me-4">
                <a class="nav-link  fs-6 text-white fw-normal <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark" %>" 
                href="<%= request.getContextPath() %>/home">Home</a>
              </li>
               <li class="nav-item me-4">
                <a class="nav-link fs-6 text-white fw-normal" href="<%= request.getContextPath() %>/search">Search</a>
              </li>
              
            <!-- <li class="nav-item me-4">
                <a class="nav-link  fs-6 text-white fw-normal" href="#">About</a>
              </li>
              <li class="nav-item me-4">
                <a class="nav-link  fs-6 text-white fw-normal" href="#">Contact </a>
              </li>  -->          
                
           <% if((Boolean) session.getAttribute("isLogin") != null) { %>
                <li class="nav-item me-4">
                  <a class="nav-link fs-6 fw-normal <%= request.getServletPath().equals("/WEB-INF/views/dashboard.jsp")
                    ? "text-white" : "text-white" %>" href="profile">Dashboard</a>
                </li>
                <% } %>
                
                
            </ul>
             <% if((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) { %>
          <a class="nav-link fw-normal fs-6 me-3 <%= request.getServletPath().equals("/WEB-INF/views/administrator/index.jsp") ? "text-white" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-white" %>" href="<%= request.getContextPath() %>/admin">Admin</a>
        
      <% } %>
         <% if((Boolean) session.getAttribute("isLogin") != null) { %>
              <a href="logout" class="btn btn-outline-danger fs-6 ">Logout</a>
              <% } else { %>
                <a href="<%= request.getContextPath() %>/login" class="text-white fs-6 fw-normal" style="text-decoration:none;">Login</a>                
                <a href="<%= request.getContextPath() %>/registration" class="nav-link ms-4 fs-6 fw-normal text-white" >Join now</a>              
                <% } %>  
          </div>
        </div>
      </nav>