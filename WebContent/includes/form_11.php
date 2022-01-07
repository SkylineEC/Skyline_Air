<?php	
	if(empty($_POST['id_card']) && strlen($_POST['id_card']) == 0 || empty($_POST['email11']) && strlen($_POST['email11']) == 0)
	{
		return false;
	}
	
	$id_card = $_POST['id_card'];
	$email11 = $_POST['email11'];
	$phone_number = $_POST['phone_number'];
	$input_89 = $_POST['input_89'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "Id_Card: $id_card \nEmail11: $email11 \nPhone_Number: $phone_number \nInput_89: $input_89 \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: $email11";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>