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
		<!--头部 第一行 -->
		<div class="to-p">
			<div class="qxiao" style="margin-left: 10px;">
				取消
			</div>
			<div style="display: flex;justify-content: space-around;width: 110px;font-size: 18px;">
				<div style="border-bottom: 3px solid gold;"><strong>说说</strong></div>
				<div style="border-bottom: 3px solid gold;"><strong>秘密</strong></div>
			</div>
			<div class="fb" style="margin:1px 10px 0 0;">
				<button>发布</button>
			</div>
		</div>
		<!--写说说部分-->
		<textarea class="stateText">分享新鲜事...</textarea>
		<div style="width: 373px;height: 171px;">
			<img src="img/Screenshot_2018-06-29-17-18-36-94.png" width="120px" style="margin-left: 10px;"/>
			<img src="img/432sdfd.png" width="353px" style="margin: 10px 0 10px 10px;"/>
		</div>
		<div style="width: 373px;height: 290px;background-color: whitesmoke;">
			<img src="img/12345hgf.png" width="373px"/>
		</div>
		<script type="text/javascript" src="js/zepto.js" ></script>
		<script>
			$("body").on("click",".fb",function(){
				var stateText = $(".stateText").val();
				$.post("user/insertDynamicstate.action",{stateText:stateText},function(data){
					alert(data)
				})
			})
			$("body").on("click",".qxiao",function(){
				location.href="qqjsp/middle3.jsp";
			})
		</script>
		<style>
			*{
				margin: 0;
				padding: 0;
			}
			.to-p{
				border-bottom: 0.5px solid lightgray;
				display: flex;
				justify-content: space-between;
				height: 50px;
				text-align: center;
				line-height: 48px;
				font-weight: 500;
			}
			.to-p>div>button{
				width: 60px;
				height: 30px;
				border: none;
				background-color: whitesmoke;
				color: darkgray;
				font-size: 18px;
				border-radius: 2.5px;
			}
			textarea{
				margin: 10px 10px 0 10px;
				width: 353px;
				height: 140px;
				font-size: 18px;
				border: none;
				outline: none;
			}
		</style>
	</body>
</html>