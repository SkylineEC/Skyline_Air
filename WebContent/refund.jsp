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
    
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?8441">
	<link rel="stylesheet" type="text/css" href="style.css?2818">
	<link rel="stylesheet" type="text/css" href="./css/animate.min.css?3185">
	<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
	<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
	<link href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>refund</title>


    
<!-- Analytics -->
<%
 String wrongCode = (String)request.getAttribute("wrongCode");
System.out.println("*****");%> 
<!-- Analytics END -->
    
</head>
<body>
<!-- Main container -->
<div class="page-container">
    
<!-- bloc-17 -->
<div class="bloc bg-rs-regional-flights-shutterstock-765699031 l-bloc" id="bloc-17">
	<div class="container bloc-sm">
		<div class="row">
			<div class="col">
				<h1 class="mg-md tc-light-brown">
					<strong><i>Refund</i></strong>
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- bloc-17 END -->

<!-- bloc-18 -->
<div class="bloc tc-light-brown bg-40790498-1847787365339802-8950713494131441664-o d-bloc" id="bloc-18">
	<div class="container bloc-xl">
		<div class="row">
			<div class="col-lg-5">
				<form id="form_12" data-form-type="blocs-form" 
				action="RefundLoginServlet" 
				method="post"
				novalidate data-success-msg="Your message has been sent." data-fail-msg="Sorry it seems that our mail server is not responding, Sorry for the inconvenience!">
					<div class="form-group container-div-49658-style">
						<label class="label-id-card-color">
							<strong><i>ID card</i></strong><br>
						</label>
						<input id="ID" name="ID" class="form-control" required placeholder="please enter your ID card number" />
					</div> 
					<div class="form-group container-div-49658-style">
					<label>
							<%
							if(wrongCode != null){
								out.print(wrongCode);
							}
							%>
						</label>
					</div>
					<button class="bloc-button btn btn-lg btn-block btn-20-style btn-light-brown" type="submit">
						Submit
					</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- bloc-18 END -->

<!-- ScrollToTop Button -->
<a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
<!-- ScrollToTop Button END-->


</div>
<!-- Main container END -->
    

<script src="./js/jquery-3.5.1.min.js?1793"></script>
<script src="./js/bootstrap.bundle.min.js?1254"></script>
<script src="./js/blocs.min.js?6875"></script>
<script src="./js/jqBootstrapValidation.js"></script>
<script src="./js/formHandler.js?695"></script>
<script src="./js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->



<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->

</body>
</html>
