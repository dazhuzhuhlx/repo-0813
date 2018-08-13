<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/QQ/"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<div style="color: gray;margin:20px 0 20px 0;">﹤返回</div>
		<div style="margin-left: 18px;">
			<div style="font-size: 38px;font-weight: 500;">设置昵称与密码</div>
			<div style="margin-top: 5px;width: 320px;font-weight: 300;margin-bottom: 10px;font-size: 15px;">
				密码由8-16位数字、字母或字符组成，至少含2种以上的字符
			</div>
			 
			 <div class="inp" style="margin-top: 25px;">
			 	<input id="nickName" type="text" placeholder=" 昵称"/>
			 </div>
			 
			 <div class="inp" style="margin-top: 25px;">
			 	<input id="password" type="text" placeholder=" 密码"/>
			 </div>
			
			<div style="transform: translateX(-175px); padding: 25px 0 0 155px; height: 40px; width: 250px;">
				<button class="zc" style="margin-left: 20px;border-radius: 2.5px;height: 46px; width: 300px;border: 1px solid #44a8f2;background-color: #44a8f2; font-size: 20px;border:white;">
					<strong id="denglu1" style="color: white;font-weight: 200;font-size: 20px;">注册</strong>
				</button>
			</div>
		</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
  
	</body>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script>
	$(function(){
		insertUser();
	})
	function insertUser(){
		$("body").on("click",".zc",function(){
			var nickName = $("#nickName").val();
			var password = $("#password").val();
			$.post("user/InserUser.action",{
				nickName:nickName,
				password:password
			},function(res){
				if(res>=1){
					alert("注册成功！");
					location.href="user/ChaUser.action";
				}else{
					alert("注册失败！");
				}
			})
		})
	}
	</script>
	<style>
		.inp{
			width: 302px;
			height: 40px;
			border-bottom: 0.5px solid darkgray;
		}
		.inp>input{
			font-size: 20px;
			width: 300px;
			height: 30px;
			color: darkgray;
			border: none;
			outline: none;
		}
	</style>
</html>