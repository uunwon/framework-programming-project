<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 뉴스 페이지 -->

<!Doctype html>
<html lang="ko">

  <head>
    <title>SANTA</title>
    <mytag:design/>
    
    <link href="../resources/main.css" rel="stylesheet">
  </head>
  
  <body>
  	<mytag:head2/>
  	
  	<div style="text-align:center">
  		<img src="../resources/img/news.png" height="160" alt="">
  	</div>
  	
  	<h2 style="text-align:center"><strong>News</strong></h2><br><br>
  	
  	<hr><br>
  	
  	<main role="main">
	
	  <div class="container">
	    <!-- Example row of columns -->
	    <div class="row">
	      <div class="col-md-4">
	        <h2>Coronavirus 22,900</h2>
	        <p>There are at least 2,023,385 cases of coronavirus in the United States and at least 113,818 people have died, according to Johns Hopkins University's tally of cases.On Thursday, Johns Hopkins reported 22,921 new cases and 894 deaths.</p>
	        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	      <div class="col-md-4">
	        <h2>Become 4th worst</h2>
	        <p>India reported 10,956 coronavirus cases in the past 24 hours, the highest single-day increase and the first time the numbers have risen by more 10,000. The total number includes 147,194 people who have recovered.</p>
	        <br><p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	      <div class="col-md-4">
	        <h2>Australia's PM</h2>
	        <p>"Stage 3" of the relaxation would allow bars and restaurants to increase the number of patrons to one per four square meters and ticketed stadium events would be able to hold 10,000 seated spectators. border closures.</p>
	        <br><p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	   </div><br><br>
	   
	   <div class="container">
	    <!-- Example row of columns -->
	    <div class="row">
	      <div class="col-md-4">
	        <h2>Area hardest hit</h2>
	        <p>The investigation was launched by the prosecutor after many complaints were filed with the prosecutor's office by a group of people whose loved ones died of coronavirus. Lombardy, in Italy's north, was the region worst affected by the virus. </p>
	        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	      <div class="col-md-4">
	        <h2>New corona case</h2>
	        <p>Beijing’s Health Commission said two new cases confirmed on Friday involved patients who worked at the same plant for the China Meat Food Research Center. Epidemiological investigations are under way, the commission said.</p>
	        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	      <div class="col-md-4">
	        <h2>F1 Grand Prix</h2>
	        <p>The 2020 season will start with two races at the Austrian Grand Prix, the first being on July 5, followed a week later by a second race on the same track. This post has been updated to clarify the dates of races in Austria.</p>
	        <br><p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
	      </div>
	   </div>
	
	  </div> <!-- /container -->

	</main>
	
	<hr><br>
	
	<footer class="container">
 	 <p>&copy; github / yunwoon</p>
    </footer>

  </body>
</html>