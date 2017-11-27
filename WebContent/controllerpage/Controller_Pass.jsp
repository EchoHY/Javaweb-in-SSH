<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% String path = request.getContextPath(); 
//获取项目根目录路径地址
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核回复表页面</title>
</head>
<body>
<div><a href="<%=path %>/controllerpage/Controller.jsp">返回上级管理员界面</a></div>
<h1>已经审核的申请表</h1>
<table border="1">  
        <tbody>  
            <tr>  
                <th>姓名</th>  
                <th>性别</th>  
                <th>学号</th>  
                <th>身份证号</th> 
               	<th>目的地</th>  
                <th>出行方式</th> 
                <th>出行时间</th> 
                <th>金额预算</th>
                <th>规模</th>  
                <th>路线</th>
                <th>保险</th> 
                <th>审核</th>	
            </tr>  
            <c:if test="${!empty appList }">  
                <c:forEach items="${appList}" var="app">  
                    <tr>  
                        <td>${app.username}</td>  
                        <td>${app.sex}</td> 
                        <td>${app.stunum}</td>  
                        <td>${app.mycard}</td>
                        <td>${app.destination}</td>  
                        <td>${app.tripway}</td>
                        <td>${app.triptime}</td>
                        <td>${app.budget}</td>  
                        <td>${app.size}</td> 
                        <td>${app.route}</td>  
                        <td>${app.insurance}</td>  
                        <td>${app.verification}</td> 
                        <td>  
                            <a href="<%=path %>/myApp/updateY?id=${app.id }">审核通过</a>
                            <a href="<%=path %>/myApp/updateN?id=${app.id }">不通过</a> 
                            <a href="<%=path %>/myApp/del?id=${app.id }">删除</a>  
                        </td>  
                    </tr>               
                </c:forEach>  
            </c:if>  
        </tbody>  
    </table>  
<h1>已经审核的回复表</h1>
<table border="1">  
        <tbody>  
            <tr>  
                <th>姓名</th>  
                <th>性别</th>  
                <th>学号</th>  
                <th>身份证号</th> 
               	<th>目的地</th>   
                <th>发起人姓名</th> 
                <th>审核</th>	
            </tr>  
            <c:if test="${!empty replyList }">  
                <c:forEach items="${replyList}" var="reply">  
                    <tr>  
                        <td>${reply.username}</td>  
                        <td>${reply.sex}</td> 
                        <td>${reply.stunum}</td>  
                        <td>${reply.mycard}</td>
                        <td>${reply.destination}</td>  
                        <td>${reply.organisername}</td>
                        <td>${reply.verification}</td> 
                        <td>  
                            <a href="<%=path %>/myReply/updateY?id=${reply.id }">审核通过</a>
                            <a href="<%=path %>/myReply/updateN?id=${reply.id }">不通过</a> 
                            <a href="<%=path %>/myReply/del?id=${reply.id }&req=huifu">删除</a>  
                        </td>  
                    </tr>               
                </c:forEach>  
            </c:if>  
        </tbody>  
    </table>  

</body>
</html>