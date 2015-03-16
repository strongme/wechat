<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="default" />
<title>Wechat</title>
</head>
<body>
		<div class="jumbotron">
		<h1>
			Hello Succulents <small>开发记录</small>
		</h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class=" list-group">
				<a href="#!" class="list-group-item">上传项目到 Github</a> <a href="#!"
					class="list-group-item">修改项目依赖</a> <a href="#!"
					class="list-group-item">添加微信开发接口sdk</a> 
					<a href="#!" class="list-group-item">实现基本的消息验证以及消息回复</a>
					<a href="#!" class="list-group-item">修改Bootstrap主体为Yeti</a>
			</div>
		</div>
		</div>
		
		<script type="text/javascript">
			$(function() {
				$('ul .nav li').removeClass('active');
				$('.home').addClass('active');
			});
		</script>
</body>
</html>