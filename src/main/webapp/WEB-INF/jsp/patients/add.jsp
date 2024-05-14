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
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>


<style>
.error-label {
	margin-top: -10px;
}

.col-form-label.spti-label {
	font-size: 17px;
	color: #333;
}

#exampleModalLabel {
	margin-top: 0px;
	font-size: 20px;
}

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

.adjust{
margin-bottom: -3px;

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
							<label class="col-form-label spti-label" style= "margin-top: 9px;">First Name</label> <span
								class="mandatory-sign">*</span> <input type="text"
								name="firstName" class="col-md-12 spti-inpt" style= "margin-bottom: -3px;"
								 id="fname"
								placeholder="riya">
						</div>

						<div class="col-md-6">
							<label class="col-form-label spti-label" style= "margin-top: 9px;">Last Name</label> <input
								type="text" name="lastName" class="col-md-12 spti-inpt" style= "margin-bottom: -3px;
								placeholder="cena">
						</div>

						<div class="col-md-12">
							<label class="col-form-label spti-label" style= "margin-top: 10px;">PhoneNumber</label> <input
								type="text" name="phoneNumber" class="col-md-12 spti-inpt"  style= "margin-bottom: -3px;
								placeholder="e.g 9090981981">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label" style= "margin-top: 10px;">Age</label> <input
								type="text" name="age" class="col-md-12 spti-inpt" style= "margin-bottom: -3px;
								placeholder="e.g 12">
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label" style= "margin-top: 10px;">Gender</label> <select
								name="gender" class="col-md-12 spti-inpt" style= "margin-bottom: -3px;">
								<option value="">Select gender</option>
								<option value="MALE">Male</option>
								<option value="FEMALE">Female</option>
								<option value="OTHER">Other</option>
							</select>
						</div>

						<div class="col-md-4">
							<label class="col-form-label spti-label" style= "margin-top: 10px;">Email</label> <input
								type="text" name="email" class="col-md-12 spti-inpt" style= "margin-bottom: -3px;"
								placeholder="riya@gmail.com">
						</div>

						<div class="col-md-12">
							<label class="col-form-label spti-label" style= "margin-top: 10px;">Address</label>
							<textarea class="col-md-12 spti-textarea-height" name="address" style= "margin-bottom: -3px;"
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
		$(document).ready(function() {
			$("#login-form").validate({

				rules : {
					firstName : {
						required : true,
						minlength : 2
					},
					lastName : {
						required : true,
						minlength : 2
					},
					phoneNumber : {
						required : true,
						minlength : 10,
						maxlength : 12,
						digits : true
					},
					age : {
						required : true,
						min : 0.1,
						number : true
					},
					gender : {
						required : true
					},
					address : {
						required : true,
						minlength : 2
					},
					email : {
						required : true,
						email : true
					}

				},
				messages : {
					firstName : {
						required : "Please enter correct first name",
						minlength : "minimum two character"
					},
					lastName : {
						required : "please enter correct last name",
						minlength : "minimum two character"
					},
					phoneNumber : {
						required : "please enter correct phonenumber",
						digits : "please enter only digit",
						minlength : "minimum 10 digit",
						maxlength : "maximum 12 digit"
					},
					age : {
						required : " please enter correct age",
						min : " please enter correct age",
						number : " please enter correct age",
					},
					gender : {
						required : " please enter gender",
					},
					address : {
						required : " please enter address"
					},
					email : {
						required : " please enter email",
						email : "please enter correct email please"
					}

				},

			});
		});
	</script>
	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});
	</script>


</body>

</html>