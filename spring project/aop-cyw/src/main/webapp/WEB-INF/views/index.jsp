<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!Doctype html>
<html lang="ko">
  <head>
    <title>SANTA</title>
    <mytag:design/>
    
    <link href="resources/main.css" rel="stylesheet">
  </head>
  
  <body>
    <mytag:head/>

	<main role="main" class="container">
	  <div class="starter-template">
	    <h1>𓆉𓆝𓆟𓆜𓆞𓆡𓆜𓇼𓈒</h1>
	    <p class="lead">Welcome, Bookworm!<br>Use *coronaRed* site for overcoming coronaBlue.</p>
	  </div>
	</main>
	<div style="height:60px"></div>
	
	<div id="third">
	      <div id='box-left'>
	      	<img src="resources/img/book.png" height="300px" alt="book page"
	      		onclick = "location.href = 'http://localhost:8080/yunweb/book/list'" />
	      	<h3>BOOK</h3>
	      </div>
	      
	      <div id='box-center'>
	      	<img src="resources/img/review.png" height="300px" alt="review page"
	      		onclick = "location.href = 'http://localhost:8080/yunweb/review/list'" />
	      	<h3>REVIEW</h3>
	      </div>
	      
	      <div id='box-right'>
	      	<img src="resources/img/news.png" height="300px" alt="news page"
	      		onclick = "location.href = 'http://localhost:8080/yunweb/news/list'" />
	      	<h3>NEWS</h3>
	      </div>
	</div>
	  
  </body>
</html>
