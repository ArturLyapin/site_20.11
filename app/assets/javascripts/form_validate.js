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