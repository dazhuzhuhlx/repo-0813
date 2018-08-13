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
		<header style="position: fixed;">
			<div style="width: 375px;background-color: #000000;display: flex;justify-content: space-between;height: 50px;">
				<div style="width: 50px;">
					<img src="img/qwe.png" width="40px" style="margin: 5px 0 0 3px;"/>
				</div>
				<div style="line-height: 47px;width: 50px;color: gold;font-size: 18px;font-weight: 200;text-align: center;">
					消息
				</div>
				<div style="width: 50px;">
					<img src="img/Screenshot_2018-06-25-09-11117-63.png" width="30px" style="margin: 10px 0 0 8px;"/>
				</div>
			</div>
		</header>
			<div style="height: 50px;"></div>
			
		<!--中部-->	
		<section style="overflow-y:scroll">
			<input class="inpp" type="text" placeholder="  搜索好友"/>
			<div style="margin:10px 0 0px 0;">
				<img src="img/Screenshot_2018-06-25-09-21-43560.png" width="374px" />
			</div>
			<div onclick="xinpy()" style="line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;">新朋友</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 275px;"/></div>
			</div>
			<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">创建群聊</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div class="gr">
				<div style="border-bottom: 3px solid #000;">好友</div>
				<div>群聊</div>
				<div>设备</div>
				<div>通讯录</div>
				<div>公主号</div>
			</div>
	<!-- 增加分组 -->
			<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 40px;display: flex;">
				<div style="display:flex;margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">
					<div><button class="z_j" style="margin-top: 11px;border: none;background-color: white;width: 60px">增加分组</button></div>
					<div style="margin: 9px 0 0 10px;color: "><input class="z_m" type="text" placeholder="请输入组名" style="border: whitesmoke;height:25px;outline: none;"/></div>
				</div>
			</div>
	<!--分组 1-->
			<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">
					默认列表
				</div>
				<div style="padding: 0px 0 0px 120px;font-size:14px;color: gray;"></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 23px;border-bottom: 0.5px solid lightgray;width: 374px;height: 30px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 14px;font-weight: 500;width: 200px;">
					好友ID：111
			</div>
			
			<div class="fz_">
			
			</div>
			
			<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">
					
				</div>
				<div style="padding: 0px 0 0px 120px;font-size:14px;color: gray;">0/0</div>
			</div>
	<!--分组 2-->
			<!--<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">
				<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">
					Family
				</div>
				<div style="padding: 0px 0 0px 120px;font-size:14px;color: gray;">0/0</div>
			</div> -->
			
			
		</section>
		
		<!--尾部-->
		<footer> 
			<div onclick="middle()" style="margin-bottom: 8px;position: relative;line-height: 62px;text-align: center;display: flex;justify-content: space-around;border-top: 0.5px solid lightgray;height: 50px;">
				<div style="width: 50px;">
					<div><img src="img/32134254.png" width="30px"/></div>
					<div style="font-size: 13px;color: darkgray;transform: translateY(-20px);">消息</div>
				</div>
				<!--消息提示-->
				<div class="xiao" style="width: 23px;height: 14px;position: absolute;left: 50px;">
					99+
				</div>
				
				<div onclick="middle1()" style="width: 50px;">
					<div><img src="img/Screenshot_2018-06-25-09-21-42-60.png" width="25px"/></div>
					<div style="font-size: 13px;color: goldenrod;transform: translateY(-20px);">联系人</div>
				</div>
				<!--消息提示-->
				<div class="xiao" style="width: 15px;height: 15px;position: absolute;left: 145px;">
					1
				</div>
				
				
				<div style="width: 50px;">
					<div><img src="img/dsaf765.png" width="32px"/></div>
					<div style="font-size: 13px;color: darkgray;transform: translateY(-20px);">看点</div>
				</div>
				
				<div onclick="middle2()" style="width: 50px;">
					<div><img src="img/sdada.png" width="27px"/></div>
					<div style="font-size: 13px;color: darkgray;transform: translateY(-20px);">动态</div>
				</div>
				<!--消息提示-->
				<div class="xiao" style="width: 8px;height: 8px;position: absolute;left: 337px;">
					
				</div>
			</div>
		</footer>
		<script src="js/jquery-1.12.4.js"></script>
		<script>
			/*  $(function(){
				$.getJSON("user/selectPasvuserId.action",function(data){
					alert(data)
					$.each(data,function(){
						$(".haoyou").append('<div style="margin-bottom: 10px;line-height: 23px;border-bottom: 0.5px solid lightgray;width: 374px;height: 30px;display: flex;">\
							<div style="margin: 0 0 0 20px;font-size: 14px;font-weight: 500;width: 200px;">\
								好友ID：'+this.pasvuserId+'</div>\
						</div>')
					})
				})
			 }) */
		
			/* 添加分组 */
			$("body").on("click",".z_j",function(){
				var groupingName = $(".z_m").val();
				alert(groupingName);
				$.post("user/insertGrouping.action",{groupingName:groupingName},function(data){
					alert(data)
				})
			})
			
			/* 显示所有分组 */
			$(function(){
				$.ajax({
					url:"user/selectGrouping.action",
					data:{},
					type:"get",
					dataType:"json",
					contentType:"application/json;charset=UTF-8",
					"success":function(data){
						console.log(data);
						$(".fz_").empty();
						$.each(data,function(){
							$(".fz_").append('<div style="margin-bottom: 10px;line-height: 55px;border-bottom: 0.5px solid lightgray;width: 374px;height: 55px;display: flex;">\
									<div style="margin: 0 0 0 20px;font-size: 18px;font-weight: 500;width: 200px;">'+this.groupingName+'</div>\
								<div style="padding: 0px 0 0px 120px;font-size:14px;color: gray;">0/0</div>\
							</div>');
						})
					}
				});
			})
			
			
			
			function middle(){
				location.href="qqjsp/middle.jsp";
			}
			function middle2(){
				location.href="qqjsp/middle2.jsp";
			}
			function xinpy(){
				location.href="qqjsp/chakanxinpy.jsp";
			}
		</script>
		<style>
		*{
			margin: 0;
			padding: 0;
		}
		footer{
			background: white;
			position: fixed;
		    right: 0;
		    bottom: 0;
		    left: 0;
		    right: 0;
		    z-index: 999;
		}
		.xiao{
			border: 1px solid red;
			background-color: red;
			border-radius: 10px 10px 10px 10px;
			color: white;
			font-size: 12px;
			line-height: 15px;
		}
		.inpp{
			margin: 10px 0 0 8px;
			width: 355px;
			height: 32px;
			background-color: whitesmoke;
			border: none;
			border-radius: 2.5px;
			font-size: 17px;
		}
		::-webkit-input-placeholder { /* WebKit browsers */ 
			color: darkgray; 
		}
		.gr{
			display: flex;
			justify-content: space-around;
			height: 50px;
			line-height: 50px;
			font-weight: 500;
			color: dimgray;
			border-bottom: 0.5px solid lightgray;
		}
		</style>
	</body>
</html>