<?php	
	
	
	$ = $_POST[''];
	$ = $_POST[''];
	$ = $_POST[''];
	$ = $_POST[''];
	$ = $_POST[''];
	$ = $_POST[''];
	$input_date_47538 = $_POST['input_date_47538'];
	$ = $_POST[''];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  ": $ \n: $ \n: $ \n: $ \n: $ \n: $ \nInput_Date_47538: $input_date_47538 \n: $ \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: DoNotReply@yoursite.com";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>