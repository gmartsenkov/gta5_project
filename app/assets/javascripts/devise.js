 $(document).ready(function(){
 		$('#username').on('input',function(){
 			if($(this).val().length < 4){
 				$(this).css('background-color','#FFD6CC');
 			}
 			else{
 				$(this).css('background-color','#8DC7A0');
 			}
 		});
 		$('#password').on('input',function(){
 			if($(this).val().length < 8){
 				$(this).css('background-color','#FFD6CC');
 			}
 			else{
 				$(this).css('background-color','#8DC7A0');
 			}
 		});
 		$('#password_confirm').on('input',function(){
 			if($(this).val().length < 8){
 				$(this).css('background-color','#FFD6CC');
 			}
 			else{
 				$(this).css('background-color','#8DC7A0');
 			}
 		});
 });