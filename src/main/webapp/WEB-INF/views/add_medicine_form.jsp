<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<%@include file="./base.jsp" %>
</head>
<body>
	
	<div class="container mt-3">
	
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1>Fill The Medicine Details</h1>
				
				<form action="handle-medicine" method="post">
				
					<div class="form-group">
						<label for="brandName">Brand Name</label>
						<input type="text" class="form-control" id="brandName" aria-describedby="emailHelp"
						name="brandName" placeholder="Enter Medicine Name">
					</div>
				
				
				
					<div class="form-group">
						<label for="genericName">Generic Name</label>
						<input type="text" class="form-control" id="genericName" aria-describedby="emailHelp"
						name="genericName" placeholder="Enter Generic Name">
					</div>

					<div class="form-group">
						<label for="weight">Weight</label>
						<input type="text" class="form-control" id="weight" aria-describedby="emailHelp"
						name="weight" placeholder="Enter Weight">
					</div>
					
					<div class="form-group">
						<label for="medicineType">Medicine Type</label>
						<input type="text" class="form-control" id="medicineType" aria-describedby="emailHelp"
						name="medicineType" placeholder="Enter Medicine Type">
					</div>
					
					<div class="form-group">
						<label for="manufacture">Manufacturer Name</label>
						<input type="text" class="form-control" id="manufacture" aria-describedby="emailHelp"
						name="manufacture" placeholder="Enter Manufacturer Name">
					</div>
					
					<div class="form-group">
						<label for="unitPrice">Unit Price</label>
						<input type="text" class="form-control" id="unitPrice" aria-describedby="emailHelp"
						name="unitPrice" placeholder="Enter Unit Price">
					</div>
					
					<div class="form-group">
						<label for="expDate">Expire Date</label>
						<input type="text" class="form-control" id="expDate" aria-describedby="emailHelp"
						name="expDate" placeholder="Enter Expire Date">
					</div>
					
					<div class="container text-center">
							<a href="${pageContext.request.contextPath }/"
								class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-primary">Add</button>
							
					</div>
				
				</form>
			</div>
		</div>
		
	</div>
	
</body>
</html>