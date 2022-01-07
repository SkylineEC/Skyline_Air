<?php	
	if(empty($_POST['from']) && strlen($_POST['from']) == 0 || empty($_POST['to']) && strlen($_POST['to']) == 0 || empty($_POST['departuredate']) && strlen($_POST['departuredate']) == 0 || empty($_POST['returndate']) && strlen($_POST['returndate']) == 0)
	{
		return false;
	}
	
	$from = $_POST['from'];
	$to = $_POST['to'];
	$departuredate = $_POST['departuredate'];
	$returndate = $_POST['returndate'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "From: $from \nTo: $to \nDeparturedate: $departuredate \nReturndate: $returndate \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: $to";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>