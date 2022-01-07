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
    
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?6439">
	<link rel="stylesheet" type="text/css" href="style.css?7336">
	<link rel="stylesheet" type="text/css" href="./css/animate.min.css?2913">
	<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
	<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
	<link href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>staffLogin</title>


    
<!-- Analytics -->
 
<!-- Analytics END -->
<script>
	function validUsername(){
		
		//ajax去请求后台查询用户名是否可用
		var req = new XMLHttpRequest();
		req.open("post","ValidUsername",true);
		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		req.send(null);
		req.onreadystatechange = function(){
			
			if(req.readyState == 4){
				var res = req.responseText;
				if(res == 'NoUser'){
					var info = document.getElementById("info");
					info.innerText = "没有这个用户";
				}else if(res == 'WrongPassword'){
					var info = document.getElementById("info");
					info.innerText = "密码错误";
				}
			}
		}
		
	}
</script>    
</head>
<body>
<!-- Main container -->
<div class="page-container">
    
<!-- bloc-0 -->
<div class="bloc bg-mountains-italy l-bloc" id="bloc-0">
	<div class="container bloc-sm">
		<div class="row">
			<div class="col">
				<h1 class="btn-resize-mode h1-style sm-shadow text-w-lg mg-sm float-lg-none ">
					Skyline AIR<span class="text-span-color"><span class="special-tag-for-editing-text-with-html"></span><span class="special-tag-for-editing-text-with-html"></span></span>
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
				<nav class="navbar row navbar-expand-md nav-invert navbar-dark" role="navigation">
					<button id="nav-toggle" type="button" class="ui-navbar-toggler navbar-toggler border-0 p-0" data-toggle="collapse" data-target=".navbar-42995" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse navbar-42995">
						<ul class="site-navigation nav navbar-nav">
							<li class="nav-item">
								<a href="index.html" class="nav-link a-btn ltc-white" target="_blank">Home</a>
							</li>
							<li class="nav-item">
								<a href="stafflogin.html" class="nav-link a-btn ltc-white" target="_blank">staffLogin</a>
							</li>
							<li class="nav-item">
								<a href="refund.html" class="nav-link a-btn ltc-white" target="_blank">refund</a>
							</li>
						</ul>
					</div><a class="navbar-brand mr-0 link-style ltc-light-gray" href="index.html">We're here for you</a>
				</nav>
			</div>
		</div>
	</div>
</div>
<!-- bloc-1 END -->

<!-- bloc-8 -->
<div class="bloc bloc-bg-texture texture-paper bg-lines-dr-bg bg-repeat bgc-dark-lava d-bloc" id="bloc-8">
	<div class="container ">
		<div class="row">
			<div class="col">
				<h1 class="mg-md tc-light-gray h1-login-style">
					<strong><i>Staff Login</i></strong><span></span>
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- bloc-8 END -->
<%
 String wrongCode = (String)request.getAttribute("wrongCode");
%>
<!-- bloc-9 -->
<div class="bloc bg-highway tc-white l-bloc" id="bloc-9">
	<div class="container bloc-xxl">
		<div class="row row-10-style">
			<div class="col-lg-11">
				<form id="form_3" 
				data-form-type="blocs-form" 
				novalidate data-success-msg="Your message has been sent." 
				data-fail-msg="Sorry it seems that our mail server is not responding, Sorry for the inconvenience!"
				action="StaffLoginServlet" 
				method="post"
				>
					<div class="form-group">
						<label>
							Name
						</label>
						<input id="name" name="staffName" class="form-control" required />
					</div>
					<div class="form-group" id = "info">
					
					<label>
							<%
							if(wrongCode != null){
								out.print(wrongCode);
							}
							
							%>
						</label>
					</div>
					<div class="form-group">
						<label>
							Password<br>
						</label>
						<input id="password" name="staffPassword" class="form-control" type="password"  required />
					</div>
					<div class="text-center">
						<button class="bloc-button btn btn-lg btn-submit-style btn-white" type="submit">
							Login<br>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- bloc-9 END -->

</div>
<!-- Main container END -->
    

<script src="./js/jquery-3.5.1.min.js?1793"></script>
<script src="./js/bootstrap.bundle.min.js?1254"></script>
<script src="./js/blocs.min.js?6875"></script>
<script src="./js/jqBootstrapValidation.js"></script>
<script src="./js/formHandler.js?2799"></script>
<script src="./js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->



<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->

</body>
</html>
