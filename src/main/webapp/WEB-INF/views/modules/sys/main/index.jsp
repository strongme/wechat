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

	<div class="page-header">
		<h1>
			Hello Wechat<small class="text-right"> - strongme</small>
		</h1>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class=" list-group">
				<a href="#!" class="list-group-item">上传项目到 Github</a> <a href="#!"
					class="list-group-item">修改项目依赖</a> <a href="#!"
					class="list-group-item">添加微信开发接口sdk</a> <a href="#!"
					class="list-group-item active">实现基本的消息验证以及消息回复</a>
			</div>
		</div>
		</div>
		<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
					<c:if test="${not empty url}">
						<div id="scan" class="text-center"></div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${not empty user}">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">用户信息</div>
					<div class="panel-body list-group">
						<a class="list-group-item"><img src="${user.headImgUrl}" style="width:200px;height: 200px;"></a>
						<a class="list-group-item">${user.nickname }</a> 
						<a class="list-group-item">${user.country }</a> 
						<a class="list-group-item">${user.province }</a> 
						<a class="list-group-item">${user.city }</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<script type="text/javascript">
		$(function() {
			if($("#scan")) {
				$("#scan").qrcode({
				    "width": 300,
				    "height": 300,
				    "color": "#3a3",
				    "text": "${url}"
				});
			}
		});
	</script>
</body>
</html>