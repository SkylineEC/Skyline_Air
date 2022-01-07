<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="model.Buyer"%>
        <%@page import="model.Flight"%>
        <%@page import="dao.FlightDao"%>
        <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.util.Date"%>
<%@ page import="java.util.ArrayList"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="favicon.png">
    
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?2092">
	<link rel="stylesheet" type="text/css" href="style.css?4005">
	<link rel="stylesheet" type="text/css" href="./css/animate.min.css?6244">
	<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
	<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
	<link href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>identity</title>


    
<!-- Analytics -->
 
<!-- Analytics END -->
    
</head>
<body>
<!-- Main container -->
<div class="page-container">
<%
	FlightDao fd= new FlightDao();
	Flight flight = (Flight)request.getAttribute("flight");
	int flightID = flight.getId();
	String[] seats = (String[])request.getAttribute("splitSeat");
	String classLevel = (String)request.getAttribute("classLevel");
	//*****************获得出发地与目的地机场名字******************
	String from = fd.getNameFromAirportID(flight.getFromAirport());
	String to = fd.getNameFromAirportID(flight.getToAirport());
	//*****************获得出发地与目的地机场名字******************
	
	
	//*******************计算时间************************
	SimpleDateFormat simpleFormat = new SimpleDateFormat("hh:mm");
	Date fromDate3 = simpleFormat.parse(flight.getDepartureTime()); 
    Date toDate3 = simpleFormat.parse(flight.getArrivalTime());  
    long from3 = fromDate3.getTime();  
    long to3 = toDate3.getTime();  
    int minutes = (int) ((to3 - from3) / (1000 * 60)); 
  	//*******************计算时间************************
  	
  	String seat = "";
  	for(int i = 0;i<seats.length;i++){
  		
  		seat+=seats[i]+",";
  	}
  	String seatA = seat;
  	String price="";
  	if(classLevel.equals("0")) {
		price = ""+seats.length*Integer.parseInt(flight.getPr_economy());
	}else if(classLevel.equals("1")) {
		price = ""+seats.length*Integer.parseInt(flight.getPr_premium());
	}else if(classLevel.equals("2")) {
		price = ""+seats.length*Integer.parseInt(flight.getPr_business());
	}
  seat = "Your Seat:"+seat+"💰:"+price+"RMB";


%>   
<!-- bloc-17 -->
<div class="bloc bgc-white l-bloc " id="bloc-17">
	<div class="container bloc-lg">
		<div class="row">
			<div class="col-lg-6">
				<form id="form_11" data-form-type="blocs-form" 
				novalidate data-success-msg="Your message has been sent." 
				data-fail-msg="Sorry it seems that our mail server is not responding, Sorry for the inconvenience!"
				 class="form-11-style"
				 class="form-style"
				action="UploadBuyerInfServlet" method="post"
				 >
					<h1 class="mg-md h1-passenger-style">
						<strong><i>Passenger</i></strong>
					</h1>
					<div class="form-group container-div-32088-style">
						<label>
							Name
						</label>
						<input id="name" name="name" class="form-control" required />
					</div>
					<div class="form-group">
						<label>
							ID Card<br>
						</label>
						<input id="IDCard"  name="IDCard" class="form-control field-0-style" type="text" required />
					</div>
					<div class="form-group container-div-9497-style">
						<label>
							Phone number<br>
						</label>
					</div>
					<div class="form-group">
						<input class="form-control field-14999-style" name="phoneNumber" id="phoneNumber" required/>
						<div class="form-group">
							<label>
							
								Support Payment:<br>
							</label>
						</div>
						<input type="hidden" id="classLevel" name="classLevel" value = <%=classLevel%>/>
						<input type="hidden" id="flightID" name="flightID" value = <%=flightID%>/>
						<input type="hidden" id="ticketNumber" name="ticketNumber" value = <%=seats.length%>/>
						<input type="hidden" id="paidMoney" name="paidMoney" value = <%=price%>/>
						<input type="hidden" id="seats" name="seats" value = <%=seatA%>/>
						
						<div class="row">
							<div class="col">
								<div class="text-center">
									<span class="fa fa-cc-amex icon-lg"></span>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<span class="fa fa-cc-paypal icon-lg"></span>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<span class="fa fa-cc-visa icon-lg none"></span>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<span class="fa fa-cc-mastercard icon-lg"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label>
										Bank Card Number:
									</label>
									<input class="form-control" id="bankCardNumber" name="bankCardNumber" required/>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center">
						<button class="bloc-button btn btn-d btn-lg btn-21-style" type="submit" id="submit">
							Submit
						</button>
					</div>
				</form>
			</div>
			<div class="col">
				<div>
					<ul class="list-unstyled">
						<li class="bloc-bloc-17-style">
							<div class="container-div-24653-style" id="start-place">
							<%=from %>
							</div>
							<div class="container-div-24653-style">
								<div class="text-center">
									<span class="icon-md feather-icon icon-arrow-right" id="arrow"></span>
								</div>
							</div>
							<div class="container-div-24653-style" id="arrival-place">
							<%=to %>
							</div>
						</li>
						<li class="bloc-bloc-17-style">
							<div class="container-div-24653-style" id="start-time">
							<%=flight.getDepartureTime() %>
							</div>
							<div class="container-div-24653-style">
								<div class="text-center">
									<span class="icon-md feather-icon icon-clock" id="watch"></span>
									<div id="time">
									<%=minutes %>minutes
									</div>
								</div>
							</div>
							<div class="container-div-24653-style" id="arrrival-time">
							<%=flight.getArrivalTime() %>
							</div>
						</li>
						<li class="bloc-style">
							<div id="price">
							<%=seat %>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- bloc-17 END -->

<!-- ScrollToTop Button -->
<a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
<!-- ScrollToTop Button END-->


</div>
<!-- Main container END -->
    

<script src="./js/jquery-3.5.1.min.js?1793"></script>
<script src="./js/bootstrap.bundle.min.js?1254"></script>
<script src="./js/blocs.min.js?6875"></script>
<script src="./js/jqBootstrapValidation.js"></script>
<script src="./js/formHandler.js?5857"></script>
<script src="./js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->



<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->

</body>
</html>
