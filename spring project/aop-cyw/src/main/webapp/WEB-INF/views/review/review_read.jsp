<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 리뷰 하나씩 상세 페이지 -->

<!Doctype html>
<html lang="ko">

  <head>
    <title>SANTA</title>
    <mytag:design/>
    
    <link href="../resources/main.css" rel="stylesheet">
  </head>
  
  <body id="bo">
  	<mytag:head2/>
  	
  	<main role="main" class="container">
  	
  		<h4 id="title"><c:out value="${review.booktitle }"/></h4>
  	
  		<hr><br>
  		
  		<div id="third">
	      <div id='box-left2'>
	      	<img class="rounded" src="../resources/img/fox.png" height="440px" alt="book" /><br>
	      </div>
	      
	      <div id='box-right2'>
	      	  <h3><c:out value="${review.reviewtitle }"/></h3>
		      <h8 style="font-weight:bold"><c:out value="${review.id }"/></h8><br><br>
		 	  <h7><c:out value="${review.content }"/></h7>
	      </div>
	</div>
	  
	  <div style="text-align:right">
		  <c:url value="/review/modify?id=${review.id }" var="url"/>
		  <c:url value="/review/delete?id=${review.id }" var="url2"/>
		  <a href = "${url }">
		  	<button class="btn btn-outline-danger" type="button" >&nbsp;&nbsp;수정하기&nbsp;&nbsp;</button>
		  </a>
		  <a href = "${url2 }">
		  	<button class="btn btn-danger" type="button" >&nbsp;&nbsp;삭제하기&nbsp;&nbsp;</button>
		  </a>
	  </div>
	  
	</main>
	
	<br><br><hr id = "hrr"><br>
	
	<footer class="container">
 	 <p>&copy; github / yunwoon</p>
    </footer>
	
  </body>
</html>