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
	form.action = "/Youth/myApp/addApplicate";
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
		<h1>Step1：填写申请信息表</h1>	<br/><br/>
    	<form  method="post" action="/Youth/myApp/addApplicate"> 
		<input  name ="username"  type="text" placeholder="姓名"/>
		<input  name ="sex"  type="text" placeholder="性别"/>
		<input  name ="stunum"  type="text" placeholder="学号"/>
		<input  name ="mycard"  type="text" placeholder="身份证号"/>
		<input  name ="destination"  type="text" placeholder="出游目的地"/>
		<input  name ="tripway"  type="text" placeholder="出游方式"/>
		<input  name ="triptime"  type="text" placeholder="出游时间"/>
		<input  name ="budget"  type="text" placeholder="金额预算"/>
		<input  name ="size"  type="text" placeholder="人数规模（人数范围，例如3~4人）"/>
		<input  name ="route"  type="text" placeholder="出游路线"/>
		<input  name ="recommendation"  type="text" placeholder="自我推荐"/>
		<!-- <p>请选择相应保险：（此项选填）</p> -->
		<select style=" height:40px;width:400px;font-size:2em;color:grey;">
				<option value ="NULL">不需要</option>
 				<option value ="RS">人寿意外保险一份/33元</option>
  				<option value ="HD">恒大意外保险一份/23元</option> 				
		</select>		
		<button class="but" type="button" onclick="tosubmit()">提交</button><br>
		</form>
	</div>
	</section>
</div>
</body>
</html>