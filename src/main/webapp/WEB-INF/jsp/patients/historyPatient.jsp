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
								action="/opds/historyPatient-from/patients" method="post">
								<%-- <c:forEach items="${PatientOPDHistory}" var="patientOPDHistory">
									<div class="row">


										<div class="col-md-6">
											<label class="col-form-label spti-label">Seen by
												doctor</label> <input type="text" name="seenByDoctor"
												class="col-md-12 spti-inpt"
												value="${patientOPDHistory.seenByDoctor}">
										</div>
										<div class="col-md-6">
											<label class="col-form-label spti-label">Diagnosis</label> <input
												type="text" name="diagnosis" class="col-md-12 spti-inpt"
												placeholder="e.g Maleria"
												value="${patientOPDHistory.diagnosis}">
										</div>
										<div class="mb-3">
											<label for="w3review"
												class="form-label col-form-label spti-label">Treatment</label>
											<textarea class="form-control" id="w3review" rows="3"
												name="treatment" value="${patientOPDHistory.treatment}"></textarea>

										</div>


										<div class="mb-3">
										<label for="w3review"
											class="form-label col-form-label spti-label">Note</label>
										<textarea class="form-control" id="w3review" rows="3"
											name="Note" value="${patientOPDHistory.note}"></textarea>

									</div>


									</div>
								</c:forEach>
								<div class="col-md-12">

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
	</div> --%>


								<div class="row my-2">
									<div class="col-md-12">
										<div class="card">
											<div class="card-body PatientsPrescriptionWrapper">
												<div class="tab-content" id="nav-tabContent">
													<div class="tab-pane fade show active" id="nav-home"
														role="tabpanel" aria-labelledby="nav-home-tab">
														<table class="table table-striped">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Seen By</th>
																	<th>Diagnosis</th>
																</tr>
															</thead>

															<c:choose>
																<c:when test="${opdHistory == null}">

																	<tbody>
																		<c:forEach items="${PatientOPDHistory}" var="opd">
																			<tr>
																				<td><a
																					onclick="window.location.href='/opds/historyPatientDetails-form/${opd.id}'">
																						<span style="font-weight: 500" class="text-info">
																							${ opd.treatmentDate }</span>
																				</a></td>
																				<td>${opd.seenByDoctor }</td>
																				<td>${opd.diagnosis }</td>

																			</tr>
																		</c:forEach>

																	</tbody>
																</c:when>

																<c:otherwise>
																	<tbody>
																		<c:forEach items="${opd.dateOfTreatment}" var="opd">
																			<tr>
																				<td><a
																					onclick="window.location.href='/patients/details-form/${user.id}'"><span
																						style="font-weight: 500" class="text-info">
																							${ DateTimeFormatter.ofPattern("yyyy-MM-dd").format(opd.dateOfTreatment) }</span></a>
																				</td>


																				<td>${opd.seenByDoctor }</td>
																				<td>${opd.diagnosis }</td>

																			</tr>
																		</c:forEach>

																	</tbody>
																</c:otherwise>
															</c:choose>


															<script type="text/javascript">
																$(window)
																		.on(
																				'load',
																				function() {
																					$(
																							'#addUserModel')
																							.modal(
																									'show');
																				});
															</script>
</body>

</html>