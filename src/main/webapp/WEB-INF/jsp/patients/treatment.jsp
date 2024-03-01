<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Treatment</title>
<style>
.tableHead{
	background-color: #ddd;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="height-90">
		<div class="main-content  ">
			<div class="modal-body">
				<h5 class="modal-title" id="exampleModalLabel">Patient New
					Treatment</h5>
					<br>
					<table class="table table-new m-0" id="treatmentTable"
			style="max-width: 100% !important;">
			<thead class="tableHead">
				<tr style="font-size: 13px; color: #72747b;font-weight: 500;">
					<th style="width: 15%;">Medicine</th>
					<th style="width: 15%;">Medicine Time</th>
					<th style="width: 15%;">Medicine Date</th>
					<th style="width: 15%;">Bill($)</th>
					<th style="width: 15%;">Bill Paid</th>
					<th style="width: 20%;">Payment Mode</th>
				</tr>
			</thead>
			<tbody>
				<tr style="border-style:hidden">
					<td><input type="text" name="medicineName"
						class="col-md-12 spti-inpt" placeholder="ex. Dollo 500mg">
					</td>
					<td><input type="text" name="medicineTime"
						class="col-md-12 spti-inpt" placeholder="ex. morning"></td>
					<td><input type="date" name="treatmentDate"
						class="col-md-12 spti-inpt" placeholder="select"></td>
					<td><input type="text" name="bill" class="col-md-12 spti-inpt"
						placeholder="ex: 5$"></td>
					<td><select name="billPaid" class="col-md-12 spti-inpt">
							<option value="">Select</option>
							<option value="Yes">Yes</option>
							<option value="No">No</option>
					</select></td>
					<td><select name="paymentMode" class="col-md-12 spti-inpt">
							<option value="">Select</option>
							<option value="Online">Online</option>
							<option value="Cash">Cash</option>
					</select></td>
				</tr>
			</tbody>
		</table>
		
		<br>
		<button class="btn btn-warning btn-sm   Spti-btn"
			onclick="addRow()">Add Row</button>
		<button class="btn btn-warning btn-sm  float-end Spti-btn"
			onclick="updateRows()">Save</button>
<%-- 				<form class="login-form" action="/treatment/add/${patient.id}" --%>
<!-- 					method="post"> -->
<!-- 					<input type="hidden" name="admittanceId" value="234"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-2"> -->
<!-- 							<label class="col-form-label spti-label">Medicine Name</label> <input -->
<!-- 								type="text" name="medicineName" class="col-md-12 spti-inpt" -->
<!-- 								placeholder="ex. Dollo 500mg"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-2"> -->
<!-- 							<label class="col-form-label spti-label">time</label> <input -->
<!-- 								type="text" name="medicineTime" class="col-md-12 spti-inpt" -->
<!-- 								placeholder="ex. morning"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-2"> -->
<!-- 							<label class="col-form-label spti-label">Date</label> <input -->
<!-- 								type="date" name="treatmentDate" class="col-md-12 spti-inpt" -->
<!-- 								placeholder="select"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-1"> -->
<!-- 							<label class="col-form-label spti-label">Bill($)</label> <input -->
<!-- 								type="text" name="bill" class="col-md-12 spti-inpt" -->
<!-- 								placeholder="ex: 5$"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-1"> -->
<!-- 							<label class="col-form-label spti-label">Bill Paid</label>  -->
<!-- 							<select name="billPaid" class="col-md-12 spti-inpt"> -->
<!-- 								<option value="">Select</option> -->
<!-- 								<option value="Yes">Yes</option> -->
<!-- 								<option value="No">No</option> -->
<!-- 							</select> -->
<!-- 						</div> -->

<!-- 						<div class="col-md-1"> -->
<!-- 							<label class="col-form-label spti-label">Payment Mode</label>  -->
<!-- 							<select	name="paymentMode" class="col-md-12 spti-inpt"> -->
<!-- 								<option value="">Select</option> -->
<!-- 								<option value="Online">Online</option> -->
<!-- 								<option value="Cash">Cash</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<%-- 						<input type="hidden" name="createdBy" value="${patient.id}"> --%>
<!-- 						<div class="col-md-1" style="position: relative;"> -->
<!-- 							<button type="submit" class="btn btn-warning btn-sm add-btn float-end Spti-btn">Save</button> -->
<!-- 						</div> -->

<!-- 					</div> -->

<!-- 				</form> -->
			</div>
		<div class="modal-body">
			<br>
			<br>
			<br>
			<c:if test="${not empty treatmentList}">
			<h5 class="modal-title" id="exampleModalLabel">Treatment History</h5>
			<hr>
			<table class="table table-new m-0" id="tableID"
				style="max-width: 100% !important;">
				<thead class="tableHead">
					<tr>
						<th style="width: 5%;">SNo</th>
						<th style="width: 15%;">Medicine</th>
						<th style="width: 15%;">Medicine Time</th>
						<th style="width: 15%;">Medicine Date</th>
						<th style="width: 15%;">Bill($)</th>
						<th style="width: 15%;">Bill Paid</th>
						<th style="width: 20%;">Payment Mode</th>
					</tr>
				</thead>
				<tbody>
						<% int i = 1; %> 
							<c:forEach items="${treatmentList}" var="treatment">
								<tr>
									<td style="width: 5%;"><%= i %> <% i++; %></td>
									<td style="width: 15%;">${treatment.medicineName}</td>
									<td style="width: 15%;">${treatment.medicineTime}</td>
									<td style="width: 15%;">${treatment.treatmentDate}</td>
									<td style="width: 15%;">${treatment.bill}</td>
									<td style="width: 15%;">${treatment.billPaid}</td>
									<td style="width: 20%;">${treatment.paymentMode}</td>

								</tr>
							</c:forEach>
						
				</tbody>
			</table>
			</c:if>
		</div>
		</div>
		<br>
	</div>
	<c:set var="patientId" value="${patient.id}" />
	<c:set var="userId" value="${sessionScope.username}" />
	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});

		var count = 1;
		$("#btn").click(function() {

			$("#container").append(addNewRow(count));
			count++;

		});


		function addRow() {
			var table = document.getElementById("treatmentTable");
			var row = table.insertRow(table.rows.length);

			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			var cell6 = row.insertCell(5);
			
			cell1.innerHTML = "<input type='text' name='medicineName' class='col-md-12 spti-inpt' placeholder='ex. Dollo 500mg'>";
			cell2.innerHTML = "<input type='text' name='medicineTime' class='col-md-12 spti-inpt' placeholder='ex. morning'>";
			cell3.innerHTML = "<input type='date' name='treatmentDate' class='col-md-12 spti-inpt' placeholder='select'>";
			cell4.innerHTML = "<input type='text' name='bill' class='col-md-12 spti-inpt' placeholder='ex: 5$'>";
			cell5.innerHTML = "<select name='billPaid' class='col-md-12 spti-inpt'> <option value=''>Select</option> <option value='Yes'>Yes</option> <option value='No'>No</option> </select>";
			cell6.innerHTML = "<select name='paymentMode' class='col-md-12 spti-inpt'> <option value=''>Select</option> <option value='Online'>Online</option> <option value='Cash'>Cash</option> </select>";		
		}

		function removeRow() {
			var table = document.getElementById("treatmentTable");
			if (table.rows.length > 1) {
				table.deleteRow(table.rows.length - 1);
			}
		}

		function updateRows() {
			var table = document.getElementById("treatmentTable");
			var payload = [];
			var userIdInJs = "${userId}";
			for (var i = 1; i < table.rows.length; i++) {
				var row = table.rows[i];
				var medicineNameValue = row.cells[0].getElementsByTagName("input")[0].value;
				var medicineTimeValue = row.cells[1].getElementsByTagName("input")[0].value;
				var treatmentDateValue = row.cells[2].getElementsByTagName("input")[0].value;
				var billValue = row.cells[3].getElementsByTagName("input")[0].value;
				var billPaidValue = row.cells[4].getElementsByTagName("select")[0].value;
				var paymentModeValue = row.cells[5].getElementsByTagName("select")[0].value;
	            var rowData = {
	                medicineName: medicineNameValue,
	                medicineTime: medicineTimeValue,
	                treatmentDate: treatmentDateValue,
	                bill: billValue,
	                billPaid: billPaidValue,
	                paymentMode: paymentModeValue,
	                createdBy:userIdInJs
	            };
	            payload.push(rowData);
	          
		}
			  var xhr = new XMLHttpRequest();
	            xhr.open("POST", "${pageContext.request.contextPath}/treatment/saveTreatmentData/"+${patientId}, true);
	            xhr.setRequestHeader("Content-Type", "application/json");

	            xhr.onreadystatechange = function () {
	                if (xhr.readyState === 4 && xhr.status === 200) {
	                	setTimeout(function() {
	                        location.reload();
	                    }, 1000);
	                	alert("Success! Treatment details saved successfully.");
	                }
	            };
	            xhr.send(JSON.stringify(payload));
		}

	</script>
</body>
</html>