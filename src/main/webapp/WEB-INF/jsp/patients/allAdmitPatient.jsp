<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>SPTI</title>
<link rel="icon" type="image/x-icon" href="Verity.png">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js">
	
</script>

<script defer type="text/javascript"
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="height-90">
		<div class="main-content  ">
			<h5 class="modal-title" id="exampleModalLabel "
				style="margin-left: 375px;">All Admit Patients</h5>
			<hr>
			<table class="table table-new m-0" id="tableID"
				style="max-width: 100% !important;">
				<thead>
					<tr>
						<th id="nme" style="width: 25%; padding-left: 34px;background-color: #36dad0;">Name</th>
						<th style="width: 15%; padding-left: 15px;background-color: #36dad0;">Phone Number</th>
						<th style="width: 20%; padding-left: 55px;background-color: #36dad0;">Email</th>

						<th style="width: 15%;background-color: #36dad0;">Admition Date</th>
						<th style="width: 10%;background-color: #36dad0; ">Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list.content}" var="user">
						<tr>

							<td style="width: 25%;"><div
									class=" d-flex justify-content-start align-items-center">
									<div class=" ">
										<span class="avatar-title">${fn:toUpperCase(fn:substring(user.patient.firstName, 0, 1))}</span>
									</div>
									<div class="userName">
										<h5 class="m-0" style="cursor: pointer;">
											<a
												onclick="window.location.href='/admits/AdmitProfile/${user.patient.id}'">${user.patient.firstName}
												${user.patient.lastName}</a>
										</h5>

									</div>
								</div></td>
							<td style="width: 15%;">${user.patient.phoneNumber}</td>
							<td style="width: 20%;">${user.patient.email}</td>
							<td style="width: 20%;">${user.admissionDate}</td>
							<td style="width: 20%;">${user.admitDischargeStatus}</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script> 		
		$(document).ready( function() {
			loadTable(${list.number}, ${list.numberOfElements});
		}); 
	</script>
</body>
</html>