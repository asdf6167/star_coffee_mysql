<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<style>
.green-text{
font-weight: bold;
}
.navbar-nav nav-flex-icons{
float: right;
}
.nav-item{
margin-left: 10px;
}
.nav-link{
margin-left: 5px;
}

</style>
  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand" href="/main" >
        <strong class="green-text" style="color:#1E3932;">StarCoffee</strong>
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
          
            <a href="/member/login" class="nav-link border">
             LogIn
            </a>
          </li>
          <li class="nav-item">
            <a href="/member/join" class="nav-link border"
              >
             Join us
            </a>
          </li>
           </c:if>
           	<c:if test="${member != null }"> 
           	
           	<li class="nav-item">
            <a href="/cart/${member.memberId }" class="nav-link waves-effect">
              
              <i class="fas fa-shopping-cart"></i>
              <span class=""> Cart </span>
            </a>
          </li>
           	
           	
           		<div class="nav-link border">
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

 
<script>
/* gnb_area 로그아웃 버튼 작동 */
$("#gnb_logout_button").click(function(){
 //   alert("버튼 작동");
    $.ajax({
        type:"POST",
        url:"/member/logout.do",
        success:function(data){
        //    alert("로그아웃 성공");
            document.location.reload();     
        } 
    }); // ajax 
});
</script>
