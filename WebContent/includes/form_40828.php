<?php	
	
	
	$flight_no = $_POST['flight_no'];
	$price_for_eco = $_POST['price_for_eco'];
	$price_for_premium = $_POST['price_for_premium'];
	$price_for_business = $_POST['price_for_business'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "Flight_No: $flight_no \nPrice_For_Eco: $price_for_eco \nPrice_For_Premium: $price_for_premium \nPrice_For_Business: $price_for_business \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: DoNotReply@yoursite.com";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>