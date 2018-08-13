<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="/QQ/"/>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<div style="width: 357px;height: 650px;">
			<div class="inp">
			  <input id="userName" type="text" placeholder="QQ号/手机号/邮箱号" style="transform: translate(28px,180px);"/>
			   <input id="password" type="text" placeholder="密码" style="transform: translate(28px,197px);"/>
			</div>
			
			<button style="transform: translate(7px,222px);margin-left: 20px;border-radius: 2.5px;height: 46px; width: 304px;border: 1px solid #44a8f2;background-color: #44a8f2; font-size: 20px;border:white;">
				<strong id="denglu1" style="color: white;font-weight: 200;font-size: 20px;">登录</strong>
			</button>
		</div>
		
		<!-- <div style="width: 80px;transform: translate(265px,-312px);font-size: 14px;background-color: rgba(100,100,100,0);color: #44a8f2;">
			新用户注册
		</div> -->
	</body>
	<script src="js/jquery-1.12.4.js"></script>
	<script>
		$(function() {
			$("body").on("click","#denglu1",function(){
				var userName = $("#userName").val();
				var password = $("#password").val();
				$.post("user/selectUser.action",{userName:userName,password:password},function(data){
					/* alert(JSON.stringify(data));*/
					if(data=="[]"){
						alert("登录失败！");
					}else{
						location.href="qqjsp/middle.jsp";
					}
				})
			})
		})
	</script>
	<style>
		/**{
			margin: 0;
			padding: 0;
		}*/
		.inp>input{
			width: 220px;
			height: 30px;
			line-height: 30px;
			font-size:20px;
			color: white;
			/*opacity: 0.1;*/
			background-color: rgba(255,255,255,.0);
			border: none;
			outline: none;
			margin-left: 10px;
		}
		
		::-webkit-input-placeholder { /* WebKit browsers */ 
			color: white; 
		} 
		div{
			background: url(img/zc4.png) no-repeat;
			background-size:cover;
		}
 
	</style>
</html>