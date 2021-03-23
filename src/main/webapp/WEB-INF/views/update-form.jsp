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
			<div class="col-md-6 offset-md-3 ">
				<h1 class="text-center mb-4 ">Change Medicine Details</h1>
				
				<form action="${pageContext.request.contextPath }/handle-medicine" method="post">
				
				<label for="brandName" class="font-weight-bold">ID</label>
				<input type="text" value="${medicine.id }" name="id" />
				
					<div class="form-group font-weight-bold">
						<label for="brandName">Brand Name</label>
						<input type="text" class="form-control" id="brandName" aria-describedby="emailHelp"
						name="brandName" placeholder="Enter Medicine Name"
						value="${medicine.brandName }">
					</div>
				
				
				
					<div class="form-group font-weight-bold">
						<label for="genericName">Generic Name</label>
						<input type="text" class="form-control" id="genericName" aria-describedby="emailHelp"
						name="genericName" placeholder="Enter Generic Name"
						value="${medicine.genericName }">
					</div>

					<div class="form-group font-weight-bold">
						<label for="weight">Weight</label>
						<input type="text" class="form-control" id="weight" aria-describedby="emailHelp"
						name="weight" placeholder="Enter Weight"
						value="${medicine.weight }">
					</div>
					
					<div class="form-group font-weight-bold">
						<label for="medicineType">Medicine Type</label>
						<input type="text" class="form-control" id="medicineType" aria-describedby="emailHelp"
						name="medicineType" placeholder="Enter Medicine Type"
						value="${medicine.medicineType }">
					</div>
					
					<div class="form-group font-weight-bold">
						<label for="manufacture">Manufacturer Name</label>
						<input type="text" class="form-control" id="manufacture" aria-describedby="emailHelp"
						name="manufacture" placeholder="Enter Manufacturer Name"
						value="${medicine.manufacture }">
					</div>
					
					<div class="form-group font-weight-bold">
						<label for="unitPrice">Unit Price</label>
						<input type="text" class="form-control" id="unitPrice" aria-describedby="emailHelp"
						name="unitPrice" placeholder="Enter Unit Price"
						value="${medicine.unitPrice }">
					</div>
					
					<div class="form-group font-weight-bold">
						<label for="expDate">Expire Date</label>
						<input type="text" class="form-control" id="expDate" aria-describedby="emailHelp"
						name="expDate" placeholder="Enter Expire Date"
						value="${medicine.expDate }">
					</div>
					
					<div class="container text-center">
							<a href="${pageContext.request.contextPath }/"
								class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-warning">Update</button>
							
					</div>
				
				</form>
			</div>
		</div>
		
	</div>
	
</body>
</html>