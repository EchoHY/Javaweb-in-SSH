<%@page import="com.lq.entity.MyUser,java.io.*"%>
<%@ page language="java" contentType="text/html; charset = UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<% String path = request.getContextPath(); 
//获取项目根目录路径地址
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Youth</title>
<!--  -->
<link rel="stylesheet" href="css/styletwo.css">
<link rel="stylesheet" href="css/sankstyle.css">
<link rel="stylesheet" href="css/signin.css">
<link rel="stylesheet" href="css/bootstrap.min.css"> 
<script src="http://lib.sinaapp.com/js/jquery/3.1.0/jquery-3.1.0.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script> -->
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollify.min.js"></script>

<script>
$(function() {
	
	$(".panel").css({"height":$(window).height()});
	var timer;

	$(window).resize(function() {
		clearTimeout(timer);
		timer = setTimeout(function() {
			$(".panel").css({"height":$(window).height()});
		},40);
	});

	$.scrollify({
		section:".panel"
	});
	

	$(".scroll").click(function(e) {
		e.preventDefault();
		$.scrollify("move",$(this).attr("href"));
	});
});

function login(){
	/*var form = document.forms[0];
	form.action = "/Spring-MVC-model/myuser/logining"
	form.method = "post"
	form.submit();*/
	$("#Pwrong").empty();
	$("#EWrong").empty();
	$.post(
			"/Youth/myuser/logining",
		    {
		        Eaddress:$("input[name='Eaddress']").val(),
		        password:$("input[name='password']").val()
		    },
		        function(data){
		        	if(data.result == "EaddressError"){		        		 
		        		$("#EWrong").html("账户不存在");       		
		        	}
		        	else if(data.result == "passwordError"){		        		
		        		$("#Pwrong").html("密码错误");	        		
		        	}
		        	else{
		        		var form = document.forms[0];
		        		form.action = "/Youth/myuser/logined";
		        		form.method = "post"
		        		form.submit();	        		
		        	}

		    }
		);
}
</script>
</head>
<body>
<section class="panel home" data-section-name="home">
<div class="inner">
	<a href="#travelling" class="scroll" ></a>
	<div id="echo">
		<img src="image_Login/huiyinmaobizi.png" style="height: 150px ;width:250px;">
		<div style="font-size: 2em;">
			<p style="text-align:right;margin-right:20%;color:black;">因你而生。</p>
			<p style="text-align: left;margin-left: 30%;"></p>
			<ul>
				<li>我们是年轻人</li>
				<li >旅游</li>
				<li >新闻</li>
				<li >科技</li>
				<li >购物</li>
				<li >集大成者.</li>
				<li >因为专注,所以值得被珍藏
			</ul>
			<p style="margin-top: 5%;">倾听你心声的回音</p>
		</div>
	</div>				
	<div class="signin" >
		<div class="signin-head"><img src="image_Login/test/head_120.png" alt="" class="img-circle"></div>
		<form class="form-signin"  name = "myuserForm" action="">
			<br/><br/>
			<input type="text" class="form-control" placeholder="账户即注册用的邮箱" name = "Eaddress" required autofocus />
			<div id = "EWrong" style="color:red;font-size:2em;"></div>
			<input type="password" class="form-control" placeholder="密码" name = "password" required />
			<div id = "Pwrong" style="color:red;font-size:2em;"></div>
			<button class="btn btn-lg btn-warning btn-block" type="button" onclick="login()">登录</button>	
			<br/>
			<a href="<%=path%>/register.jsp" style="color:#3e3a3a;font-size:2em;">没有账号?点此注册</a>		
		</form>
	</div>
	<!--登陆后-->
	<div class="signin" style="display: none;" >
		<div class="signin-head"><img src="image_Login/test/login.jpg" alt="" class="img-circle"></div>
		<div class="form-signin" role="form">
		<br/><br/>
			<p style="color:black;font-size:2.6em;">欢迎回来,秦佳君!</p>	
			<a href="#" style="text-decoration: none;"><button class="btn btn-lg btn-warning btn-block" style="background:#009636;border:none;margin-top:30%;">前往旅游--></button></a>
		<br/>
		</div>
	</div>
</div>
</section>
<section class="panel travelling" data-section-name="travelling">
	<div id="travel">			
			<p style="font-size: 8em;margin-left: 5%;	color: black;font-family:STXinwei">我们</p>
			<img src="image_Login/111.png" style="height: 12% ;width:43%; float:right;margin-top: -2%">
			<div style="text-align: center;font-size: 2em;margin-top:29%;">
				<p>在回音</p>
			 	<ul style="line-height:30px;;">
			 		<li>发现心怡的美景</li>
			 		<li>找到同趣的驴友</li>
			 		<li>分享快乐的点滴</li>
			 	</ul>
			</div>
			<h3 style="margin-top:20%;text-align: center;">寻得佳处,更与回音说.</h3>
	</div>
	<div id="travelright">
			<div id="board" style="height:70%;width:80%;margin:7% 12%;">
			 	<img src="image_Login/howtotravelling.png">
			</div>
			<div style="margin-left:-20%;margin-top:-20%;">
			<a href="<%=path%>/index2.html" >
				<img src="image_Login/djqw.png"/>
			</a>
			</div>
	</div>
</section>		
		
<section class="panel sports" data-section-name="sports">
	<div class="inner">
		<h2>技术博客板块还未推出，敬请期待</h2>
	</div>
</section>

<section class="panel blogs" data-section-name="blogs">
	<div class="inner">				
		<h2>精品购物板块还未推出，敬请期待</h2>
	</div>
</section>

<section class="panel shopping" data-section-name="shopping">
	<div class="inner">
		<h2>团队介绍板块还未推出，敬请期待</h2>
	</div>
</section>
</body>
</html>
<!--<h1> 登录 </h1>
<form  name = "myuserForm" action="/Spring-MVC-model/myuser/logining" method = "post">
	邮箱:<input type = "text" name = "Eaddress"/>
	<label id = "EWrong">${req4}</label><br/>
	密码:<input type="text" name = "password"/>
	<label id = "Pwrong">${req5}</label>
	<input type="submit" value="登录">  
</form>-->
