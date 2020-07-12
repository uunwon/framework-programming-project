<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 리뷰 수정 페이지 -->

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
  	
  		<form name=form1 action="http://localhost:8080/yunweb/review/modify/" method="post">
  		
	  		<div id="third">
	  		
		      <div id='box-left2'>
		      	<img class="rounded" src="../resources/img/modify.png" height="440px" alt="book" /><br>
		      </div>
		      
		      <div id='box-right2'>
		      	
			      <div class="form-label-group">
			      	<label for="inputBook">BOOK TITLE</label>
				    <input type="text" class="form-control" placeholder="Book Title"
				    			name="booktitle" value="${review.booktitle}" required autofocus>
				  </div><br>
				  
				  <div class="form-label-group">
				  	<label for="inputId">ID</label>
				    <input type="text" class="form-control" placeholder="ID"
				    			name="id" value="${review.id}" required readonly>
				  </div><Br>
				  
				  <div class="form-label-group">
				  	<label for="inputTitle">REVIEW TITLE</label>
				    <input type="text" class="form-control" placeholder="Review Title"
				    			name="reviewtitle" value="${review.reviewtitle}" required autofocus>
				  </div><br>
				  
				  <div class="form-label-group">
				    <label for="inputContent">REVIEW CONTENT</label>
				    <input type="text" class="form-control" placeholder="Review Content"
				    			name="content" value="${review.content}" required>
				  </div>
		      </div>
		      
			</div>
	
			<div style="text-align:right">
				<button class="btn btn-danger" type="submit" name="submit">&nbsp;&nbsp;최종 수정&nbsp;&nbsp;</button>
				<button class="btn btn-outline-danger" type="reset" name="reset">&nbsp;&nbsp;다시 작성&nbsp;&nbsp;</button>
			</div>
		</form>
	 
	</main>
	
	<br><br><hr id = "hrr"><br>
	
	<footer class="container">
 	 <p>&copy; github / yunwoon</p>
    </footer>
	
  </body>
</html>