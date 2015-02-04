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
	<h1>
		<i class="mdi-action-accessibility"></i>&nbsp;Hello Wechat &nbsp;
	</h1>
	<a href="http://localhost:4040" target="_blank"><i
		class="mdi-action-visibility"></i></a>
	<div class="row">
		<div class="col s8 m8 l8 collection card-content">
			<a href="#!" class="collection-item">上传项目到 Github</a> <a href="#!"
				class="collection-item">修改项目依赖</a> <a href="#!"
				class="collection-item">添加微信开发接口sdk</a> <a href="#!"
				class="collection-item">实现基本的消息验证以及消息回复</a>
		</div>
		<div class="col s4 m4 l4">
			<div class="row">
				<div class="col s12 m12 l12">
					<c:if test="${not empty url}">
						<div class="card-panel center-align" id="scan"
							style="width: 300px;height: 300px;"></div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${not empty user}">
		<div class="row">
			<div class="col s12 m7">
				<div class="card">
					<div class="card-image">
						<img src="${user.headImgUrl}"> <span class="card-title">${user.nickname }</span>
					</div>
					<div class="card-content collection">
						<a class="collection-item">${user.country }</a> <a
							class="collection-item">${user.province }</a> <a
							class="collection-item">${user.city }</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<script type="text/javascript">
		$(function() {
			if($("#scan")) {
				$("#scan").qrcode({
				    "width": 260,
				    "height": 260,
				    "color": "#3a3",
				    "text": "${url}"
				});
			}
		});
	</script>
</body>
</html>