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
  	
    <form class="form-signin" action="http://localhost:8080/yunweb/login" method="post">
      <img class="mb-4" src="resources/img/love.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-bold">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="text" id="inputEmail" class="form-control" name="id" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" name="passwd" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-danger btn-block" type="submit">Sign in</button>
      <button class="btn btn-lg btn-outline-danger btn-block" type="button"
      	onclick = "location.href = 'http://localhost:8080/yunweb/join'">Sign up</button>
      <p class="mt-5 mb-3 text-muted">&copy; github / yunwoon</p>
    </form>
  </body>
</html>
