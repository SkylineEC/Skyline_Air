<%@page import="dao.FlightDao"%>
<%@page import="model.Flight"%>
<%@page import="model.FlightData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.StatisticsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="favicon.png">
    
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?3382">
	<link rel="stylesheet" type="text/css" href="style.css?4514">
	<link rel="stylesheet" type="text/css" href="./css/animate.min.css?7978">
	<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
	<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
	<link href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>status</title>

background:balck
    
<!-- Analytics -->
 
<!-- Analytics END -->
  
<style>
table, tr, td {
	border: 1px solid rgb(255, 255, 255);
	font-family: "Trebuchet MS";
	color: rgb(255, 255, 255);
}

tr {
	height: 150px;
}

td {
	width: 450px;
	text-align: center;
}

col {
	width: 450px;
	text-align: center;
	font-size:62px; 
}



.MONEY{
	font-style: italic;
	font-weight: bold;
	font-size:122px; 
	font-family: "Trebuchet MS";
}
</style>  
  
  
  
    
</head>
<body>
<!-- Main container -->
<div class="page-container">
    
<!-- bloc-16 -->
<div class="bloc bg-c7d3b02df71506ec37a1fb87b788c51b l-bloc" id="bloc-16">
	<div class="container bloc-lg">
		<div class="row">
			<div class="col">
				<h1 class="mg-md h1-color tc-alice-blue">
					<strong><i>Statistics</i></strong>
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- bloc-16 END -->
<%
StatisticsDao sd = new StatisticsDao();
String money = sd.getMoney();
ArrayList<FlightData> list = sd.getDataList();


%>
<!-- bloc-17 -->
<div class="bloc l-bloc" id="bloc-17">
	<div class="container bloc-lg">
		<div class="MONEY">
			<div >
			<%out.print("💷💶💴💵:"+money+"RMB"); %>
			</div>
		</div>
	</div>
</div>
<!-- bloc-17 END -->

<!-- Bloc Group -->

<!-- Bloc Group -->
<div class="bloc-group">

<!-- bloc-18 -->
<div class="bloc bloc-tile-3 l-bloc none" id="bloc-18">
	<div class="container bloc-lg">
		<div class="row">
			<div class="col-12">
			<table>
			<tr>
										<td>From</td>
										<td>To</td>
										<td>Date</td>
										<td>Flight Number</td>
										<td>Income</td>
									</tr>
			<%
									
									try {
										
										if (list.size() != 0) {
											
											for (FlightData data : list) {
												FlightDao fd = new FlightDao();
												Flight flight = fd.getFlightById(Integer.parseInt(data.getFlightID()));
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
												out.print(flight.getDate());
											%>
										</td>
										<td>
											<%
												out.print(flight.getFlightNumber());
											%>
										</td>
										<td>
											<%
												out.print(data.getMoney());
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
			
			</div>
		</div>
	</div>
</div>
<!-- bloc-18 END -->

<!-- bloc-19 -->
<div class="bloc bloc-tile-3 l-bloc none" id="bloc-19">
	<div class="container bloc-lg">
		<div class="row">
			<div class="col-12">
			</div>
		</div>
	</div>
</div>
<!-- bloc-19 END -->

<!-- bloc-20 -->
<div class="bloc bloc-tile-3 l-bloc" id="bloc-20">
	<div class="container bloc-lg">
		<div class="row">
			<div class="col-12">
			</div>
		</div>
	</div>
</div>
<!-- bloc-20 END -->
</div>
<!-- Bloc Group END -->

<!-- ScrollToTop Button -->
<a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
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
