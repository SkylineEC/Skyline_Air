<?php	
	
	
	$select_2039 = $_POST['select_2039'];
	$select_557 = $_POST['select_557'];
	$select_from_airport = $_POST['select_from_airport'];
	$select_488 = $_POST['select_488'];
	$select_2092 = $_POST['select_2092'];
	$select_arrival_airport = $_POST['select_arrival_airport'];
	$select_discount = $_POST['select_discount'];
	$discount_start_day = $_POST['discount_start_day'];
	$input_1886 = $_POST['input_1886'];
	
	$to = 'receiver@yoursite.com'; // Email submissions are sent to this email

	// Create email	
	$email_subject = "Message from a Blocs website.";
	$email_body = "You have received a new message. \n\n".
				  "Select_2039: $select_2039 \nSelect_557: $select_557 \nSelect_From_Airport: $select_from_airport \nSelect_488: $select_488 \nSelect_2092: $select_2092 \nSelect_Arrival_Airport: $select_arrival_airport \nSelect_Discount: $select_discount \nDiscount_Start_Day: $discount_start_day \nInput_1886: $input_1886 \n";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/plain; charset=UTF-8\r\n";	
	$headers .= "From: contact@yoursite.com\n";
	$headers .= "Reply-To: DoNotReply@yoursite.com";	
	
	mail($to,$email_subject,$email_body,$headers); // Post message
	return true;			
?>