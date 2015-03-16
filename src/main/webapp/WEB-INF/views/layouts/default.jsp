<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/includes/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html style="overflow-x:hidden;overflow-y:auto;">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title><sitemesh:title/> - Powered By Strongme</title>
		<%@include file="/WEB-INF/views/includes/head.jsp" %>
		<sitemesh:head/>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/includes/nav.jsp" %>
		<div class="container">
			<sitemesh:body/>
		</div>
</body>
</html>
