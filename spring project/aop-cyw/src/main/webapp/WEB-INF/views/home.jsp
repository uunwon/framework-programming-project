<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>SANTA</title>
	<link rel="stylesheet" href="resources/home.css" type="text/css"/>
</head>

<body>
	<div id = "img">
		<div>
			<h1 style="font-size:x-large">y u n w o n</h1>
			<img src="resources/img/home.png" height="270px" alt="welcome page"
			onclick = "location.href = 'http://localhost:8080/yunweb/login'" />
			<h1>C O R O N A　R E D</h1>
		</div> 
	</div>
</body>
</html>