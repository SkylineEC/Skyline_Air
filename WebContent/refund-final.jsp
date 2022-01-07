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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<link rel="shortcut icon" type="image/png" href="favicon.png">

<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min.css?3330">
<link rel="stylesheet" type="text/css" href="style.css?4686">
<link rel="stylesheet" type="text/css" href="./css/animate.min.css?2112">
<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<title>refund-final</title>



<!-- Analytics -->
<%
	Buyer buyer = (Buyer) request.getAttribute("buyer");
Flight flight = (Flight) request.getAttribute("flight");
FlightDao fd = new FlightDao();
String from = fd.getNameFromAirportID(flight.getFromAirport());
String to = fd.getNameFromAirportID(flight.getToAirport());

System.out.println("flight.getId()"+flight.getId());
System.out.println("buyer.getIDCard()"+buyer.getIDCard());
%>
<!-- Analytics END -->

</head>
<body>
	<!-- Main container -->
	<div class="page-container">

		<!-- bloc-22 -->
		<div class="bloc bg-截屏2020-07-23-20下午3-46-21 l-bloc" id="bloc-22">
			<div class="container bloc-sm">
				<div class="row">
					<div class="col">
						<h1 class="mg-md h1-refund-style">
							<strong><i>Refund</i></strong>
						</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-22 END -->

		<!-- bloc-23 -->
		<div
			class="bloc bg-08101503-travel-virgin-atlantic-flights-cover-2000x1328 bg-repeat l-bloc"
			id="bloc-23">
			<div class="container bloc-lg">
				<div class="row">
					<div
						class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
						<ul class="list-unstyled">
							<li>
								<div class="container-div-21548-style" id="from">
									<%=from%>
								</div>
							</li>
							<li>
								<div class="container-div-21548-style">
									<div class="text-center">
										<span class="fa fa-long-arrow-right icon-white icon-lg"></span>
									</div>
								</div>
							</li>
							<li class="bloc-4133-style">
								<div class="container-div-21548-style" id="to">
									<%=to%>
								</div>
							</li>
							<li class="bloc-0-style">
								<div id="price">
									<%="💰RMB:" + buyer.getPaidMoney()%>
								</div>
							</li>
							<li>
								<div class="text-center">
									<div class="container-div-16581-style" id="from-time">
										<%=flight.getDepartureTime()%>
									</div>
									<div class="container-div-16581-style" id="to-time">
										<%=flight.getArrivalTime()%>
									</div>
									<div class="form-group">
										<label class="text-lg-left label-34-style"> <strong><i>Bank
													card number：</i></strong>
										</label>
										<div>
											<div class="form-group container-div-bloc-23-style">
												<label class="label-label-style"> Support： </label>
											</div>
											<div>
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
															<span class="fa fa-cc-visa icon-lg"></span>
														</div>
													</div>
													<div class="col">
														<div class="text-center">
															<span class="fa fa-cc-mastercard icon-lg"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<input class="form-control" id="bank-card-number"
											placeholder="please input your bankcard number" />
									</div>

									<form action="RefundFinalServlet" method="post">
										<input type="hidden" id="flightID" name="flightID"value=<%=flight.getId()%> /> 
										<input type="hidden" id="IDcard" name="IDcard" value=<%=buyer.getIDCard()%> /> 
										<input type="submit" value="Confirm" />
									</form>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-23 END -->

		<!-- ScrollToTop Button -->
		<a class="bloc-button btn btn-d scrollToTop"
			onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
		<!-- ScrollToTop Button END-->


	</div>
	<!-- Main container END -->


	<script src="./js/jquery-3.5.1.min.js?1793"></script>
	<script src="./js/bootstrap.bundle.min.js?1254"></script>
	<script src="./js/blocs.min.js?6875"></script>
	<script src="./js/lazysizes.min.js" defer></script>
	<!-- Additional JS END -->



	<!-- Preloader -->
	<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
	<!-- Preloader END -->

</body>
</html>
