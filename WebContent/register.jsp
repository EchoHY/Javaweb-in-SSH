<%@page import="com.lq.entity.MyUser"%>
<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<% String path = request.getContextPath(); 
//获取项目根目录路径地址
%>   
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8"/>
<title>回音--注册</title>
<link href="css/1140.css" rel="stylesheet"/>
<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>
<link href="css/styles.css" rel="stylesheet" media="all"/>
</head>
<body>
<header>
  <div class="container clearfix">
    <div class="row">
      <div class="twelvecol last" >	
        <h1 id="title" style="margin-left:300;">加入回音,找到乐趣!</h1>
      </div>
    </div>
  </div> 
</header>
<div id="main">
<div class="container clearfix">
<div class="row">
  <div class="eightcol last">
    <!-- Begin Form -->
      <a  href="<%=path%>/login1.jsp">
      		<button id="return" type="button">&lt;&lt;返回主页</button>
      </a>
    <form id="my-form" action = "" name = "userMyForm">
        <section name = "快速注册">
          <div>
            <h2>旅行,资讯,体育,科技,购物,任你所爱.</h2>
            <p>20秒快速注册,1分钟完整注册</p>
          </div>
          <div><label>*昵称:</label><input id="username" name="nickName" type="text"/>
          	   <!-- <div id = "Nwrong" style="color:red;"></div> -->
          </div>
          <div><label>*密码:</label><input id="pass" name="password" type="password" onfocusin="check2()"/></div>
          <div><label>*确认密码</label><input id="pass2" name="password2" type="password" onfocusout="check()"/></div>
          <div><label>*E-Mail:</label><input id="email" name="Eaddress" data-ideal="required email" type="email"/>
               <!--<div id = "Ewrong" style="color:red;"></div>  -->
          </div>
          <div><label>*QQ:</label><input id="Qnumber" type="tel" name="Qnumber" data-ideal="required phone"/>
          	   <!-- <div id = "Qwrong" style="color:red;"></div> -->
          </div>
          <div><label>*手机:</label><input id="cellphone" type="text" name="cellphone" data-ideal="required url"/>
          	   <!-- <div id = "Pwrong" style="color:red;"></div> -->
          </div>
        </section>

        <section name = "填写详细信息">
          <div>
            <h2>(2/3)个性化设置</h2>
            <p>丰富信息,找到知己</p>
          </div>
          
           <div><label>头像:</label>
          	<label><input type="radio" name="radio" checked=checked/><img  style="height:20px;width:20px;"src="./image_Login/1/1.png"></label>
            <label><input type="radio" name="radio" /><img  style="height:20px;width:20px;"src="./image_Login/1/2.png"></label>
            <label><input type="radio" name="radio"/><img  style="height:20px;width:20px;"src="./image_Login/1/3.png"></label>
            <label><input type="radio" name="radio"/><img  style="height:20px;width:20px;"src="./image_Login/1/4.png"></label>
            <label><input type="radio" name="radio"/><img  style="height:20px;width:20px;"src="./image_Login/1/5.png"></label>
            <label><input type="radio" name="radio"/><img style="height:20px;width:20px;" src="./image_Login/1/6.png"></label>
          </div>
          
          <div id="languages">
            <label>您感兴趣的大学:</label>
            <label><input type="checkbox" name="langs" value="English"/>大连理工大学</label>
            <label><input type="checkbox" name="langs" value="Chinese"/>大连海事大学</label>
            <label><input type="checkbox" name="langs" value="Spanish"/>东北财经大学</label>
            <label><input type="checkbox" name="langs" value="French"/>大连轻工学校</label>
          </div>        
        </section>

        <section name = "更多信息">
          <div>
            <h2>(3/3)个性化设置</h2>
            <p>信息越多,您越丰富.</p>
            
          </div>
          <div><label>性别:</label>
          	<label><input type="radio" name="sex"checked/>保密</label>
            <label><input type="radio" name="sex" />男</label>
            <label><input type="radio" name="sex"/>女</label>
          </div>
          <div><label>家乡:</label>
          <select id="states" name="states">
            <option value="default">&ndash; --省份--&ndash;</option>
            <option value="MS">辽宁</option>
            <option value="AL">北京</option>
            <option value="AK">天津</option>
            <option value="AZ">上海</option>
            <option value="AR">重庆</option>
            <option value="CA">河北</option>
            <option value="CO">河南</option>
            <option value="CT">山东</option>
            <option value="DE">山西</option>
            <option value="DC">安徽</option>
            <option value="FL">江西</option>
            <option value="GA">江苏</option>
            <option value="HI">浙江</option>
            <option value="ID">湖北</option>
            <option value="IL">湖南</option>
            <option value="IN">广东</option>
            <option value="IA">广西</option>
            <option value="KS">云南</option>
            <option value="KY">贵州</option>
            <option value="LA">四川</option>
            <option value="ME">陕西</option>
            <option value="MD">青海</option>
            <option value="MA">宁夏</option>
            <option value="MI">黑龙江</option>
            <option value="MN">吉林</option>
            
            <option value="MO">新疆</option>
            <option value="MT">西藏</option>
            <option value="NE">内蒙古</option>
            <option value="NV">海南</option>
            <option value="NH">福建</option>
            <option value="NJ">甘肃</option>
            <option value="NM">港澳台</option>
            <option value="NY">海外</option>
          </select>
        </div>
       <!-- <div><label>Zip:</label><input type="text" name="zip" data-ideal="zip"/></div>
        <div><label>Comments:</label><textarea id="comments" name="comments"></textarea></div>-->
      </section>
      <div style="color	:red;">"*"为必填项目<hr/></div>
      <div>
      <input type="button" onclick="tosubmit()" value="注册"/>
      <label  id ="Nwrong" style="color:red;">"*"</label> 
      </div>
    </form>
    <div id="test"></div>
    
  <!-- <div  id ="Nwrong" style="color	:red;">"*"<hr/></div> 
  <button onclick="tosubmit()">注册!</button>
  -->
  </div>  
</div>
</div>
</div>
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.idealforms.js"></script>
<script>

function check(){
	var pass=document.getElementById("pass").value;
	var pass2=document.getElementById("pass2").value;
	var passs2=document.getElementById("pass2");
	if(pass!=pass2)
	{
		passs2.style="background:#faebeb;color: #8f2424;border: 1px solid #d14848;";
		document.getElementById("pass").value='';
		document.getElementById("pass2").value='';
		document.getElementById("pass").focus();
		
		}
		if(pass==pass2&&pass2!=''){
			passs2.style="background: #edf7fc;color: #1a719d;border: 1px solid #3ea9df;";
		}
		  
}
		
		
function check2(){			
	var pass=document.getElementById("pass").value;
	var pass2=document.getElementById("pass2").value;
	var passs2=document.getElementById("pass2");
	if(pass!=pass2&&pass!='')
	{
		passs2.style="background:#faebeb;color: #8f2424;border: 1px solid #d14848;";
		document.getElementById("pass").value='';
		document.getElementById("pass2").value='';
		document.getElementById("pass").focus();	
		}	
}


 function tosubmit(){
	 $("#Nwrong").empty();
		$.post(
				"/Youth/myuser/Validate_addMyUser",
			    {
			        nickName:$("input[name='nickName']").val(),
			        Eaddress:$("input[name='Eaddress']").val(),
			        Qnumber:$("input[name='Qnumber']").val(),
			        cellphone:$("input[name='cellphone']").val(),
			    },
			        function(data){
			    		if(data.result == "EaddressExist"){		        		 
			        		$("#Nwrong").html("邮箱已被注册");
			        		return;
			        	}
			    		else if(data.result == "NicknameExist"){		        		
			        		$("#Nwrong").html("昵称已被注册");	
			        		return;
			        	}
			    		else if(data.result == "QnumberExist"){
			        		$("#Nwrong").html("QQ号已存在");
			        		return;
			        	}
			    		else if(data.result== "PnumberExist"){
			        		$("#Nwrong").html("手机号已存在");
			        		return;
			        	}
			    		
			        	//if(data.result==""&&data.result.result2==""&&data.result.result3==""&&data.result.result4==""){
			        	else{	
			        		alert("注册成功");
			        		var form = document.forms[0];
			        		form.action = "/Youth/myuser/addMyUser"
			        		form.method = "post";
			        		form.submit();	       			
			        	}
			        	
			    }
			); 
 }
 var options = {
    onFail: function() {
      alert( $myform.getInvalid().length +' 个必填项目未填写,请检查' )
    },

    inputs: {
      'password': {
        filters: 'required pass',
      },
      'username': {
        filters: 'required username',
      },
      'file': {
        filters: 'extension',
        data: { extension: ['jpg'] }
      },

      'comments': {
        filters: 'min max',
        data: { min: 50, max: 200 }
      },
      'langs[]': {
        filters: 'min max',
        data: { min: 2, max: 3 },
      }
    }
  };
  var $myform = $('#my-form').idealforms(options).data('idealforms');
</script>

</body>
</html>
<!-- <form action = "/Spring-MVC-model/myuser/addMyUser" method = "post" name = "userMyForm">
邮箱：<input type="text" name="Eaddress"/>
<label>${req1}</label><br/>
密码：<input type="text" name="password"/> 
<br/>
昵称：<input type="text" name="nickName"/> 
<label>${req2}</label><br/>
QQ：<input type="text" name="Qnumber"/> 
<label>${req3}</label><br/>
手机号码：<input type="text" name="cellphone"/> 
<br/>
<input type="submit" value="注册" /> 
</form> -->

