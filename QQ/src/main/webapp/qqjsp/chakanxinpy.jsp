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
		<header style="position: fixed;">
			<div style="font-size: 18px;line-height: 47px;color: gold;width: 375px;background-color: #000000;display: flex;justify-content: space-between;height: 50px;">
				<div onclick="lianxr()" style="width: 90px;">
					&nbsp;&nbsp;《 联系人
				</div>
				<div style="width: 60px;font-weight: 200;text-align: center;">
					新朋友
				</div>
				<div onclick="tianj()" class="jia" style="width: 50px;">
					添加
				</div>
			</div>
		</header>
		<section>
			<div style="height: 50px;"></div>
			<div style="display:flex;justify-content:space-between;width: 373px;height: 30px;line-height: 30px;background-color: ghostwhite;color: gray;font-size: 14px;font-weight: 200;">
				<div>&nbsp;&nbsp;好友通知</div>
				<div><button id="qkong" style="background-color: ghostwhite;color: red;width: 100px">清空通知</button>&nbsp;&nbsp;</div>
			</div>
			<div class="index-haoyousq-1"></div>
			<div class="index-haoyousq-2"></div>
			<div class="index-haoyousq-3"></div>
			<div class="index-haoyousq-4"></div>
		</section>
	</body>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script>
	
	$(function(){
//		等待别人同意

		 $.getJSON("user/insertFriendapply_1.action",{},function(data){
			// alert(JSON.stringify(data)); 
			/* console.log(data); */
			/* 清空上一次追加的东西 */
			 $(".index-haoyousq-1").empty();
			 $.each(data,function(){
				$(".index-haoyousq-1").append('<div style="margin-top:3px;border-bottom: 0.5px solid darkgray;width: 373px;height:84px;display: flex;">\
						<div style="width: 65px;margin-right: 10px;">\
						<div style="border-radius:50%;width: 52px;height: 52px;margin: 15px 0 0 10px;overflow: hidden;">\
							<img src="img/bj-2.jpg" width="55px"/>\
						</div>\
					</div>\
					<div style="width: 230px;height: 64px;margin: 8px 0 0 0;">\
						<div style="margin-bottom: 5px;font-size: 16px;font-weight: 500;">\
							二狗\
						</div>\
						<div style="display: flex;">\
							<div style="margin-top: 3px;border-radius: 2.5px;width: 28px;height: 13px;line-height: 13px;color: white;background-color: lightskyblue;font-size: 10px;">&nbsp;♂18</div>\
							<div style="color: darkgray;font-size: 14px;">&nbsp;'+this.pasvuserId+'</div>\
						</div>\
						<div style="color: darkgray;font-size: 14px;margin-top: 4px;">\
							来源：QQ号查找\
						</div>\
					</div>\
					<div style="line-height: 83px;font-size: 17px;color: red;width:150px;">\
						等待对方同意...\
					</div>\
				</div>')
			})  ;
			
		})  ;
		
		
//		显示别人给我发送的好友请求   是否同意
		
		 $.getJSON("user/insertFriendapply_2.action",{},function(data){
				// alert(JSON.stringify(data)); 
				/* console.log(data); */
				/* 清空上一次追加的东西 */
				 $(".index-haoyousq-2").empty();
				 $.each(data,function(){
					$(".index-haoyousq-2").append('<div class="fff" style="margin-top:3px;border-bottom: 0.5px solid darkgray;width: 373px;height:84px;display: flex;">\
							<input class="applyId" type="hidden" value=" '+this.applyId+' ">\
							<div style="width: 65px;margin-right: 10px;">\
							<div style="border-radius:50%;width: 52px;height: 52px;margin: 15px 0 0 10px;overflow: hidden;">\
								<img src="img/bj-2.jpg" width="55px"/>\
							</div>\
						</div>\
						<div style="width: 230px;height: 64px;margin: 8px 0 0 0;">\
							<div style="margin-bottom: 5px;font-size: 16px;font-weight: 500;">\
								二狗\
							</div>\
							<div style="display: flex;">\
								<div style="margin-top: 3px;border-radius: 2.5px;width: 28px;height: 13px;line-height: 13px;color: white;background-color: lightskyblue;font-size: 10px;">&nbsp;♂18</div>\
								<div style="color: darkgray;font-size: 14px;">&nbsp;'+this.pasvuserId+'</div>\
							</div>\
							<div style="color: darkgray;font-size: 14px;margin-top: 4px;">\
								来源：QQ号查找\
							</div>\
						</div>\
						<div style="font-size: 17px;color: red;width:150px;">\
							<div style="margin-top:12px;"><button class="tong_y" style="margin: 0px 0 0 50px;">同意</button>\
							<div><button class="ju_j" style="background-color: white;color:darkgray;">拒绝</button></div></div>\
						</div>\
					</div>')
				})  ;
				
			})  ;
			
//			互相的好友请求已同意
			
		 $.getJSON("user/insertFriendapply_3.action",{},function(data){
				// alert(JSON.stringify(data)); 
				/* console.log(data); */
				/* 清空上一次追加的东西 */
				 $(".index-haoyousq-3").empty();
				 $.each(data,function(){
					$(".index-haoyousq-3").append('<div style="margin-top:3px;border-bottom: 0.5px solid darkgray;width: 373px;height:84px;display: flex;">\
							<div style="width: 65px;margin-right: 10px;">\
							<div style="border-radius:50%;width: 52px;height: 52px;margin: 15px 0 0 10px;overflow: hidden;">\
								<img src="img/bj-2.jpg" width="55px"/>\
							</div>\
						</div>\
						<div style="width: 230px;height: 64px;margin: 8px 0 0 0;">\
							<div style="margin-bottom: 5px;font-size: 16px;font-weight: 500;">\
								二狗\
							</div>\
							<div style="display: flex;">\
								<div style="margin-top: 3px;border-radius: 2.5px;width: 28px;height: 13px;line-height: 13px;color: white;background-color: lightskyblue;font-size: 10px;">&nbsp;♂18</div>\
								<div style="color: darkgray;font-size: 14px;">&nbsp;'+this.pasvuserId+'</div>\
							</div>\
							<div style="color: darkgray;font-size: 14px;margin-top: 4px;">\
								来源：QQ号查找\
							</div>\
						</div>\
						<div style="line-height: 83px;font-size: 17px;color: gray;width:150px;">\
							<div style="margin:0 0 0 55px;">已同意</div>\
						</div>\
					</div>')
				})  ;
				
			})  ;
			
//			互相的好友请求已拒绝
			
		 $.getJSON("user/insertFriendapply_4.action",{},function(data){
				// alert(JSON.stringify(data)); 
				/* console.log(data); */
				/* 清空上一次追加的东西 */
				 $(".index-haoyousq-4").empty();
				 $.each(data,function(){
					$(".index-haoyousq-4").append('<div style="margin-top:3px;border-bottom: 0.5px solid darkgray;width: 373px;height:84px;display: flex;">\
							<div style="width: 65px;margin-right: 10px;">\
							<div style="border-radius:50%;width: 52px;height: 52px;margin: 15px 0 0 10px;overflow: hidden;">\
								<img src="img/bj-2.jpg" width="55px"/>\
							</div>\
						</div>\
						<div style="width: 230px;height: 64px;margin: 8px 0 0 0;">\
							<div style="margin-bottom: 5px;font-size: 16px;font-weight: 500;">\
								二狗\
							</div>\
							<div style="display: flex;">\
								<div style="margin-top: 3px;border-radius: 2.5px;width: 28px;height: 13px;line-height: 13px;color: white;background-color: lightskyblue;font-size: 10px;">&nbsp;♂18</div>\
								<div style="color: darkgray;font-size: 14px;">&nbsp;'+this.pasvuserId+'</div>\
							</div>\
							<div style="color: darkgray;font-size: 14px;margin-top: 4px;">\
								来源：QQ号查找\
							</div>\
						</div>\
						<div style="line-height: 83px;font-size: 17px;color: gray;width:150px;">\
							<div style="margin:0 0 0 55px;">已拒绝</div>\
						</div>\
					</div>')
				})  ;
				
			})  ;
	}) 
	
	/* 清空好友请求 */
	$("body").on("click","#qkong",function(){
		$.get("user/deleteFriendApply.action",function(data){
			if(data>=1){
				alert("清空成功！");
			}else{
				alert("清空失败！")
			}
		});
	}); 
	
	$("body").on("click",".tong_y",function(){
		var applyId = $(this).closest(".fff").find(".applyId").val();
		$.get("user/updateFriendApply.action",{applyId:applyId},function(data){
			if(data>=1){
				alert("已同意对方的好友请求。")
			}else{
				alert("同意失败。")
			}
		})
	})
	
	$("body").on("click",".ju_j",function(){
		var applyId = $(this).closest(".fff").find(".applyId").val();
		$.get("user/updateFriendApply_2.action",{applyId:applyId},function(data){
			if(data>=1){
				alert("已拒绝对方的好友请求。")
			}else{
				alert("拒绝失败。")
			}
		})
	})
	
	function lianxr(){
		location.href="qqjsp/middle.jsp";
	};
	function tianj(){
		location.href="qqjsp/tianjia.jsp";
	} 
	</script>
	<style>
		*{
			margin: 0;
			padding: 0;
		}
		button{
			width: 45px;
			height: 28px;
			background-color: lightblue;
			color: white;
			border: none;
		}
	</style>
</html>