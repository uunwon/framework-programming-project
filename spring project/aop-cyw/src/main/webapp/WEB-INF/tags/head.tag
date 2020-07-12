<%@ tag language="java" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-md navbar-light fixed-top" style="background-color: #E20049;">

	  <a class="navbar-brand" id="logo" href="/yunweb/">
	    <img src="resources/img/home2.png" width="55" height="30" class="d-inline-block align-top" alt="">
	    	CORONARED
	  </a>

	  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" id="logo2" href="/yunweb/index">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" id="logo2" href="/yunweb/book/list">Book</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" id="logo2" href="/yunweb/review/list">Review</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" id="logo2" href="/yunweb/news/list">News</a>
	      </li>
	    </ul>
	    <form action="http://localhost:8080/yunweb/logout" class="form-inline my-2 my-lg-0" method="post">
	      <button class="btn btn-outline-light my-2 my-sm-0" type="submit" >Logout</button>
	    </form>
	  </div>
	  
</nav>