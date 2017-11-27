<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); 
//获取项目根目录路径地址
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员Login</title>
</head>

<script type="text/javascript" src="../js/jquery-3.1.1.js" ></script>

<script type="text/javascript">
function validate(){
	$.post(
			"/Youth/myadmin/validate",
		function(data){
			if(data.result == "islogined"){
				window.location.href='/Youth/myApp/getAll';
			}
			else{
					alert("亲！请先登录");
					return;	
			}			
		}
	);
}
function validate2(){
	$.post(
		"/Youth/myadmin/validate2",
		function(data){
			if(data.result == "islogined"){
				window.location.href='/Youth/myReply/getAll';
			}
			else{
					alert("亲！请先登录");
					return;	
			}			
		}
	);
}
function validate3(){
	$.post(
		"/Youth/myadmin/validate3",
		function(data){
			if(data.result == "islogined"){
				window.location.href='/Youth/myPass/getAll';
			}
			else{
					alert("亲！请先登录");
					return;	
			}			
		}
	);
}
</script>
<body>
<table border="1">
  <tr>
    <th>管理员界面</th>
  </tr>
  <tr>
    <th>
    	<div>
		<a href="javascript:validate()">进入管理员界面1——查看Applications</a>
		</div>
	</th>
  </tr>
  <tr>
    <td>
    	<div>
			<a href="javascript:validate2()">进入管理员界面2——查看回复表Replies</a>
		</div>
    </td>
  </tr>
  <tr>
    <th>
    	<div>
			<!-- <a href="javascript:validate3()">进入管理员界面3——查看ALLPass的表</a> -->
			进入管理员界面3——查看ALLPass的表
		</div>	
    </th>
  </tr>
</table>





</body>
</html>