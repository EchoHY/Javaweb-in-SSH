<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); 
//获取项目根目录路径地址
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ECHO</title>
<link rel="stylesheet" href="css/styletwo.css">
<link rel="stylesheet" href="css/applicate.css">
<script type="text/javascript">
var flag = 0;  

function previewImage(file, url,id) {  
    var MAXWIDTH = 120;  
    var MAXHEIGHT = 120;  
    if (file.files && file.files[0]) {  
        var img = document.getElementById(url);  
        img.onload = function() {  
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);  
            img.width = rect.width;  
            img.height = rect.height;  
            img.style.marginTop = rect.top + 'px';  
        };  
        var reader = new FileReader();  
        reader.onload = function(evt) {  
            img.src = evt.target.result;  
        };  
        reader.readAsDataURL(file.files[0]);  
    } else {  
        file.select();  
    }  
    getImageSize(document.getElementById(id));  
};
function checkFileExt(filename)
{
 		var flag = false; //状态
 		var arr = ["jpg","png","gif"];
 		//var arr = ["jpg","png","gif","JPG","PNG","GIF"];
 		//取出上传文件的扩展名
 		var index = filename.lastIndexOf(".");
 		var ext = filename.substr(index+1).toLowerCase();
 		//循环比较
		 for(var i=0;i<arr.length;i++)
 			{
  			if(ext == arr[i])
  			{
   				flag = true; //一旦找到合适的，立即退出循环
  				 break;
  				}
 			}
 		//条件判断
 		if(flag){
  			tosubmit();
 			}
 		else{
  			alert("文件名不合法");
 			}
}
function checkfirst(file, url,filename){
	var flag = false; //状态
		var arr = ["jpg","png","gif"];
		//var arr = ["jpg","png","gif","JPG","PNG","GIF"];
		//取出上传文件的扩展名
		var index = filename.lastIndexOf(".");
		var ext = filename.substr(index+1).toLowerCase();
		//循环比较
	 for(var i=0;i<arr.length;i++)
			{
			if(ext == arr[i])
			{
				flag = true; //一旦找到合适的，立即退出循环
				 break;
				}
			}
		//条件判断
		if(flag){
			previewImage(file, url);
			}
		else{
			alert("文件名不合法");
			}
}
/*function getImageSize(obj) {  
    var _file = document.getElementById("uploadPath");  
    var i = _file.value.lastIndexOf('.');  
    var len = _file.value.length;  
    var extEndName = _file.value.substring(i + 1, len);  
    var extName = "GIF,BMP,PNG,JPG,JPEG";  
    if (extName.indexOf(extEndName.toUpperCase()) == -1) {  
        alert("您只能输入" + extName + "格式的文件");  
        flag = 1;  
    } else {  
        var url, image;  
        if (obj.files) {  
            if (window.navigator.userAgent.indexOf("MSIE") >= 1) {  
                obj.select();  
                url = document.selection.createRange().text;  
            }  
            url = window.URL.createObjectURL(obj.files[0]);  
        } else {  
            url = obj.value;  
            url = "file:///" + url;  
        }  
        image = new Image();  
        image.src = url;  
        image.onload = function() {  
            if (image.width < 120 || image.height < 120) {  
                alert("请上传尺寸大于120*120的图片！");  
                flag = 2;  
            }else{  
                flag = 0;  
            }  
        };  
    }  
}; 
*/
		
</script>
</head>
<body>
<div style="background-color:#2BC3CE;height:100%">
	<section class="panel home" data-section-name="home">
  	<div class="inner">
		<div class="title">为驴友而生</div><br/>
    	<h1>大工学生要出游！</h1>
		<h1>Step2：上传玉兰卡与身份证照片</h1>		<br/><br/>
    	<form  enctype="multipart/form-data" action="<%=path%>/upload/uploading" method="post"> 
			<p>请上传玉兰卡正面照片，文件名以“姓名+学号证”</p>
			<p>图片格式仅限jpg/png/gif</p>
			<img src="<%=path%>/img/whiteback.jpg" name="img" id="img" width="60px;" height="60px;" align="center" style="margin-top: 5px; margin-bottom: 5px;"/>
			<input type="file" id="uploadPath" name="files" accept="image/gif,image/png,image/bmp,image/jpeg" onchange="checkfirst(this,'img',this.value,'uploadPath')" /> 
			<p>请上传身份证正面照片，文件名以“姓名+身份证”</p>
			<p>图片格式仅限jpg/png/gif</p>
			<img src="<%=path%>/img/whiteback.jpg" name="img2" id="img2" width="60px;" height="60px;" align="center" style="margin-top: 5px; margin-bottom: 5px;"/>
			<input type="file" id="uploadPath2" name="files" accept="image/gif,image/png,image/bmp,image/jpeg" onchange="checkfirst(this,'img2',this.value,'uploadPath2')" /> 
			<input type="submit"  class = "but" value="上传照片" />  
			<br/><br/><br/>	<br/><br/><br/>	<br/><br/><br/>	<br/>
		</form>
	</div>
	</section>
</div>
</body>
</html>