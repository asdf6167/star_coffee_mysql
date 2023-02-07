<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html><head>
    <meta charset="UTF-8">
  	<title>Login </title>
  	
   <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/resources/css/member/login/css/style.css">
	<!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  
  <!-- Material Design Bootstrap -->
  <link href="../resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->

	</head>
	
	 <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand " href="/main" >
        <strong class="green-text">StarCoffee</strong>
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
		
		<!-- Left -->
        <ul class="navbar-nav mr-auto">
         
        </ul>
       
        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
         
         
           <c:if test = "${member == null}">
          <li class="nav-item">
          
            <a href="/member/login" class="nav-link border border-light rounded waves-effect">
             LogIn
            </a>
          </li>
          <li class="nav-item">
            <a href="/member/join" class="nav-link border border-light rounded waves-effect"
              >
             Join us
            </a>
          </li>
           </c:if>
           	<c:if test="${member != null }"> 
           	
           	 <li class="nav-item">
            <a href="/cart/${member.memberId }" class="nav-link waves-effect">
              
              <i class="fas fa-shopping-cart"></i>
              <span class="clearfix d-none d-sm-inline-block"> Cart </span>
            </a>
          </li>
           	
           	
           		<div class="nav-link border border-light rounded waves-effect">
           			<span>충전 금액 : <fmt:formatNumber value="${member.money}" pattern="#,###"/> </span>
           			<span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###"/></span>
           		</div>
            <c:if test="${member.adminCk == 1 }">
            <a href="/admin/main" class="nav-link border border-light rounded waves-effect">AdminPage</a>
            </c:if>
             <a href="/member/logout.do" class="nav-link border border-light rounded waves-effect">Logout</a>
            
           </c:if> 
           
        </ul>

      </div>

    </div>
  </nav>
  
  <!-- Navbar -->
	<body class="img" style="background-color: 	#eee ; height: 754px;">
	
	<section class="ftco-section">
		<div class="container">
		      			<form id="login_form" method="post" class="signin-form">
			<div class="row justify-content-center">
				<div class="text-center mb-5">
					<a href="/main">
					
					Star Coffee
					
					</a>
				<h4 class="heading-section2">임시 관리자 ID : admin123 </h4>
				<h4 class="heading-section2"> Password : admin123</h4>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      			<input type="text" class="form-control id_input" placeholder="Username" name="memberId">
		      		<div class="form-group">
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" class="form-control pw_iput" placeholder="Password"name="memberPw">
	            
	            </div>
	            <c:if test = "${result == 0 }">
                	<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            	</c:if>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn-primary login_button">Sign In</button>
	            </div>
	            
	         
		     		 </div>
				</div>
			</div>
	          			</form>
		</div>
	</section>

<script src="/resources/css/member/login/js/jquery.min.js"></script>
  <script src="/resources/css/member/login/js/popper.js"></script>
  <script src="/resources/css/member/login/js/bootstrap.min.js"></script>
  <script src="/resources/css/member/login/js/main.js"></script>

	<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
   
    	/* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login.do");
        $("#login_form").submit();
    });
 
</script>


</body></html>