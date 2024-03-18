$(document).ready(function() {
	$("#login-form").validate({
		rules: {
			// this Add patient form validation

			firstName: {
				required: true,
				minlength: 2
			},

			lastName: {
				required: true,
				minlength: 2
			},

			phoneNumber: {
				required: true,
				minlength: 10,
				maxlength: 11,
				digits: true
			},

			age: {
				required: true,
				minlength: 1,
				digits: true
			},
			
			gender:{
				required: true
			},

			// this opd form validation

			seenByDoctor: {
				required: true,
				minlength: 2
			},

			diagnosis: {
				required: true,
				minlength: 2
			},

			treatment: {
				required: true,
				minlength: 2
			},

			bill: {
				required: true,
				minlength: 2,
				digits: true
			},
			pendingAmount: {
				required: true,
				minlength: 2,
				digits: true
			},
			billStatus: {
				required: true
			},
			paymentType: {
				required: true
			},
			
			paidBill:{
				required: true,
				minlength: 2

			},

			//this admit patient validation message

			admissionDate: {
				required: true,
				date: true,
				time: true
			},
			admitDischargeStatus: {
				required: true
			},

			//this for SanmatiPatr

			Responsible_Person: {
				required: true,
				minlength: 2
			}
		},

/////--------------------		messages              -------------------//////
		
		messages: {
			firstName: {
				required: "Please enter your first name",
				minlength: "Please enter at least 2 characters"
			},
			lastName: {
				required: "Please enter your Last name",
				minlength: "Please enter at least 2 characters"
			},
			phoneNumber: {
				required: "Please enter your phoneNumber",
				minlength: "Please enter at least 10 Number"
			},
			age: {
				required: "Please enter your Age",
				minlength: "Please enter at least 2 Number"
			},
			gender:{
				required: "Please Select Gender"
			},

			// this opd form validation message 

			seenByDoctor: {
				required: "Please enter Doctors name",
				minlength: "Please enter at least 2 characters"
			},
			diagnosis: {
				required: "Please enter Diagnosis",
				minlength: "Please enter at least 2 characters"
			},
			treatment: {
				required: "Please enter Treatment",
				minlength: "Please enter at least 2 characters"
			},
			bill: {
				required: "Please enter Bill",
				minlength: "Please enter at least 2 characters"
			},
			pendingAmount: {
				required: "Please enter pending Amount",
				minlength: "Please enter at least 2 characters"
			},
			billStatus: {
				required: "Please Select bill Status"

			},
			paymentType: {
				required: "Please Select payment Type"

			},
			
			paidBill:{
				required: "Please enter paid bill",
				minlength: "Please enter at least 2 Number"

			},

			//this admit patient validation message

			admissionDate: {
				required: "Please enter admission Date"
			},

			admitDischargeStatus: {
				required: "Please Select Status"
			},

			//this for SanmatiPatr

			Responsible_Person: {
				required: "Please enter responsible person"

			}

		},
		submitHandler: function(form) {
			form.submit();
		}
	});
});