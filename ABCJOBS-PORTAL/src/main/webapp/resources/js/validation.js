const fullName = document.querySelector("#fullName");
const emailAddress = document.querySelector("#emailAddress");
const password = document.querySelector("#password");
const passwordConfirmation = document.querySelector("#passwordConfirmation");


if(fullName!= null) {
	fullName.addEventListener("focusout", () => { isInvalid(fullName); });	
}

if(emailAddress != null) {
	emailAddress.addEventListener("focusout", () => { 
		const validEmailAt = emailAddress.value.indexOf("@");
		const validEmailDot = emailAddress.value.indexOf(".");
		
		if(validEmailAt < 0 || validEmailDot < 0) {
			emailAddress.classList.remove("is-valid");		
			emailAddress.classList.add("is-invalid");
		} else {
			emailAddress.classList.add("is-valid");		
			emailAddress.classList.remove("is-invalid");
		}
	});
}

if(passwordConfirmation != null) {
	passwordConfirmation.addEventListener("focusout", () => {
		if(passwordConfirmation.value == "") {
			isInvalid(password);
			isInvalid(passwordConfirmation);
		} else {
			isValidIn2Field(password, passwordConfirmation);
		}
	});	
}

function isInvalid(val) {
	if(val.value == "") {
		val.classList.add("is-invalid");
		val.classList.remove("is-valid");
	} else {
		val.classList.remove("is-invalid");
		val.classList.add("is-valid");
	}
}

function isValidIn2Field(val1, val2) {
	const btn = document.querySelector("[type=submit]");
	if(val1.value != val2.value) {
		val1.classList.add("is-invalid");
		val2.classList.add("is-invalid");
		btn.classList.add("disabled");
		
		val1.classList.remove("is-valid");
		val2.classList.remove("is-valid");
	} else {
		val1.classList.add("is-valid");
		val2.classList.add("is-valid");
		btn.classList.remove("disabled");
		o
		val1.classList.remove("is-invalid");
		val2.classList.remove("is-invalid");
	}
};