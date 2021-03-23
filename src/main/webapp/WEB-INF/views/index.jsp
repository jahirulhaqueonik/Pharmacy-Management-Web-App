<html>
<head>
 <%@include file="./base.jsp" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
</head>
<body>
	<div class="container mt-3">
		<div class="row">
	   		<div class="col-md-12">
	   			<h1 class="text-center mb-3">Welcome To Pharmacy Medicine Management App</h1>
	   			
	   			<table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">ID</th>
				      <th scope="col">Brand Name</th>
				      <th scope="col">Generic Name</th>
				      <th scope="col">Weight</th>
				      <th scope="col">Medicine Type</th>
				      <th scope="col">Manufacturer Name</th>
				      <th scope="col">Unit Price</th>
				      <th scope="col">Expire Date</th>
				      <th scope="col">Action</th>
				    </tr>
				    </thead>
				  </tbody>
				  <c:forEach items="${medicine  }" var="p">
				  	<tr>
				  		<th scope="row">${p.id}</th>
				  		<td>${p.brandName }</td>
				  		<td>${p.genericName }</td>
				  		<td>${p.weight }</td>
				  		<td>${p.medicineType }</td>
				  		<td>${p.manufacture }</td>
				  		<td class="font-weight-bold">&#2547; ${p.unitPrice }</td>
				  		<td>${p.expDate }</td>
				  		<td>
				  			<a href="delete/${p.id }"><i class="far fa-trash-alt text-danger" style="font-size: 25px;"></i></a>
				  			<a href="update/${p.id }"><i class="fas fa-pen-nib text-danger" style="font-size: 25px;"></i></a>
				  		</td>
				  	</tr>
				  	</c:forEach>
				</table>
				
				<div class="container text-center">
						<a href="add-medicine" class="btn btn-outline-success">Add Medicine</a>
				</div>
	   			
	   		</div>
		</div>
	</div>
</body>
</html>
