<%@page import="dao.FlightDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Flight"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<link rel="shortcut icon" type="image/png" href="favicon.png">

<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min.css?1134">
<link rel="stylesheet" type="text/css" href="style.css?7361">
<link rel="stylesheet" type="text/css" href="./css/animate.min.css?1260">
<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<title>flight-search</title>



<!-- Analytics -->

<!-- Analytics END -->

</head>

<style>
table, tr, td {
	border: 1px solid rgb(50, 64, 89);
	font-family: "Trebuchet MS";
}

tr {
	height: 150px;
}

td {
	width: 250px;
	text-align: center;
}
</style>
<body>
	<!-- Main container -->
	<div class="page-container">
		<%
			
		%>
		<!-- bloc-0 -->
		<div class="bloc bg-mountains-italy l-bloc" id="bloc-0">
			<div class="container bloc-sm">
				<div class="row">
					<div class="col">
						<h1
							class="btn-resize-mode h1-style sm-shadow text-w-lg mg-sm float-lg-none ">
							Skyline AIR<span class="text-span-color"><span
								class="special-tag-for-editing-text-with-html"></span><span
								class="special-tag-for-editing-text-with-html"></span></span>
						</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-0 END -->

		<!-- bloc-1 -->
		<div class="bloc l-bloc" id="bloc-1">
			<div class="container bloc-sm">
				<div class="row">
					<div class="col">
						<nav class="navbar row navbar-expand-md nav-invert navbar-dark"
							role="navigation">
							<button id="nav-toggle" type="button"
								class="ui-navbar-toggler navbar-toggler border-0 p-0"
								data-toggle="collapse" data-target=".navbar-42995"
								aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse navbar-42995">
								<ul class="site-navigation nav navbar-nav">
									<li class="nav-item"><a href="index.html"
										class="nav-link a-btn ltc-white" target="_blank">Home</a></li>
									<li class="nav-item"><a href="stafflogin.html"
										class="nav-link a-btn ltc-white" target="_blank">staffLogin</a>
									</li>
									<li class="nav-item"><a href="refund.html"
										class="nav-link a-btn ltc-white" target="_blank">refund</a></li>
								</ul>
							</div>
							<a class="navbar-brand mr-0 link-style ltc-light-gray"
								href="index.html">We're here for you</a>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-1 END -->

		

		<!-- bloc-4 -->
		<div class="bloc bg-crosses-s-bg bg-repeat bgc-light-gray l-bloc"
			id="bloc-4">
			<div class="container bloc-sm">
				<div class="row">
					<div class="col">
						<ul role="tablist" id="nav-14680-tab"
							class="nav nav-tabs list-unstyled">
							<li class="nav-item"><a class="a-btn nav-link active"
								id="nav-14680-tab-1" data-toggle="tab"
								href="#nav-14680-content-1" role="tab"
								aria-controls="nav-14680-content-1" aria-selected="true">Direct</a>
							</li>
							<li class="nav-item"><a class="a-btn nav-link"
								id="nav-14680-tab-2" data-toggle="tab"
								href="#nav-14680-content-2" role="tab"
								aria-controls="nav-14680-content-2" aria-selected="false">Transit</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="nav-14680-content-1"
								role="tabpanel" aria-labelledby="nav-14680-content-1">
								<p>
								<table border="1">
									<tr>
										<td>From</td>
										<td>To</td>
										<td>Voyage</td>
										<td>Plane Model</td>
										<td>Departure Time</td>
										<td>Arrival Time</td>
										<td>Date</td>
										<td>Flight Number</td>
										<td>Operation</td>
									</tr>
									<%
										ArrayList<Flight> flightsList = new ArrayList<Flight>();
									try {
										flightsList = (ArrayList<Flight>) request.getAttribute("flightsList");

										if (flightsList.size() != 0) {
											for (Flight flight : flightsList) {
									%>
									<tr>
										<td>
											<%
												out.print(flight.getFromAirport());
											%>

										</td>
										<td>
											<%
												out.print(flight.getToAirport());
											%>

										</td>
										<td>
											<%
												out.print(flight.getVovage());
											%>

										</td>
										<td>
											<%
												switch (flight.getPlaneModel()) {

											case "0":
												out.print("Boeing 737");
												break;
											case "1":
												out.print("Boeing 757");
												break;
											case "2":
												out.print("Boeing 787");
												break;
											case "3":
												out.print("AirBus 320");
												break;
											case "4":
												out.print("AirBus 330");
												break;
											}
											%>

										</td>
										<td>
											<%
												out.print(flight.getDepartureTime());
											%>

										</td>
										<td>
											<%
												out.print(flight.getArrivalTime());
											%>
										</td>
										<td>
											<%
												out.print(flight.getDate());
											%>
										</td>
										<td>
											<%
												out.print(flight.getFlightNumber());
											%>
										</td>


										<td><a href="choose-seat.jsp?id=<%=flight.getId()%>"><button>Book</button></a>
										</td>
									</tr>

									<%
										}
									}
									} catch (Exception e) {

									}
									%>




								</table>
								</p>
							</div>
							<div class="tab-pane fade-tab-bs" id="nav-14680-content-2"
								role="tabpanel" aria-labelledby="nav-14680-content-2">
								<p>
								<table border="1">
									<tr>
										<td>From</td>
										<td>Transit</td>
										<td>To</td>
										<td>Voyage</td>
										<td>Plane Model</td>
										<td>Departure Time</td>
										<td>Arrival Time</td>
										<td>Date</td>
										<td>Flight Number</td>
										
									</tr>
									<%
										ArrayList<Flight> flightsTransitList = new ArrayList<Flight>();
									try {
										flightsTransitList = (ArrayList<Flight>) request.getAttribute("flightsTransitList");

										if (flightsTransitList.size() != 0) {
											for (Flight flight : flightsTransitList) {
												FlightDao fd = new FlightDao();
									%>
									<tr>
									<td>
											<%
												out.print(flight.getTransit());
											%>
 
										</td>
										<td>
											<%
												out.print(flight.getFromAirport());
											%>

										</td>
										<td>
											<%
												out.print(flight.getToAirport());
											%>

										</td>
										<td>
											<%
												out.print(flight.getVovage());
											%>

										</td>
										<td>
											<%
												switch (flight.getPlaneModel()) {

											case "0":
												out.print("Boeing 737");
												break;
											case "1":
												out.print("Boeing 757");
												break;
											case "2":
												out.print("Boeing 787");
												break;
											case "3":
												out.print("AirBus 320");
												break;
											case "4":
												out.print("AirBus 330");
												break;
											}
											%>

										</td>
										
										<td>
											<%
												out.print(flight.getDepartureTime());
											%>

										</td>
										<td>
											<%
												out.print(flight.getArrivalTime());
											%>
										</td>
										<td>
											<%
												out.print(flight.getDate());
											%>
										</td>
										<td>
											<%
												out.print(flight.getFlightNumber());
											%>
										</td>

									</tr>

									<%
										}
									}
									} catch (Exception e) {

									}
									%>


								</table>
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-4 END -->

		<!-- ScrollToTop Button -->
		<a class="bloc-button btn btn-d scrollToTop"
			onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
		<!-- ScrollToTop Button END-->


	</div>
	<!-- Main container END -->


	<script src="./js/jquery-3.5.1.min.js?1793"></script>
	<script src="./js/bootstrap.bundle.min.js?1254"></script>
	<script src="./js/blocs.min.js?6875"></script>
	<script src="./js/jqBootstrapValidation.js"></script>
	<script src="./js/formHandler.js?606"></script>
	<script src="./js/lazysizes.min.js" defer></script>
	<!-- Additional JS END -->



	<!-- Preloader -->
	<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
	<!-- Preloader END -->

</body>
</html>
