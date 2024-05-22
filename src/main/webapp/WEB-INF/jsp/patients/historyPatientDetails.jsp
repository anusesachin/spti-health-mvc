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
.col-md-5 {
	margin-left: 140px;
}
.spti-label {
    font-size: 200px; /* Adjust the font size as needed */
    font-weight: bold; /* Optionally, you can make the label bold */
  
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
							<h5 class="modal-title" id="exampleModalLabel">History</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true" onclick="window.history.back()">x</span>
							</button>
						</div>
						<div class="modal-body">
							<form class="login-form"
								action="/opds/historyPatientDetails-form" method="post">
								 <c:forEach items="${PatientOPDHistory}" var="patientOPDHistory">
									<div class="row">

                                         <div class="col-md-4">
											<label class="col-form-label fs-6"> Date
											</label><br> <span class="col-md-12 spti-inpt border-0 ">
												${ patientOPDHistory.treatmentDate }</span>
										</div>

										<div class="col-md-4">
											<label class="col-form-label fs-6">Seen by
												doctor</label> <input type="text" name="seenByDoctor"
												class="col-md-12 spti-inpt border-0 "
												value="${patientOPDHistory.seenByDoctor}">
										</div>
										<div class="col-md-4">
											<label class="col-form-label fs-6">Diagnosis</label> <input
												type="text" name="diagnosis" class="col-md-12 spti-inpt border-0 "
												placeholder="e.g Maleria"
												value="${patientOPDHistory.diagnosis}">
										</div>
										<div class="mb-3">
											<label class="form-label col-form-label fs-6">Treatment</label>
											<textarea class="form-control"  id="w3review" rows="3"
												name="treatment">${patientOPDHistory.treatment}</textarea>
										</div>


									</div>
								</c:forEach>
								<div class="col-md-12">

									<button type="button"
										class="btn btn-secondary btn-sm cancel-btn float-end mx-1"
										onclick="window.history.back()">Close</button>
								</div> 
							</form>
						</div>
					</div>
				</div>
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