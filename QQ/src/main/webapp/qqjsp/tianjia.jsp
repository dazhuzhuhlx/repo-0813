<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="/QQ/" />
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<div style="text-align: center;line-height: 46px;font-size: 18px;color:goldenrod;width: 100%;height: 50px;display: flex;justify-content: space-between;background-color: #000000;">
			<div onclick="fanh()" style="width: 70px;height: 50px;">《返回</div>	
			<div style="width: 70px;height: 50px;">添加</div>
			<div style="width: 70px;height: 50px;"></div>
		</div>
		<div class="huan" style="display: flex;justify-content:space-around;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;">
			<div>找人</div>
			<div>找群</div>
			<div style="width: 65px">找公主号</div>
		</div>
		<div style="background-color: whitesmoke;width: 374px;height: 30px;border-bottom: 0.5px solid lightgray;"></div>
		<div class="ipt">
			<div><input id="czhaoyou" type="text" placeholder=" 查找好友" style="font-weight: 200;margin-left:10px;"/></div>
			<div><button id="cz">查找</button></div>
		</div>
		
		<div id="zjia"></div>
		
		
		
		<div style="background-color: whitesmoke;width: 374px;height: 30px;border-bottom: 0.5px solid lightgray;"></div>
		
		<div style="border-bottom: 0.5px solid lightgray;height: 50px;display: flex;line-height: 50px;font-size: 18px;">
			<div style="margin: 8px 0 0 10px;">
				<img src="img/jia1.png" width="25px" />
			</div>
			<div style="margin-left: 15px;">添加手机联系人</div>
			<div style="margin-left: 180px;"><img src="img/sas.png" width="10px"/></div>
		</div>
		
		<div style="border-bottom: 0.5px solid lightgray;height: 50px;display: flex;line-height: 50px;font-size: 18px;">
			<div style="margin: 8px 0 0 10px;">
				<img src="img/jia2.png" width="25px" />
			</div>
			<div style="margin-left: 15px;">扫一扫添加好友</div>
			<div style="margin-left: 180px;"><img src="img/sas.png" width="10px"/></div>
		</div>
		
		<div style="border-bottom: 0.5px solid lightgray;height: 70px;display: flex;font-size: 18px;">
			<div style="margin: 25px 0 0 10px;">
				<img src="img/jia3.png" width="25px" />
			</div>
			<div style="margin:10px 0 0 15px;">面对面发起群聊<br/><span style="font-size: 14px;color: gray;">与身边的朋友进入同一个群聊</span></div>
			<div style="margin:25px 0 0 123px;"><img src="img/sas.png" width="10px"/></div>
		</div>
		
		<div style="border-bottom: 0.5px solid lightgray;height: 70px;display: flex;font-size: 18px;">
			<div style="margin: 25px 0 0 10px;">
				<img src="img/jia4.png" width="25px" />
			</div>
			<div style="margin:10px 0 0 15px;">按条件查询陌生人<br/><span style="font-size: 14px;color: gray;">条件：株洲</span></div>
			<div style="margin:25px 0 0 160px;"><img src="img/sas.png" width="10px"/></div>
		</div>
		
		<div style="border-bottom: 0.5px solid lightgray;height: 50px;display: flex;line-height: 50px;font-size: 18px;">
			<div style="margin: 8px 0 0 10px;">
				<img src="img/jia5.png" width="25px" />
			</div>
			<div style="margin-left: 15px;">查看附近的人</div>
			<div style="margin-left: 195px;"><img src="img/sas.png" width="10px"/></div>
		</div>
		
		<script type="text/javascript" src="js/zepto.js" ></script>
		<script>
			function fanh(){
				location.href="qqjsp/middle.jsp";
			}
			$("body").on("click","#cz",function(){
				var userName = $("#czhaoyou").val();
				if(userName==""){
					alert("查询条件不能为空");
				}else{
					$.getJSON("user/cxuserName.action",{userName:userName},function(data){
						/* alert(JSON.stringify(data)); */
						/* console.log(data); */
						/* 清空上一次追加的东西 */
						$("#zjia").empty();
						if(JSON.stringify(data)=="[]"){
							alert("用户不存在！");
						}else{
							$.each(data,function(){
								$("#zjia").append('<div class="cza" style="border-bottom: 0.5px solid lightgray;height: 50px;display: flex;line-height: 50px;font-size: 16px;">\
									<div style="margin: 3px 0 0 10px;border-radius:50%;overflow:hidden;width: 40px;height: 40px;"><img src="img/bj-3.jpg" width="40px"/></div>\
									<div style="width: 10px"></div>\
									<div>'+this.nickName+'(<span class="userName">'+this.userName+'</span>)</div>\
									<div style="color:#ffffff;width: 100px;text-align: center;">X</div>\
									<div style="margin-top: 13px"><button class="tjiabutton">添加</button></div>\
									<input class="userId" type="hidden" value=" '+this.userId+' " />\
								</div>')
							})
						}
						
					}) 
				}
					
			}) 
			$("body").on("click",".tjiabutton",function(){
				var pasvuserId = $(this).closest(".cza").find(".userName").text();
				$.post("user/insertFriendapply.action",{pasvuserId:pasvuserId},function(data){
					if(data>=1){
						alert("好友请求已发送。");
					}else{
						alert("好友请求发送失败！")
					}
				})
			})
		</script>
		<style>
			*{
				margin: 0;
				padding: 0;
			}
			.huan>div{
				border-bottom: 3px solid cornflowerblue;
				width: 40px;
				line-height: 47px;
				font-size: 16px;
			}
			.ipt{
				display: flex;
				border-bottom: 0.5px solid lightgray;
				height: 50px;
			}
			.ipt>div>input{
				margin-top: 3px;
				font-size: 20px;
				height: 46px;
				width: 310px;
				border: none;
				outline: none;
			}
			 .ipt>div>button{
				width: 50px;
				height: 49px;
				background-color: white;
				border: none;
				font-size: 16px;
				text-decoration: underline;
				outline: none;
			}
		</style>
	</body>
</html>