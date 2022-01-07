<%@page import="java.util.HashMap"%>
<%@page import="dao.SeatsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	href="./css/bootstrap.min.css?2653">
<link rel="stylesheet" type="text/css" href="style.css?747">
<link rel="stylesheet" type="text/css" href="./css/animate.min.css?3892">
<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/feather.min.css">
<link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Oleo+Script&display=swap&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<title>choose-seat</title>

<style>
ul{
		/*让鼠标双击时不选中，增强用户体验*/
		user-select:none;
	}
	ul li{
		/**背景图片*/
		display:inline-block;
		/*没有样式*/
		list-style:none;
		width:80px;
		height:80px;
		background: url('img/seat-off.png');
		/**填充*/
		background-size: 100% 100%;
		/*鼠标覆盖变小手*/
	cursor: pointer;
		
	}
	.no{
		background: url('img/seat-no.png');
		/**填充*/
		background-size: 100% 100%;
		/*鼠标覆盖变禁用*/
	cursor: not-allowed;
	}
	.selected{
		background: url('img/seat-on.png');
		/**填充*/
		background-size: 100% 100%;
	}


</style>

<!-- Analytics -->
<%

String flightID = request.getParameter("id");

SeatsDao sd = new SeatsDao();
HashMap<String,String> selectedMap = sd.seatsSelected(flightID);
String[] ecoSelected = selectedMap.get("ecoSeats").split(",");
String[] preSelected = selectedMap.get("preSeats").split(",");
String[] busSelected = selectedMap.get("busSeats").split(",");

%>
<!-- Analytics END -->

</head>
<body onload="loadFlightID()">
	<!-- Main container -->
	<div class="page-container">

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
		<div class="bloc bg-map-overlay l-bloc" id="bloc-4">
			<div class="container ">
				<div class="row">
					<div class="col">
						<h1 class="mg-md h1-2-style tc-silver">
							<strong><i>Choose your seats</i></strong>
						</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-4 END -->

		<!-- bloc-5 -->
		<div class="bloc bg-c7d3b02df71506ec37a1fb87b788c51b l-bloc"
			id="bloc-5">
			<div class="container ">
				<div class="row">
					<div class="col">
						<div class="form-group container-div-5678-style">
							<select class="form-control option-select-style"
								id="choose-class"
								onchange="changeView()"
								>
								<option value="0">Economy</option>
								<option value="1">Premium economy</option>
								<option value="2">Business or first</option>
							</select><a href="index.html"
								class="btn btn-rd btn-lg float-lg-none btn-query-style btn-light-gray"
								id="query">Query<br></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-5 END -->

		<!-- bloc-9 -->
		<div class="bloc tc-white-2 l-bloc" id="bloc-9">
			<div class="container bloc-lg">
				<div class="row row-bloc-9-style">
					<div class="offset-lg-0 col-lg-12">
						<div class="row row-10-bloc-9-style">
							<div class="col offset-lg--1 col-lg-12">
								
								<ul class="list-unstyled list-style">
									<li id="A1">
										<div>A1</div>
									</li>
									<li id="A2">
										<div>A2</div>
									</li>
									<li id="A3">
										<div>A3</div>
									</li>
									<li id="A4">
										<div>A4</div>
									</li>
									<li id="A5">
										<div>A5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li  id="B1">
										<div>B1</div>
									</li>
									<li id="B2">
										<div>B2</div>
									</li>
									<li id="B3">
										<div>B3</div>
									</li>
									<li id="B4">
										<div>B4</div>
									</li>
									<li id="B5">
										<div>B5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li id="C1">
										<div>C1</div>
									</li>
									<li id="C2">
										<div>C2</div>
									</li>
									<li id="C3">
										<div>C3</div>
									</li>
									<li id="C4">
										<div>C4</div>
									</li>
									<li id="C5">
										<div>C5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li id="D1">
										<div>D1</div>
									</li>
									<li id="D2">
										<div>D2</div>
									</li>
									<li id="D3">
										<div>D3</div>
									</li>
									<li id="D4">
										<div>D4</div>
									</li>
									<li id="D5">
										<div>D5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li id="E1">
										<div>E1</div>
									</li>
									<li id="E2">
										<div>E2</div>
									</li>
									<li id="E3">
										<div>E3</div>
									</li>
									<li id="E4">
										<div>E4</div>
									</li>
									<li id="E5">
										<div>E5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li id="F1">
										<div>F1</div>
									</li>
									<li id="F2">
										<div>F2</div>
									</li>
									<li id="F3">
										<div>F3</div>
									</li>
									<li id="F4">
										<div>F4</div>
									</li>
									<li id="F5">
										<div>F5</div>
									</li>
								</ul>
								<ul class="list-unstyled list-style">
									<li id="G1">
										<div>G1</div>
									</li>
									<li id="G2">
										<div>G2</div>
									</li>
									<li id="G3">
										<div>G3</div>
									</li>
									<li id="G4">
										<div>G4</div>
									</li>
									<li id="G5">
										<div>G5</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- bloc-9 END -->

		<!-- bloc-7 -->
		<div class="bloc l-bloc" id="bloc-7">
			<div class="container bloc-sm">
				<div class="row">
					<form action=SelectSeatServlet onsubmit="return buy()" method="get"
						enctype="application/x-www-form-urlencoded">
						<input type="hidden" id="seats" name="seats" /> 
						<input type="hidden" id="classLevel" name="classLevel" value = "0"/>
						<input type="hidden" id="flightID" name="flightID" />
						<input
							type="submit" 
							value="Confirm" />
					</form>
				</div>
			</div>
		</div>
		<!-- bloc-7 END -->

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
 <script>
    	//为每个li加上点击事件 querySelector匹配指定的元素的第一个
    	var lis  =document.querySelectorAll("li");
    	//js也可以设置元素的点击事件
    	for( var i = 0 ; i < lis.length ; i++){
    		//let作用范围比较小     常常写到局部
    		let li = lis[i];
    		li.onclick = function(){
    			//元素可以点击(买票)  切换成选择的状态
    			//元素不可以卖 ， 不管
    			
    			//元素的className
    			//没有  可以选择
    			//有并且是no    那就不能选择
        		if(li.className == 'no'){
        			
        		}else{
        			var className = li.className;
        			li.className = className == "selected" ? "" : "selected";
        		}
        	};
    	}
    	function changeView(){
    		var classLevel = document.getElementById("choose-class").value;
    		var lis  =document.querySelectorAll("li");
    		//document.getElementById("demo").innerHTML = classLevel; 
    		for( var i = 0 ; i < lis.length ; i++){
				let li = lis[i];
				li.className = '';
			}
    		
    		if(classLevel == "1"){
    			
    			<%
        		for(int i = 0;i<preSelected.length;i++){
        			
        			%>
        			var preSeat = <%=preSelected[i]%>
        			var a = preSeat.innerHTML.slice(16,18);
        			//alert(preSeat.innerHTML);
        			document.getElementById(a).className = 'no';
        			<%
        			
        		}
        		
        		%>
    			
    			
    			
    			
    			for( var i = 0 ;i < 5 ; i++){
    				let li = lis[i];
    				li.className = 'no';
    			}
    			for( var i = 30 ; i < lis.length ; i++){
    				let li = lis[i];
    				li.className = 'no';
    			}
    			document.getElementById("classLevel").value = "1";
    		}else if(classLevel == "2"){
    			
    			<%
        		for(int i = 0;i<busSelected.length;i++){
        			%>
        			var busSeat = <%=busSelected[i]%>
        			var a = busSeat.innerHTML.slice(16,18);
        			document.getElementById(a).className = 'no';
        			<%
        			
        		}
        		
        		%>
    			
    			
    			for( var i = 0 ;i < 10 ; i++){
    				let li = lis[i];
    				li.className = 'no';
    			}
    			for( var i = 25 ; i < lis.length ; i++){
    				let li = lis[i];
    				li.className = 'no';
    			}
    			document.getElementById("classLevel").value = "2";
    		}
    		
    		
    		
    		
    	}
    	
    	function loadFlightID(){
    		
    		var id = getUrlParameter("id");
    		document.getElementById("flightID").value = id;
    		<%
    		for(int i = 0;i<ecoSelected.length;i++){
    			%>
    			var ecoSeat = <%=ecoSelected[i]%>
    			var a = ecoSeat.innerHTML.slice(16,18);
    			document.getElementById(a).className = 'no';
    			<%
    			
    		}
    		
    		%>
    		
    	
    	}
    	
    	function getUrlParameter(name){
            name = name.replace(/[]/,"\[").replace(/[]/,"\[").replace(/[]/,"\\\]");
            var regexS = "[\\?&]"+name+"=([^&#]*)";
            var regex = new RegExp( regexS );
            var results = regex.exec(window.parent.location.href );
            if( results == null ) return ""; else {
                return results[1];
            }
        };
    	
    	function buy(){
    		
    		//获取所有的 被选中(class=selected)的li
    		var lis = document.querySelectorAll(".selected");
    		if(lis.length == 0){
    			alert("一张票都没选!!!!");
    			return false;
    		}
    		var ids = "";
    		for( var i = 0 ; i < lis.length ; i++){
        		//let作用范围比较小     常常写到局部
        		let li = lis[i];
        		
        		//最后一个
        		if(i == lis.length - 1){
        			ids += li.id + "";
        		}else{
        			 ids += li.id + ",";
            		
        		}
    		}
    		//最后这个ids 啥样???     1-1，1-2，1-3
    		//写到隐藏域中
    		document.getElementById("seats").value = ids;
    		return true;
    		//return true
    	}	
    </script>


	<!-- Preloader -->
	<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
	<!-- Preloader END -->

</body>
</html>
