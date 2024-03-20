$(document).ready(function() {
    $("#login-form").validate({
        errorPlacement: function(error, element) {
           
            return true;
        },
         highlight: function(element, errorClass) {
           
            $(element).addClass(errorClass);
        },
        unhighlight: function(element, errorClass) {
           
            $(element).removeClass(errorClass);
        },
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
                maxlength: 12,
                digits: true
            },
            age: {
                required: true,
                min: 0.1,
                number: true              
            },
            gender: {
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
            paidBill: {
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
        submitHandler: function(form) {
            form.submit();
        }
    });
});
