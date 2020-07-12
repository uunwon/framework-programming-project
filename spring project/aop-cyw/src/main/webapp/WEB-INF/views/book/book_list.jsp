<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 책 페이지 -->

<!Doctype html>
<html lang="ko">

  <head>
    <title>SANTA</title>
    <mytag:design/>
    
    <link href="../resources/main.css" rel="stylesheet">
    <link href="../resources/book.css" rel="stylesheet">
    
    <style>
    	h4{ color: #660115;}
    </style>
  </head>
  
  <body>
  	<mytag:head2/>
  	
  	<br><br><div style="text-align:center">
  		<img src="../resources/img/book.png" height="160" alt="">
  	</div>
  	
  	<h2 style="text-align:center"><strong>Book</strong></h2><br><br><br>
  	
  	<main role="main">
	
	  <div class="container marketing">

		    <!-- Three columns of text below the carousel -->
		    <div class="row">
		      <div class="col-lg-4">
		      	<div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/gatsby.jpg"></div>
		        <br><h4>위대한 개츠비</h4>
		        <h7>여러 물음은 결국 하나로 요약된다. 개츠비는 왜 위대한가? 그 답을 찾기 위해서는 소설의 시점과 형식상 닉 캐러웨이의 시선을 따라갈 수 밖에 없겠다. 가령 개츠비의 첫 고백을 보자.</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/bird.jpg"></div>
		        <br><h4>버드 스트라이크</h4>
		        <h7>있는 그대로의 모습으로 이 세계를 온전히 살아 내고 싶은 우리 모두를 위한 이야기! 탁월한 감각과 독특한 상상력, 빼어난 서사적 역량. 함께 걷고 날고 서로를 치유하며 성장하는 작은 존재들</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/snowwhite.jpg"></div>
		        <br><h4>백설공주에게 죽음을</h4>
		        <h7>한 남자가 10년 간의 감옥살이를 마치고 출소한다. 두사람을 죽였다는 죄목으로 복역한 그는 자신이 정말 살인을 했는지, 억울하게 누명을 썼는지조차 알지 못한 채 마을 사람들의 괴롭힘을 당한다.</h7>
		      </div>
		    </div><br><br>
	   
		   <!-- Three columns of text below the carousel -->
		    <div class="row">
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/wizard.jpg"></div>
		        <br><h4>위저드 베이커리</h4>
		        <h7>마법의 빵이 만들어지는 곳. 소년은 그곳에 머물면서 자신의 욕망에 따라 마법의 힘을 마음대로 쓰고 싶어하는 인간들의 모습을 목격한다. 빵을 만드는 마법사와 그를 돕는 파랑새.</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/love.jpg"></div>
		        <br><h4>함부로 애틋하게</h4>
		        <h7>사랑이라는 행성으로 떠나는 꿈 같은 여행. 구름을 뜯어 먹는 기린, 초록 열대어 숲, 팝콘처럼 계속 터지는 산딸기 주스 언덕의 구름.. 두 사람의 글과 그림을 함께 살펴보자.</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        <img class = "profile" src="../resources/book/perfurm.jpg"></div>
		        <br><h4>향수</h4>
		        <h7>불멸의 고전들이 젊고 새로운 얼굴로 다시 태어난다. 목록 선정에서부터 경직성을 탈피한 세계 문학은 본격 문학 거장들의 대표 걸작은 물론, 추리 문학, 환상 문학 등 장르 문학의 기념비적 작품들.</h7>
		      </div>
		    </div><br><br>
		    
		    <!-- Three columns of text below the carousel -->
		    <div class="row">
		      <div class="col-lg-4">
		      	<div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/moon.jpg"></div>
		        <br><h4>달과 6펜스</h4>
		        <h7>예술의 세계와 생활의 세계는 과연 양립할 수 없는 것일까. 그리고 예술가는 도덕과 관습으로부터 얼마만큼 자유로울 수 있는 것일까. 한 화가의 그림 인생을 극적으로 포착한 그가 던지는 물음..</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/exercise.jpg"></div>
		        <br><h4>피구왕 서영</h4>
		        <h7>다수가 동의하고 묵인하는 상황에서 혼자만 '불편하다'고 말할 수 없었던 지난 날들과 그런 자신을 예민한 사람이라고 낙인 찍었던 과거의 파편들을 떠올리며 써내려간 이야기를 담았다.</h7>
		      </div>
		      <div class="col-lg-4">
		        <div class="box" style="background:#00ff0000;">
		        	<img class = "profile" src="../resources/book/prince.jpg"></div>
		        <br><h4>어린 왕자</h4>
		        <h7>매력적인 우화는 한 어른과 자아의 내면에 살고 있는 어린이의 만남을 그리고 있냐, 책의 화자는 엔진이 고장나는 바람에 사하라 사막 한복판에 불시착 "삶이냐 죽음이냐"의 갈림길에 놓인다.</h7>
		      </div>
		    </div><br><br>
		    
		 </div>

	</main>
	
	<hr>
	<footer class="container">
 	 	<p>&copy; github / yunwoon</p>
    </footer>

  </body>
</html>