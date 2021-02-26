/**	CONTACT FORM
*************************************************** **/
var _hash = window.location.hash;

/**
	BROWSER HASH - from php/contact.php redirect!

	#alert_success 		= email sent
	#alert_failed		= email not sent - internal server error (404 error or SMTP problem)
	#alert_mandatory	= email not sent - required fields empty
**/	jQuery(_hash).show();
$ (function () {

	var uploadField = document.getElementById ("contact");
	
	uploadField.onchange = function () {
			 if (this.files [0] .size> 10485760) {
					alert ("File is too big!");
					this.value = "";
				}
			}
	})