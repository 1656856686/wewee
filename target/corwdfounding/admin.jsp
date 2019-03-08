<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<!-- 引入jquery -->
	<script type="text/javascript" src="js/jquery-3.2.1/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.js"></script>
	<link rel="stylesheet" href="boot/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="boot/jquery.min.js"></script>
	<script type="text/javascript" src="boot/bootstrap/js/bootstrap.min.js"></script>
	<style>
		#test1 {
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			min-width: 1000px;
			z-index: -10;
			zoom: 1;
			background-color: #fff;
			background-repeat: no-repeat;
			background-size: cover;
			-webkit-background-size: cover;
			-o-background-size: cover;
			background-position: center 0;
		}

		label {
			color: white;
			font-weight: 100;
		}
	</style>
</head>

<body style="width: 100%; height: 755px;">

<div class="layui-carousel" id="test1">
	<div carousel-item>
		<div>
			<img src="img/1234.jpg">
		</div>
		<div>
			<img src="img/e.jpg">
		</div>
		<div>
			<img src="img/790.jpg">
		</div>
		<div>
			<img src="img/8wb.jpg">
		</div>
		<div>
			<img src="img/ccc.jpg">
		</div>

	</div>
</div>
<div style="margin-top: 200px;">
	<center>
		<h1 style="padding-top: 10px">
			<font color="#ffffff">欢迎登陆</font>
		</h1>
		<form class="layui-form" style="padding-top: 20px;">
			<table align="center" style="">
				<tr style="padding: 3px">
					<td style="text-align: center; width: 120px"><h3>用户名</h3></td>
					<td colspan="2">
						<div class="layui-input-inline" style="width: 100%">
							<input type="text" value="aaa" name="admin_name" lay-verify="required"
								   placeholder="请输入用户名" autocomplete="off" class="layui-input">
						</div>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;"><h3>密码</h3></td>
					<td colspan="2">
						<div class="layui-input-inline" style="width: 100%">
							<input type="text" value="123" name="admin_password" lay-verify="required"
								   placeholder="请输入密码" autocomplete="off" class="layui-input">
						</div>
					</td>
				</tr>
				<tr>
					<td style="text-align: center; width: 120px"><h3>验证码</h3></td>
					<td>
						<div class="layui-input-inline">
							<input type="text" value="1111" name="yzm" lay-verify="required"
								   placeholder="请输入验证码" autocomplete="off" class="layui-input">
						</div>
					</td>
					<td width="100px"><img alt="验证码" id="img"
										   src="<%=path%>/admin/yzm.do" onclick="up()"></td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="layui-input-block">
							<input type="button" class="layui-btn" lay-submit
								   lay-filter="formDemo" value="提交">
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</center>
</div>
</body>
<script type="text/javascript">
	window.onload = setyzm;

	function setyzm(){
		$.ajax({
			url:"<%=path%>/admin/getYzm.do",
			type:"post",
			dataType:"json",
			success:function(data){
				yzm = data.yzm;
			}
		})
	}

	function up(){
		var data = new Date();
		$("#img").attr("src","<%=path%>/admin/yzm.do?date="+data);
		setyzm();
	}

	layui.use(['carousel','form'], function(){
		var carousel = layui.carousel;
		var form = layui.form;
		//建造实例
		carousel.render({
			elem: '#test1'
			,width: '100%' //设置容器宽度
			,height: '100%'
			,arrow: 'hover' //始终显示箭头
			//,anim: 'updown' //切换动画方式
		});

		form.on("submit(formDemo)",function(data){
			if(data.field.yzm != yzm){
				layer.alert("验证码输入有误!,"+data.field.yzm+";"+yzm)
				up();
			}else{
				$.ajax({
					url:"<%=path%>/admin/admin.do",
					type:"post",
					data:{"admin_name":data.field.admin_name,"admin_password":data.field.admin_password},
					dataType:"json",
					success:function(data){
						if(data.success){
							location.href="<%=path%>/toIndex.do";
						}else{
							layer.alert(data.msg);
						}
					}
				})
			}
			return false;
		})

	});
</script>
</html>