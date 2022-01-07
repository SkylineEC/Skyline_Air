<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.FlightDao"%>
<%@page import="model.Flight"%>
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
	href="./css/bootstrap.min.css?8803">
<link rel="stylesheet" type="text/css" href="style.css?981">
<link rel="stylesheet" type="text/css" href="./css/animate.min.css?807">
<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<title>refund-detail</title>



<!-- Analytics -->

<!-- Analytics END -->

<style>
table, tr, td {
	border: 1px solid rgb(200, 200, 200);
	font-family: "Trebuchet MS";
	color: rgb(255, 255, 255);
	font-style: italic;
	font-weight: bold;
}

tr {
	height: 150px;
}

td {
	width: 250px;
	text-align: center;
}
</style>
</head>
<body>
	<!-- Main container -->
	<div class="page-container">

		<!-- bloc-20 -->
		<div class="bloc bg-截屏2020-07-23-20下午3-46-21 l-bloc" id="bloc-20">
			<div class="container bloc-sm">
				<div class="row">
					<div class="col">
						<h2 class="mg-md h2-style">
							<strong><i>Refund</i></strong>
						</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-20 END -->

		<!-- bloc-21 -->
		<div class="bloc l-bloc" id="bloc-21">
			<div class="container bloc-lg">
				<div class="row">
					<div class="col">
						<ul class="list-unstyled">
							<li>
								<div>
									<h2 class="mg-md h2-your-flights：-color tc-white">
										<strong><i>Your flights：</i></strong>
									</h2>
								</div>
							</li>
							<li>
								<div>
									<div class="form-group">
										<table>
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
													flightsList = (ArrayList<Flight>) request.getAttribute("flightList");

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


													<td>
														<form action="RefundServlet" method="post">
														
														
														<input
														type="hidden" id="flightID" name="flightID"
														value=<%=flight.getId()%> /> 
														<input type="hidden"
														id="IDcard" name="IDcard"
														value=<%=request.getAttribute("ID")%> /> 
														<input
														type="submit" value="Confirm" />
														</form> 
													</td>
												</tr>

												<%
													}
												}
												} catch (Exception e) {

												}
												%>







											</table>
											</div>
											</div>
											</li>

											</ul>
											</div>
											</div>
											</div>
											</div>
											<!-- bloc-21 END -->

											<!-- ScrollToTop Button -->
											<a class="bloc-button btn btn-d scrollToTop"
												onclick="scrollToTarget('1',this)"><span
												class="fa fa-chevron-up"></span></a>
											<!-- ScrollToTop Button END-->


											</div>
											<!-- Main container END -->


											<script src="./js/jquery-3.5.1.min.js?1793"></script>
											<script src="./js/bootstrap.bundle.min.js?1254"></script>
											<script src="./js/blocs.min.js?6875"></script>
											<script src="./js/lazysizes.min.js" defer></script>
											<!-- Additional JS END -->



											<!-- Preloader -->
											<div id="page-loading-blocs-notifaction"
												class="page-preloader"></div>
											<!-- Preloader END -->
</body>
</html>
