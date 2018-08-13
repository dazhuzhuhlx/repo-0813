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
		<div class="Background-Image" style="border: 0.5px solid #000;height: 250px;width: 372px;">
			<div style="display: flex;justify-content: space-between;margin-top: 10px;font-size: 18px;color: white;">
				<div>&nbsp;&nbsp;&nbsp;&nbsp;动态</div>
				<div>好友动态</div>
				<div style="display: flex;">
					<div style="margin: 0 18px 0 0;"><img src="img/32edasdxs.png" width="25px"/></div>
					<div class="fass" style="margin-right:10px;"><img src="img/xsa432.png" width="25px"/></div>
				</div>
			</div>
			<!--<div style="display: flex;">-->
				<div>
					<div class="middle2" style="margin: 95px 0 0 25px;border: 1px solid white;width: 65px;height: 65px;border-radius: 50%;overflow: hidden;">
						<img src="img/0d3c649a033b5bb563eb241831d3d539b600bc25.jpg" width="70px"/>
					</div>
				</div>
			<!--</div>-->
			<div style="color: white;display: flex;justify-content: space-around;margin-top: 15px;">
				<div>相册</div>
				<div>说说</div>
				<div>个性化</div>
				<div>小游戏</div>
				<div>小视频</div>
			</div>
		</div>
		
	<!--发说说-->
		<div class="zj"></div>
		
		<div style="height: 200px"></div>
		
		<script type="text/javascript" src="js/zepto.js" ></script>
		<script>
			/* 显示所有自己空间发的说说 */	
			$(function(){
				$.getJSON("user/selectDynamicstate.action",function(data){
					$.each(data,function(){
						$(".zj").append('<div style="height:20px;"></div><div class="kkkkkk"><div style="width: 372px;">\
								<div style="display: flex;">\
								<div style="margin: 10px 0 0 10px;border: 1px solid #000;border-radius:50%;display: flex;overflow: hidden;width: 45px;height: 45px;">\
									<img src="img/0d3c649a033b5bb563eb241831d3d539b600bc25.jpg" width="45px"/></div>\
								<div style="margin: 12px 0 0 10px;"><div style="font-size: 19px;">取个ID太难</div><div>9:00</div></div></div>\
							<div style="font-weight: 300;margin: 10px 0 0 10px;font-size: 18px;width: 354px;word-break: break-all;">'+this.stateText+'<div style="margin: 10px 0 0 0;"><img src="img/bj-3.jpg"/>\
							</div></div></div>\
						<div style="width: 347px;height: 40px;margin:0 10px 0 10px;margin:10px 0 10px 0;">\
							<div style="margin-left: 100px;display: flex;width: 250px;height: 40px;">\
								<div class="zan" style="margin:4px 0 0 60px;"><img src="img/zan.png" width="30px"/></div>\
								<div style="margin:8px 0 0 45px;"><img src="img/plzf.png" width="112px"/></div></div></div>\
						<div style="word-break: break-all;color: darkblue;margin-bottom: 10px;">\
							<img src="img/zan2.png" width="20px" />&nbsp;&nbsp;<span class="re"></span>\
								<input class="stateId" type="hidden" value="'+this.stateId+'"></div>\
						<div class="pl_"></div>\
						<div class="p_l"><input class="commentText" type="text" placeholder=" 评论"/><button class="q_d">确定</button></div></div>');
					});
				});
				
			})
			
			$("body").on("click",".q_d",function(){
				var stateId = $(this).closest(".kkkkkk").find(".stateId").val();
				var commentText = $(".commentText").val();
				$.post("user/insertComment.action",{stateId:stateId,commentText:commentText},function(data){
					alert(data)
				})
			})
		
			$("body").on("click",".zan",function(){
				/* var pasvuserId = $(this).closest(".cza").find(".userName").text(); */
				var stateId = $(this).closest(".kkkkkk").find(".stateId").val();
				$.post("user/insertPraiseRecord.action",{stateId:stateId},function(data){
				})
			})
			
			$(function(){
				setTimeout("a()",1000);
				setTimeout("b()",1000);
			}) 
			
			function b(){
				var stateId = $(".stateId").val();
				$.getJSON("user/selectComment.action",{stateId:stateId},function(data){
					$.each(data,function(){
						$(".pl_").append('<div style="margin-bottom: 10px;">'+this.userId+'：'+this.commentText+'</br>');
					})
				})
			}
			
			function a(){
				var stateId = $(".stateId").val();
				$.getJSON("user/selectPraiseRecord.action",{stateId:stateId},function(data){
					$.each(data,function(){
						$(".re").append('<span>'+this.userid+'，</span>');
					});
				});
			}
			
			$("body").on("click",".fass",function(){
				location.href="qqjsp/tfashuoshuo.jsp";
			})
			$("body").on("click",".middle2",function(){
				location.href="qqjsp/middle2.jsp";
			})
		</script>
		<style>
			*{
				margin: 0;
				padding: 0;
			}
			.Background-Image{
				/*背景图*/
				background:url(img/bj-4.jpg) no-repeat;
				background-size:cover;
			}
			.p_l>input{
				width: 320px;
				height: 28px;
				background-color: whitesmoke;
				border: none;
				margin-left: 5px;
			}
			.q_d{
				width: 40px;
				height: 25px;
				border: none;
				margin-left: 3px;
			}
		</style>
	</body>
</html>