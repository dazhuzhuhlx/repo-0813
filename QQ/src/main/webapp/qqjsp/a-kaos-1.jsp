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
		<table>
			<tr>
				<td>编号</td>
				<td>标题</td>
				<td>价格</td>
				<td></td>
			</tr>
		</table>
		<table class="selectBook">
		
		</table>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
  
	</body>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script>
	$(function(){
		$.getJSON("user/selectBook.action",{},function(data){
			$.each(data,function(){
				$(".selectBook").append('<tr>\
						<td>'+this.bookid+'</td>\
						<td>'+this.title+'</td>\
						<td>'+this.price+'</td>\
						<td>购买</td>\
					</tr>');
			});
		});
	})
	</script>
	<style>
	</style>
</html>