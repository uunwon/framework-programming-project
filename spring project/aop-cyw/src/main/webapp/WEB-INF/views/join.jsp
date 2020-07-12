<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL taglib 사용 -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!Doctype html>
<html lang="ko">
  <head>
    <title>SANTA</title>
    <mytag:design/>

    <link href="resources/login.css" rel="stylesheet">
  </head>

  <body class="text-center">
  	<mytag:head3/>
  	
    <form class="needs-validation" action="http://localhost:8080/yunweb/join" method="post" novalidate>
    <img class="mb-4" src="resources/img/love2.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-bold">Welcome!</h1>
      
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">Month</label>
            <input type="text" class="form-control">
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Date</label>
            <input type="text" class="form-control">
          </div>
        </div>

        <div class="mb-3">
          <label for="username">Username</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">@</span>
            </div>
            <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="id">Email</label>
          <input type="text" class="form-control" id="id" name="id" placeholder="you@example.com" required>
          <div class="invalid-feedback">
            Please enter a valid email address for join.
          </div>
        </div>

        <div class="mb-3">
          <label for="passwd">Password</label>
          <input type="password" class="form-control" id="passwd" name="passwd" placeholder="****" required>
        </div>
        
        <hr class="mb-4">
        <button class="btn btn-outline-danger btn-lg btn-block" type="submit">Sign up</button>
        <p class="mt-5 mb-3 text-muted">&copy; github / yunwoon</p>
      </form>
      
  </body>
</html>
