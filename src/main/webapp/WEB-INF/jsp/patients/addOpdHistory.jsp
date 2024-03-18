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

<style type="text/css">
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
			<!-- Modal -->
			<div class="modal fade" id="addUserModel" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add to OPD</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true" onclick="window.history.back()">x</span>
							</button>
						</div>
						<div class="modal-body">
							<form class="login-form" id="login-form" action="/opds/history"
								method="post">
								<div class="row">
									<div class="col-md-12">
										<label class="col-form-label spti-label">Name</label> <span
											class="mandatory-sign">*</span> <input type="hidden"
											name="patientId" class="col-md-12 spti-inpt"
											value="${patient.id }"> <input type="text"
											name="fullname" class="col-md-12 spti-inpt"
											value="${patient.firstName} ${patient.lastName}">
									</div>

									<div class="col-md-6">
										<label class="col-form-label spti-label">Seen by
											doctor</label> <span class="mandatory-sign">*</span> <input
											type="text" name="seenByDoctor" class="col-md-12 spti-inpt"
											placeholder="e.g Akash Anuse">
									</div>
									<div class="col-md-6">
										<label class="col-form-label spti-label">Diagnosis</label> <span
											class="mandatory-sign">*</span> <input type="text"
											name="diagnosis" class="col-md-12 spti-inpt"
											placeholder="e.g Maleria">
									</div>
									<div class="col-md-6">
										<label class="col-form-label spti-label">Treatment</label> <span
											class="mandatory-sign">*</span> <input type="text"
											name="treatment" class="col-md-12 spti-inpt"
											placeholder="e.g IV">
									</div>
									<div class="col-md-6">
										<label class="col-form-label spti-label">Bill</label> <span
											class="mandatory-sign">*</span> <input type="text"
											name="bill" class="col-md-12 spti-inpt" placeholder="e.g 500">
									</div>

									<div class="col-md-4">
										<label class="col-form-label spti-label">Pending
											Amount</label> <span class="mandatory-sign">*</span> <input
											type="text" name="pendingAmount" class="col-md-12 spti-inpt"
											placeholder="e.g 100">
									</div>

									<div class="col-md-4">
										<label class="col-form-label spti-label">Status</label> <span
											class="mandatory-sign">*</span> <select name="billStatus"
											class="col-md-12 spti-inpt">
											<option disabled="disabled" selected>Select status</option>
											<option value="Paid">Paid</option>
											<option value="Pending">Pending</option>
										</select>
									</div>

									<div class="col-md-4">
										<label class="col-form-label spti-label">Payment Type</label>
										<span class="mandatory-sign">*</span> <select
											name="paymentType" class="col-md-12 spti-inpt">
											<option disabled="disabled" selected>Select Payment
												Type</option>
											<option value="Online">Online</option>
											<option value="Cash">Cash</option>
										</select>
									</div>

								</div>
								<div class="col-md-12">

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
			</div>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>

	<!-- <script type="text/javascript">
    $(document).ready(function () {
        $("#opdForm").validate({
            rules: {
                seenByDoctor: {
                    required: true
                }
                // Add rules for other fields here
            },
            messages: {
                seenByDoctor: {
                    required: "Please enter the doctor's name"
                }
                // Add messages for other fields here
            },
            submitHandler: function(form) {
    			form.submit();
    		}
        });
    });
</script> -->
	<script type="text/javascript">
		$(window).on('load', function() {
			$('#addUserModel').modal('show');
		});
	</script>
</body>

</html>