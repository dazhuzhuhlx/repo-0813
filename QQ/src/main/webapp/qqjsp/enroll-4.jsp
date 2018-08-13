<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/QQ/" />
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<div style="color: gray;margin:20px 0 20px 0;">﹤返回</div>
		<div style="display: flex;margin-top:40px;">
			<div style="margin: 5px 20px 0 30px;"><img src="img/QQ截图20180625163703.png" width="50px" /></div>
			<div style="font-size: 40px;">注册成功</div>
		</div>
		<div style="color: gray;font-size: 22px;margin: 50px 0 0px 32px;">你的QQ号为：</div>
		<div style="margin: 30px 0 0px 32px;font-size: 40px;">2573</div>
		<div style="margin: 30px 0 0 0;color:dimgray;font-size: 14px;">该QQ号与手机号<span style="color: orangered;">+86&nbsp;18188930536</span>绑定，你可以通过短<br/>信验证登录QQ手机版</div>
		<div style="transform: translateX(-160px); padding: 25px 0 0 155px; height: 40px; width: 280px;">
			<button onclick="dl()" style="margin-left: 20px;border-radius: 2.5px;height: 46px; width: 330px;border: 1px solid #44a8f2;background-color: #44a8f2; font-size: 20px;border:white;">
				<strong id="denglu1" style="color: white;font-weight: 200;font-size: 20px;">登录</strong>
			</button>
		</div>
		<div style="width: 100%;margin:30px 0px 0 65px;color: slategray;">三天内未登录，该QQ号将被回收</div>
	</body>
	<script src="js/jquery-1.12.4.js"></script>
	<script>
		function dl(){
			location.href="qqjsp/landing-5.jsp"
		} 
	</script>
</html>