<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle" />
</jsp:include>
<div class="container d-flex justify-content-center align-items-center min-vh-100"  style="font-family: 'Roboto Slab'; serif, color:"#2bcbba";>
    <form action="" method="get" class="mb-4 ">
    	<h1 class=" text-primary text-center" style="font-family: 'Robot Slab', serif; font-size:90px; color: #2bcbba;">Find and Connect !</h1>    	
    	<input type="text" class="form-control" name="q" placeholder="What can I help you with?" style="width:95%" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
   	    <div id="searchHelp" class="form-text">Press enter to search</div>
    
    </form>

    <div class="row">
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class=" d-flex align-items-center border ms-4 mb-3 rounded-4 p-5 shadow-sm border border-dark border border-2 bg-white">
	           <div>
	           	<h2>${s.getFirstName()} ${s.getLastName()}</h2>
	           	<p>${s.getTitle()}</p>
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-success ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>