<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="<c:url value="/resources/common/jquery-1.11.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/common/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/common/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />

<style type="text/css">
#searchDiv {
	margin: 40px 40px 40px 40px;
	text-align: center;
}

#searchInput {
	margin: auto;
	display: inline;
	width: 60%;
}

#searchButton {
	margin-left: 30px;
	margin-right: 30px;
}

</style>
<title>Home</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, world!</h1>
			<div id='searchDiv'>
				<input id='searchInput' type="text" class="form-control"
					placeholder="Search your courses" /> 
					<a id="searchButton" class="btn btn-primary btn-lg" role="button">Search</a>
			</div>
		</div>
	</div>

</body>
</html>
