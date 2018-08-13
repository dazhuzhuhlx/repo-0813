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
		<header style="position: fixed;">
			<div style="width: 375px;background-color: #000000;display: flex;justify-content: space-between;height: 50px;">
				<div style="width: 50px;">
					<img src="img/qwe.png" width="40px" style="margin: 5px 0 0 3px;"/>
				</div>
				<div style="line-height: 47px;width: 50px;color: gold;font-size: 18px;font-weight: 200;text-align: center;">
					消息
				</div>
				<div style="width: 40px;color:gold;line-height: 47px;">
					更多
				</div>
			</div>
		</header>
			<div style="height: 50px;"></div>
			
		<!--中部-->	
		<section style="overflow-y:scroll">
			<input class="inpp" type="text" placeholder="  搜索"/>
			
			<div style="height: 100px;display: flex;justify-content: space-around;">
				<div onclick="middle3()" style="width: 70px;">
					<div style="margin: 25px 0 0 15px;"><img src="img/6789.png" width="35px" /></div>
					<div style="text-align: center;">好友动态</div>
				</div>
				<div style="width: 70px;">
					<div style="margin: 21px 0 0 20px;"><img src="img/324.png" width="28px" /></div>
					<div style="text-align: center;">附近</div>
				</div>
				<div style="width: 70px;">
					<div style="margin: 25px 0 0 18px;"><img src="img/nkj89u0.png" width="33px" /></div>
					<div style="text-align: center;">兴趣部落</div>
				</div>
			</div>
			
			<div style="height: 20px;background-color: whitesmoke;"></div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/321.png" width="25px"/></div>
					<div style="margin-left: 10px;">游戏</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/2212.png" width="25px"/></div>
					<div style="margin-left: 10px;">小视频</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_2018-06-25-09-21-25-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">京东购物</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_2018-06-25-09-21-252-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">企鹅电竞</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/12.png" width="20px"/></div>
					<div style="margin-left: 10px;">鹅漫U品</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_20182-06-25-09-21-252-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">动漫</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_20182-06-25-09-21-32252-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">阅读</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_20182-06-25-09-21-322131125212-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">音乐</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
			<div style="margin-bottom: 10px;line-height: 50px;border-bottom: 0.5px solid lightgray;width: 374px;height: 50px;display: flex;">
				<div style="display: flex;margin: 0 0 0 20px;font-size: 20px;font-weight: 500;width: 200px;">
					<div style="margin-top: 4px;"><img src="img/Screenshot_20182-06-25-0219-21-322131125212-80.png" width="20px"/></div>
					<div style="margin-left: 10px;">直播</div>
				</div>
				<div><img src="img/sas.png" width="10px" style="padding: 19px 0 0 129px;"/></div>
			</div>
			
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
					<div><img src="img/Screenshot_20182-06-25-09-21-3225212-80.png" width="27px"/></div>
					<div style="font-size: 13px;color: goldenrod;transform: translateY(-20px);">动态</div>
				</div>
				<!--消息提示-->
				<div class="xiao" style="width: 8px;height: 8px;position: absolute;left: 337px;">
					
				</div>
			</div>
		</footer>
		<script src="js/jquery-1.12.4.js"></script>
		<script>
			function middle(){
				location.href="qqjsp/middle.jsp";
			}
			
			function middle1(){
				location.href="qqjsp/middle1.jsp";
			}
			
			function middle3(){
				location.href="qqjsp/middle3.jsp";
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
	</body></html>