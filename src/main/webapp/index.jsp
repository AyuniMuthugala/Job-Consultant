<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Main Page</title>
	<jsp:include page="shared/header.html"></jsp:include>
</head>
<body class="sidebar-dark">

	 <%
	   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("employee_id") == null  ){
			response.sendRedirect("login.jsp");
			
		}
	%>
	<div class="main-wrapper">

		<jsp:include page="shared/sidebar.jsp">
			<jsp:param name="dashboard" value="active"/>
		</jsp:include>
		<div class="page-wrapper">
					
		<jsp:include page="shared/searchbar.jsp"></jsp:include>

		<div class="page-content">
	
	        <div class="d-flex justify-content-between align-items-center flex-wrap grid-margin">
		          <div>
		            <h4 class="mb-3 mb-md-0">Dashboard</h4>
		          </div>
            </div>
            
            
   	</div>

			<jsp:include page="shared/footer.html"></jsp:include>
		
		</div>
	</div>
 	 <script type="text/javascript">



    </script>

</body>
</html>