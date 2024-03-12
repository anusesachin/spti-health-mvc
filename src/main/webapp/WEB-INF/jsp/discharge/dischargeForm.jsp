<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>SPTI</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<!-- Import jquery cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous">
	
</script>
<style>
.popup {
	display: none;
	width: 350px;
	position: absolute;
	top: -125px;
	left: 72%;
	transform: translate(-50%, -50%);
	border: 1px solid #ccc;
	padding: 20px;
	background: #fff;
	z-index: 9999;
	padding: 20px;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-shadow: 2px 2px 15px #00000073;
	left: 72%;
}

.popup input {
	width: 300px;
	margin: 5px 0px;
	border: 1px solid lightgray;
}

.popup input[type="datetime-local"] {
	font-size: 11px;
	padding: 4px;
	color: #757575;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="height-90">
		<div class="main-content  ">
			<div class="modal-body">
				<h5 class="modal-title" id="exampleModalLabel">Discharge Patient</h5>
				<form class="login-form" action="/discharge" method="post">
				<input type="hidden" name="patientId" value="${patient.id}">
				<input type="hidden" name="admitPatientId" value="${admitPatientResponseDto.id}">
				<div class="row">
					<div class="col-md-4">
						<label class="col-form-label spti-label">MLC NO.</label>
						<input type="text"name="MLC_No" class="col-md-12 spti-inpt" placeholder="eg. 01 ">
					</div>
					<div class="col-md-4">
						<label class="col-form-label spti-label">IPD NO.</label>
						<input type="text"name="IPD_No" class="col-md-12 spti-inpt" placeholder="eg. 01 ">
					</div>	
					<div class="col-md-4">
							<label class="col-form-label spti-label">Patient Name</label> <span
								class="mandatory-sign">*</span> <input type="text"
								name="firstName" class="col-md-12 spti-inpt" value= "${patient.firstName}">
						</div>			
				</div>
					<div class="row">
						<div class="col-md-4">
							<label class="col-form-label spti-label">Last Name</label> <input
								type="text" name="lastName" class="col-md-12 spti-inpt"
								value="${patient.lastName}">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label">Mobile Number</label>
							<input type="text" name="phoneNumber" class="col-md-12 spti-inpt" value="${ patient.phoneNumber}">
						</div>
						<div class="col-md-4">
							<label class="col-form-label spti-label">Gender</label> <select
								name="gender" class="col-md-12 spti-inpt">
								<c:choose>
									<c:when test="${patient.gender == 'MALE'}">
										<option value="Male" selected>Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</c:when>
									<c:when test="${patient.gender == 'FEMALE'}">
										<option value="Female" selected>Female</option>
										<option value="Male">Male</option>
										<option value="Other">Other</option>
									</c:when>
									<c:when test="${patient.gender == 'OTHER'}">
										<option value="Other" selected>Other</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</c:when>
									<c:otherwise>
										<option value="">Select gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</c:otherwise>
								</c:choose>
							</select>
						</div>
						</div>
						<div class="row">
						<div class="col-md-4">
							<label class="col-form-label spti-label">Age</label> <input
								type="number" name="age" class="col-md-12 spti-inpt"
								value="${patient.age}">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label">Status</label> <select
								name="admitDischargeStatus" class="col-md-12 spti-inpt">
								<c:choose>
									<c:when test="${admitPatientResponseDto.admitDischargeStatus == 'Admit'}">
										<option value="Admit" selected>Admit</option>
										<option value="Discharge">Discharge</option>
									</c:when>
									<c:when test="${admitPatientResponseDto.admitDischargeStatus == 'Discharge'}">
										<option value="Discharge" selected>Discharge</option>
										<option value="Admit">Admit</option>
									</c:when>
									<c:otherwise>
										<option value="">Select Status</option>
										<option value="Admit">Admit</option>
										<option value="Discharge">Discharge</option>
									</c:otherwise>
								</c:choose>
							</select>
						</div>

						
		                          <div class="col-md-4">
												<label class="col-form-label spti-label">Admission Date And Time</label>
		    									<input type="datetime-local" name="admissionDate" class="col-md-12 spti-inpt" value="${admitPatientResponseDto.admissionDate}">
		
								</div>
								</div>
								<div class="row">
								<div class="col-md-4">
										<label class="col-form-label spti-label">Discharge Date And Time</label>
				    					<input type="datetime-local" name="dischargeDate" class="col-md-12 spti-inpt">
								</div>
								
								  <div class="col-md-4">
												<label class="col-form-label spti-label">Consultatnt</label>
		    									<input type="text" name="consultatnt" class="col-md-12 spti-inpt">
		
								</div>
								<div class="col-md-4">
										<label class="col-form-label spti-label">Diagnosis</label>
				    					<input type="text" name="diagnosis" class="col-md-12 spti-inpt">
								</div>
								</div>
		
								<!-- <div class="col-md-4">
										<label class="col-form-label spti-label">Admission Time
									</label> <input type="time" name="admissionTime"
											class="col-md-12 spti-inpt">
									</div> -->
									<div class="row">
						<div class="col-md-4">
							<label class="col-form-label spti-label">Address</label>
							<textarea class="col-md-12 spti-textarea-height" name="address"
								>${patient.address}</textarea>
						</div>
						<div class="col-md-4">
												<label class="col-form-label spti-label">Amount Paid</label>
		    									<input type="text" name="amountPaid" value="${amountPaid}" class="col-md-12 spti-inpt">
		
								</div>
						<div class="col-md-4">
												<label class="col-form-label spti-label">Amount to be Paid</label>
		    									<input type="text" name="amounttobePaid" value="${amounttobePaid}" class="col-md-12 spti-inpt">
		
								</div></div>
								<div class="row">
						<div class="col-md-12">
							<label class="col-form-label spti-label">Treatment History</label>
							<%-- <textarea rows="10" cols="50" class="col-md-12 spti-textarea-height" name="clinical_History">
							<c:forEach var="treatment" items="${treatmentList}">
			${treatment.medicineName}, ${treatment.medicineTime},${treatment.treatmentDate},${treatment.bill}
        </c:forEach>
								</textarea> --%>
								<div class="col-md-12 spti-textarea-height" style="height: fit-content !important;" name="clinical_History">
								 <table style="width:100%;">
        <thead>
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
            <c:forEach var="treatment" items="${treatmentList}">
                <tr>
                   <td style="width: 5%;"><%= i %> <% i++; %></td>
									<td style="width: 15%;">${treatment.medicineName}</td>
									<td style="width: 15%;">${treatment.medicineTime}</td>
									<td style="width: 15%;">${treatment.treatmentDate}</td>
									<td style="width: 15%;">${treatment.bill}</td>
									<td style="width: 15%;">
									<span class="<c:choose>
                <c:when test="${treatment.billPaid eq 'Yes'}">
                    badge bg-success
                </c:when>
                <c:otherwise>
                    badge bg-danger
                </c:otherwise>
             </c:choose>"
      style="width:30%">${treatment.billPaid}</span></td>
									<td style="width: 20%;">${treatment.paymentMode}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table> </div>
						</div>
						</div>

					</div>
					<div class="col-md-12" style="position: relative;">
						<button type="submit"
							class="btn btn-warning btn-sm add-btn float-end Spti-btn">Discharge</button>
						<button type="button"
							class="btn btn-secondary btn-sm cancel-btn float-end mx-1"
							onclick="window.history.back()">Cancel</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});
	</script>
</body>

</html>