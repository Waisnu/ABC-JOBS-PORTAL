<jsp:include page="../../header.jsp">
    <jsp:param value="Verified" name="HTMLtitle" />
</jsp:include>
<div class="container-fluid d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="card shadow-lg w-50 d-flex justify-content-center align-items-center rounded-3 border border-2 border border-dark bg-white">
        <div class="card-body text-center">
            <h2 class="card-title text-success mb-5" style="font-family: 'Tangerine', cursive; font-size: 60px; line-height: 1.2;">Welcome to our community</h2>
           <img src="images/verified-2.svg" class="img-fluid" style="max-width: 100%; height: auto;">
            <p class="card-text fs-5 mt-5" style="font-family: 'Roboto Slab', serif;">Your account has been verified. Please log in to explore our Community Portal.</p>
            <a href="login" class="btn btn-primary mt-4" style="min-width: 150px; font-family: 'Roboto Slab', serif;">Log In</a>
        </div>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
