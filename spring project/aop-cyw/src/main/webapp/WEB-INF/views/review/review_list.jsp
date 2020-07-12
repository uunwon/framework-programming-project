<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 리뷰 페이지 첫 화면 - 목록 띄어주기 -->

<!Doctype html>
<html lang="ko">

  <head>
    <title>SANTA</title>
    <mytag:design/>
    
    <link href="../resources/main.css" rel="stylesheet">
  </head>
  
  <body id = "re">
  	<mytag:head2/>
  	
  	<div style="text-align:center">
  		<img src="../resources/img/review.png" height="160" alt="">
  	</div>
  	
  	<h2 style="text-align:center"><strong>Review</strong></h2>
  	
  	<div style="text-align:right">
  		<c:url value="/review/write" var="url"/>
		<a href = "${url }">
  			<button class="btn btn-outline-dark" type="button" >&nbsp;&nbsp;New&nbsp;&nbsp;</button>&nbsp;&nbsp;&nbsp;
  		</a>
  	</div><br>
  	
  	<table id="tab" class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Book Title</th>
					<th scope="col">Review Title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="review" items="${reviews }" varStatus="status">
				<c:url value="http://localhost:8080/yunweb/review/read" var="nex">
						<c:param name="id" value='${review.id }' />
				</c:url>
					<tr>
						<th scope="raw">${status.count}</th>
						<td>${review.id}</td>
						<td>${review.booktitle}</td>
						<td><a style="color: black;" href="${nex}" target="_self">${review.reviewtitle}</a></td>
					</tr>
				</c:forEach>
			</tbody>
	 </table>
	 
	 <hr>	
  	<footer class="container">
 	 	<p>&copy; github / yunwoon</p>
  	</footer>
	 
  </body>
  
  	
  
</html>