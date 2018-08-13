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
		<header style="position: fixed;">
			<div style="width: 375px;background-color: #000000;display: flex;justify-content: space-between;height: 50px;">
				<div style="width: 50px;">
					<img src="img/qwe.png" width="40px" style="margin: 5px 0 0 3px;"/>
				</div>
				<div style="line-height: 47px;width: 50px;color: gold;font-size: 18px;font-weight: 200;text-align: center;">
					消息
				</div>
				<div class="jia" style="width: 50px;">
					<!--球-->
					<img src="img/Screenshot_2018-06-25-09-11117-63.png" width="30px" style="margin: 10px 0 0 8px;"/>
				</div>
			</div>
		</header>
			<div style="height: 50px;"></div>
			
			
		<section style="overflow-y:scroll">
			<input class="inpp" type="text" placeholder="  搜索"/>
			<!--消息提示部分-->
			<div class="item" style="display: flex;position: relative;margin-top:10px;width: 374px;height: 70px;border-bottom: 0.5px solid lightgray;overflow: hidden;">
				
				<div class="item-content" style="display: flex;justify-content: space-between;">
					<div style="width: 65px;margin-right: 10px;">
						<div style="border-radius:50%;width: 52px;height: 52px;margin: 6px 0 0 5px;overflow: hidden;">
						<!--头像-->
							<img src="img/0d3c649a033b5bb563eb241831d3d539b600bc25.jpg" width="55px"/>
						</div>
					</div>
					<div style="width: 250px;line-height: 25px;">
						<!--发动态好友的昵称-->
						<div style="font-size: 18px;margin-top: 7px;font-weight: 550;">王小二</div>
						<div style="letter-spacing:1.5px;font-size: 14px;color: gray;color: dimgray;color: red;">我发新动态啦。</div>
					</div>
					<div style="margin-right: 10px;color: gray;width: 40px;font-size: 14px;text-align: right;">
						9:21&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
				</div>
				
				<div class="item-delete" style="height: 50px;width: 90px;color: white;margin-top: 8px;background-color: red;line-height: 50px;text-align: center;">
					删除
				</div>
				
			</div>
			
			<%-- <input type="text" value="${userName}"/> --%>
			
			<!--<div style="height: 1000px;border: 1px solid red;"></div>-->
		</section>
		<footer> 
			<div onclick="middle()" style="margin-bottom: 8px;position: relative;line-height: 62px;text-align: center;display: flex;justify-content: space-around;border-top: 0.5px solid lightgray;height: 50px;">
				<div style="width: 50px;">
					<div><img src="img/23dsad.png" width="30px"/></div>
					<div style="font-size: 13px;color: goldenrod;transform: translateY(-20px);">消息</div>
				</div>
				<!--消息提示-->
				<div class="xiao" style="width: 23px;height: 14px;position: absolute;left: 50px;">
					99+
				</div>
				
				<div onclick="middle1()" style="width: 50px;">
					<div><img src="img/23456 (2).png" width="25px"/></div>
					<div style="font-size: 13px;color: darkgray;transform: translateY(-20px);">联系人</div>
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
		<script src="js/jquery-1.12.4.js" ></script>
		<script type="text/javascript">
		
		function middle1(){
			location.href="qqjsp/middle1.jsp";
		}
		function middle2(){
			location.href="qqjsp/middle2.jsp";
		}
		
		$("#jia").on("tap",function(){
			$(".yc").css({"display":"block"});
			$(".yc").animate({
				top:0,
				width:"100%"
			},200)
		});
		
		$("body").on("click",".inpp",function(){
			location.href="qqjsp/tianjia.jsp";
		})
			
			
	//////////////////////////////////////////////////////////////////////////////////
		$(function(){
			var x_start;  
			var left_start=0; 
			var w = $(".item-delete").width();
			
			//触摸开始
			$(".item").on("touchstart",function(){
				x_start = event.changedTouches[0].clientX;
				left_start = parseInt($(".item-content",this).css("margin-left"));
			});
			
			//触摸中
			$(".item").on("touchmove",function(){
				var x_end = event.changedTouches[0].clientX;
				$(".item-content",this).css({
					marginLeft : left_start + (x_end - x_start)
				});
			});
			
			//触摸结束
			$(".item").on("touchend",function(){
				var x_end = event.changedTouches[0].clientX;
				var len = x_end - x_start;
				var left = left_start;
				if(Math.abs(len) > w/3){
					left = 0;
					if(len<0){
						left = -w;
					}
				}
				$(".item-content",this).animate({
						marginLeft :left
				},300);
			});
		});
	</script>
	<style>
		*{
			margin: 0;
			padding: 0;
		}
		/*点击添加好友*/
		#bj{
			background-color: #000000;
			border: 1px solid red;
			position: fixed;
			top: 55px;
			right: 10px;
			width: 170px;
			height: 250px;
			background:rgba(0,0,0,0.0);/*半透明*/
			display: none;/*隐藏*/
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
	</style>
	</body>
</html>