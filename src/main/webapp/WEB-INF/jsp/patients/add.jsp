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
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
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
	font-size: 12px;
}

.error input {
	border: 1px solid red;
}

.error select {
	border: 1px solid red;
}

.error textarea {
	border: 1px solid red;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="height-90">
		<div class="main-content  ">
			<div class="modal-body">
				<h5 class="modal-title" id="exampleModalLabel">Add Patient</h5>
				<form class="login-form" id="login-form" action="/patients"
					method="post">
					<div class="row">
						<div class="col-md-6">
							<label class="col-form-label spti-label">First Name</label> <span
								class="mandatory-sign">*</span> <input type="text"
								name="firstName" class="col-md-12 spti-inpt" placeholder="riya">
						</div>

						<div class="col-md-6">
							<label class="col-form-label spti-label">Last Name</label> <span
								class="mandatory-sign">*</span> <input type="text"
								name="lastName" class="col-md-12 spti-inpt" placeholder="cena">
						</div>

						<div class="col-md-12">
							<label class="col-form-label spti-label">PhoneNumber</label> <span
								class="mandatory-sign">*</span> <input type="text"
								name="phoneNumber" class="col-md-12 spti-inpt"
								placeholder="e.g 9090981981">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label">Age</label> <span
								class="mandatory-sign">*</span> <input type="text" name="age"
								class="col-md-12 spti-inpt" placeholder="e.g 12">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label">Gender</label> <span
								class="mandatory-sign">*</span> <select
								name="gender" class="col-md-12 spti-inpt">
								<option value="">Select gender</option>
								<option value="MALE">Male</option>
								<option value="FEMALE">Female</option>
								<option value="OTHER">Other</option>
							</select>
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label">Email</label> <input
								type="text" name="email" class="col-md-12 spti-inpt"
								placeholder="riya@gmail.com">
						</div>

						<div class="col-md-12">
							<label class="col-form-label spti-label">Address</label>
							<textarea class="col-md-12 spti-textarea-height" name="address"
								placeholder="eg.Hadpsar, pune"></textarea>
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
        $(window).on('load', function () {
            $('#addUserModel').modal('show');
        });
    </script>
</body>

</html>
