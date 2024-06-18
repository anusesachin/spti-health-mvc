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

.error {
	color: red;
	font-size: 11px;
	margin-bottom: 10px;
	margin-top: 1px;
	padding: 1px;
}
.col-form-label.spti-label {
	font-size: 13px;
	color: #333;		
	margin-top:12px;
}
.col-md-12{
color:black ;

}

</style>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="height-90">
		<div class="main-content  ">
			<div class="modal-body">
				<h5 class="modal-title" id="exampleModalLabel" style= "margin-bottom: 6px;" >Patient SanmatiPatr</h5>
				<hr>
				<form class="login-form" id="login-form" action="/samtiPatra/reportGenerate/${patient.id}" method="post">
				<input type="hidden" name="patientId" value="${patient.id}">
					<div class="row">
						<div class="col-md-6">
							<label class="col-form-label spti-label">Patient Name</label> <span
								class="mandatory-sign">*</span> <input type="text" style= "margin-bottom: -1px;"
								name="firstName" class="col-md-12 spti-inpt" value= "${patient.firstName}">
						</div>

						<div class="col-md-6">
							<label class="col-form-label spti-label">Last Name</label> <input
								type="text" name="lastName" class="col-md-12 spti-inpt" style= "margin-bottom: -1px;"
								value="${patient.lastName}">
						</div>

						
						<div class="col-md-6">
									<label class="col-form-label spti-label">Responsible Person</label> <input
									type="text" name="Responsible_Person" class="col-md-12 spti-inpt"  style= "margin-bottom: -1px;" placeholder="ex.ram anuse">
						</div>
						<div class="col-md-6">
							<label class="col-form-label spti-label">Age</label> <input
							type="number" name="age" class="col-md-12 spti-inpt" style= "margin-bottom: -1px;" value="${patient.age}">
						</div>
								
								<div class="col-md-12">
									<label class="col-form-label spti-label">Address</label>
									<textarea class="col-md-12 spti-textarea-height" name="address" style= "margin-bottom: -1px;"
										>${patient.address}</textarea>
								</div>

					</div>
					<div class="col-md-12" style="position: relative;">
						<button type="submit"
							class="btn btn-warning btn-sm add-btn float-end Spti-btn">Add</button>
						<button type="button"
							class="btn btn-secondary btn-sm cancel-btn float-end mx-1" 
							onclick="window.history.back()">Cancel</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>

	
	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});
	</script>
</body>

</html>