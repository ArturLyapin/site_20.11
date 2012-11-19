// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.form
//= require jquery.remotipart
//= require_tree .

 $(document).ready(function() {

      $("#feedback_form").validate({

        rules: {
		      "feedback[email]": {
		        required: true,
		        email: true
				  },
				"feedback[name]":{
				 	required: true,
					minlength: 3
				},
				"feedback[phone_number]":{
					number: true
				}
			},
			messages:{
				"feedback[email]": {
		        	required: "Укажите ваш email",
		        	email: "Неправильный email"
				  },
				"feedback[name]":{
				 	required: "Укажите ваше имя",
					minlength: "Короткое имя(минимально 3 символа)"
				},
				"feedback[phone_number]":{
					number: "Неправильный телефонный номер"
				},
				
			},
       });

 });



