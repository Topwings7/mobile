<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script>
	$(function() {
		$("button").click(function() {
			$.ajax({
				url : "http://localhost:8080/top/json",
				success : function(rs) {
					var glist = rs;
					for (var i = 0; i < glist.length; i++) {
						console.log(glist[i].img1);
						console.log(glist[i].img2);
						console.log(glist[i].img3);
					}
				}
			})
		})
	})
</script>
</head>
<style>
	*{list-style: none;}
	#section { width: 1200px; margin: 0 auto; height: 300px;}
	#section li{ width: 33%; height: 100%; float: left;}
</style>
<body>

	<button>json호출</button>
	
	
	<c:forEach var="gundam" items="${salesList }">
 	<div id="section">
		<ul>
			<li><img src="${conPath }/imgs/${gundam.img1 }" alt="없다" width="300px" height="300px">
			</li>
			<li><img src="${conPath }/imgs/${gundam.img2 }" alt="없다" width="300px" height="300px">
			</li>
			<li><img src="${conPath }/imgs/${gundam.img3 }" alt="없다" width="300px" height="300px">
			</li>
		</ul>
	</div>	 
	</c:forEach>
</body>
</html>