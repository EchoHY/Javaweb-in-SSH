<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ECHO</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/applicate.css">
</head>
<script type="text/javascript">
function tosubmit(){	
	var form = document.forms[0];
	form.action = "/Youth/myReply/addReply";
	form.method = "post";
	form.submit();	       			
}

</script>
<body>
<div style="background-color:#2BC3CE;height:100%">
	<section class="panel home" data-section-name="home">
	<div class="inner">
	<div class="title">为驴友而生</div><br/>
    	<h1>大工学生要出游！</h1>
		<h1>Step1：填写申请回复表</h1>	<br/><br/>
		<form  method="post" action=""> 
			<input  name ="username"  type="text" placeholder="姓名"/>
			<input  name ="sex"  type="text" placeholder="性别"/>
			<input  name ="stunum"  type="text" placeholder="学号"/>
			<input  name ="mycard"  type="text" placeholder="身份证号"/>
			<input  name ="destination"  type="text" placeholder="出游目的地"/>
			<input  name ="organisername"  type="text" placeholder="发起人姓名"/>
			<button class="but" type="button" onclick="tosubmit()">提交</button><br>
		</form>
	</div>
	</section>
</div>
</body>
</html>