<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generate Patient Reports</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<style>
.error-message {
	color: red;
	font-style: italic;
}

.table th, .table td {
	font-size: 14px;
}

.spti-label {
	font-size: 12px;
}

.report-card {
	height: 250px;
}

.col-md-3 {
	width: 50%;
}
</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div class="container mt-4">
		<div class="row">
			<div class="col-12">
				<h5 class="mb-4">Generate Patient Reports</h5>
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-md-9"></div>
			<div class="col-12 col-md-3">
				<select id="reportType" class="form-select" id="patientTable"
					aria-label="Default select example">
					<option value="" disabled selected>Please Select An Option</option>
					<option value="Today Patient">Today Patient</option>
					<option value="Weekly Patient">Weekly Patient</option>
					<option value="Monthly Patient">Monthly Patient</option>
                    <option value="AllPatient">All Patient</option>
					<option value="Custom">Custom Filter</option>					
				</select>
			</div>
		</div>


		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-xl" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Choice Any
							Custom Filter:</h5>
						<!-- <button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button> -->
					</div>
					<div class="modal-body">
						<div class="row mt-4">
							<!-- Enter Admission Date Card -->
							<div class="col-md-3">
								<div class="card report-card">
									<div class="card-body">
										<form>
											<div class="form-group">
												<label class="col-form-label spti-label">Enter
													Admission Date:</label> <input type="date"
													class="col-md-12 spti-inpt" id="admissionDate"
													name="admissionDate">
											</div>
											<button type="button"
												class="btn btn-warning btn-sm add-btn float-end Spti-btn"
												onclick="generateReportByDate()">Generate Report by
												Day</button>
										</form>
									</div>
								</div>
							</div>
							<!-- Enter Start Date and End Date Card -->
							<div class="col-md-3 mt-6">
								<div class="card report-card">
									<div class="card-body">
										<form id="admitPatientForm">
											<div class="form-group">
												<label class="col-form-label spti-label">Enter Start
													Date:</label> <input type="date" class="col-md-12 spti-inpt"
													id="startDate" name="startDate">
											</div>
											<div class="form-group">
												<label class="col-form-label spti-label">Enter End
													Date:</label> <input type="date" class="col-md-12 spti-inpt"
													id="endDate" name="endDate">
											</div>
											<button type="button"
												class="btn btn-warning btn-sm add-btn float-end Spti-btn"
												onclick="generateReportByDateRange()">Generate
												Report by Date Range</button>
										</form>
									</div>
								</div>
							</div>
							<!-- Enter Year Card -->
							<div class="col-md-3">
								<div class="card report-card">
									<div class="card-body">
										<form>
											<div class="form-group">
												<label class="col-form-label spti-label">Enter Year:</label>
												<input type="text" class="col-md-12 spti-inpt"
													id="admissionYear" name="admissionYear">
											</div>
											<button type="button"
												class="btn btn-warning btn-sm add-btn float-end Spti-btn"
												onclick="generateReportByYear()">Generate Report by
												Year</button>
										</form>
									</div>
								</div>
							</div>
							<!-- All Patients Card -->
							<div class="col-md-3">
								<div class="card report-card">
									<div class="card-body">
										<form>
											<div class="form-group">
												<label class="col-form-label spti-label">All
													Patients:</label>
												<button type="button"
													class="btn btn-warning btn-sm add-btn float-end Spti-btn"
													id="btnAllPatients" onclick="generateReportByAllPatient()">All
													Patients</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- 	<div class="row mt-4">
			<div class="col-md-3">
				<div class="card report-card">
					<div class="card-body">
						<form>
							<div class="form-group">
								<label class="col-form-label spti-label">Enter Admission
									Date:</label> <input type="date" class="col-md-12 spti-inpt"
									id="admissionDate" name="admissionDate">
							</div>
							<button type="button"
								class="btn btn-warning btn-sm add-btn float-end Spti-btn"
								onclick="generateReportByDate()">Generate Report by Day
							</button>
						</form>
					</div>
				</div>
			</div>
 -->
		<!-- 
			<div class="col-md-3">
				<div class="card report-card">
					<div class="card-body">
						<form>
							<div class="form-group">
								<label class="col-form-label spti-label">Enter Year:</label> <input
									type="text" class="col-md-12 spti-inpt" id="admissionYear"
									name="admissionYear">
							</div>
							<button type="button"
								class="btn btn-warning btn-sm add-btn float-end Spti-btn"
								onclick="generateReportByYear()">Generate Report by
								Year</button>
						</form>
					</div>
				</div>
			</div> -->

		<!-- 	<div class="col-md-3 mt-6">
				<div class="card report-card">
					<div class="card-body">
						<form id="admitPatientForm">
							<div class="form-group">
								<label class="col-form-label spti-label">Enter Start
									Date:</label> <input type="date" class="col-md-12 spti-inpt"
									id="startDate" name="startDate">
							</div>
							<div class="form-group">
								<label class="col-form-label spti-label">Enter End Date:</label>
								<input type="date" class="col-md-12 spti-inpt" id="endDate"
									name="endDate">
							</div>
							<button type="button"
								class="btn btn-warning btn-sm add-btn float-end Spti-btn"
								onclick="generateReportByDateRange()">Generate Report
								by Date Range</button>
						</form>
					</div>
				</div>
			</div> -->

		<!-- <div class="col-md-3">
				<div class="card report-card">
					<div class="card-body">
						<form>
							<div class="form-group">
								<label class="col-form-label spti-label">All Patients:</label>
								<button type="button"
									class="btn btn-warning btn-sm add-btn float-end Spti-btn"
									id="#startDate" onclick="generateReportByAllPatient()">All
									Patients</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div> -->

		<div class="row mt-4">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body" style="display: none;">
						<h5 class="card-title" id="patientTable" style="display: none;">Patient
							List</h5>
						<div class="table-responsive" style="display: none;">
							<table class="table table-striped table-striped-sm"
								id="patientListTable">
								<thead>
									<tr>
										<th>Patient Name</th>
										<th>Gender</th>
										<th>Address</th>
										<th>Age</th>
										<th>Phone Number</th>
										<th>Email</th>
									</tr>
								</thead>
								<tbody id="patientListBody">
								</tbody>
							</table>
						</div>

						<div id="noDataMessage" class="text-center" style="display: none;">
							<p>Wrong Date insert!!! No data available...</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script>
$(document).ready(function(){
    $('#reportType').on('change', function(){
        if ($(this).val() === 'Custom') {           
            $('#myModal').modal('show');          
            $(this).val('');
        } else {
            $('#myModal').modal('hide');
        }
    });
});

$(document).ready(function() {
    $('#reportType').on('change', function() {
        var selectedOption = $(this).val();
        if (selectedOption === 'AllPatient') {
            $.get("/admits/getAllPatient", function(data) {
                displayPatientList(data);
                showPatientTable();
                $('#myModal').modal('hide');
            });
        } else {
            $('#myModal').modal('hide');
        }
    });
});


    function generateReportByDate() {
        var admissionDate = $("#admissionDate").val();
        $.get("/admits/AdmitProfileByDate/" + admissionDate,
            function(data) {
                displayPatientList(data);
                $('#myModal').modal('hide');
            });
    }

    function generateReportByYear() {
        var admissionYear = $("#admissionYear").val();
        $.get("/admits/AdmitProfileByYear/" + admissionYear,
            function(data) {
                displayPatientList(data);
                $('#myModal').modal('hide'); 
            });
    }

    function generateReportByDateRange() {
        var startDate = $("#startDate").val();
        var endDate = $("#endDate").val();
        $.get("/admits/admissionStartAndEndDate/" + startDate + "/"
            + endDate, function(data) {
                displayPatientList(data);
                $('#myModal').modal('hide'); 
            });
    }

    function generateReportByAllPatient() {
        $.get("/admits/getAllPatient", function(data) {
            displayPatientList(data);
            showPatientTable();
            $('#myModal').modal('hide');
        });
    }

    function getpatientList(selectedReport) {
        $.get("/admits/todaysWeeksMonthPatient/" + selectedReport, function(data) {
            displayPatientList(data);
            showPatientTable();
            $('#myModal').modal('hide'); 
        });
    }

    function displayPatientList(data) {
        var patientTableBody = $("#patientListBody");
        patientTableBody.empty();
        if (data && data.length > 0) {
            $.each(data, function(index, patient) {
                patientTableBody.append("<tr>" + "<td>" + patient.firstName
                        + " " + patient.lastName + "</td>" + "<td>"
                        + patient.gender + "</td>" + "<td>"
                        + patient.address + "</td>" + "<td>" + patient.age
                        + "</td>" + "<td>" + patient.phoneNumber + "</td>"
                        + "<td>" + patient.email + "</td>" + "</tr>");
            });
            $("#noDataMessage").hide();
            $("#patientTable").show();
        } else {
            $("#noDataMessage").show();
            $("#patientTable").hide();
        }
    }

    $('#reportType').change(function() {
        var selectedReport = $(this).val();
        getpatientList(selectedReport);
    });

    var initialReportType = $('#reportType').val();
    getpatientList(initialReportType);

    function showPatientTable() {
        $(".card-body").show();
        $("#patientTable").show();
        $(".table-responsive").show();
    }

    $("#admissionDate, #admissionYear, #startDate, #endDate").on("change",
        function() {
            showPatientTable();
        });

    $("#admissionDate").on("change", function () {
        clearOtherFields("#admissionDate");
    });

    $("#admissionYear").on("change", function () {
        clearOtherFields("#admissionYear");
    });

    $("#startDate, #endDate").on("change", function () {
        clearOtherFields("#startDate, #endDate");
    });

    function clearOtherFields(fieldId) {
        var fieldsToClear = fieldId.split(", ");
        $("input[type='date']").not(fieldsToClear.join(", ")).val('');
        $("input[type='text']").not(fieldsToClear.join(", ")).val('');
    }
</script>


</body>
</html>
