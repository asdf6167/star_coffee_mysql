<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Page</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../resources/css/orderList.css">
	
	 <script src="https://kit.fontawesome.com/8a241b3425.js" crossorigin="anonymous"></script>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	  <style>
	 .container-fluid{
	 	margin-top: 30px;
	 }
	 .font-weight-bold{
	 color : #fff;
	 font-size: 20px;
	 }
	 .btn{
	 	margin-left: 15px;
	 }
	 .pageMaker_wrap{
	 text-align: center;}
	  </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

          <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <li>
            <a class="sidebar-brand justify-content-center" href="/main">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-laugh-wink"></i>
                <div class="sidebar-brand-text ">Star Coffee </div>
                </div>
            </a>
            </li>

            

            <!-- Divider -->
            <li>
            <hr class="sidebar-divider">
		</li>
            <!-- Heading -->
            
            <li><div class="sidebar-heading">
                <span>상품 관리</span>
            </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/productManage"  >
                    <i class="fa-solid fa-bars"></i>
                    <span>상품 목록</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/productEnroll">
                    <i class="fas fa-fw fa-plus"></i>
                    <span>상품등록</span>
                </a>
            </li>

			

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="/orderList">
                    <i class="fas fa-fw fa-table"></i>
                    <span>주문 관리</span></a>
            </li>

           

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-light bg-white">

                    
                    

                    <!-- Topbar Navbar -->
                    <span class="d-none d-lg-inline text-gray-600 small">${member.memberName }님 환영합니다. </span> 
                    <ul class="navbar-nav ml-auto">
                      <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="/member/logout.do" id="userDropdown">
                                <span class=" d-none d-lg-inline text-gray-600 small">Logout</span>    
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->

                     <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow">
                        <div class="card-header">
                            <h6 class="font-weight-bold">주문 내역</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <c:if test="${listCheck != 'empty' }">
                             	
                             	<table class="order_table">
	                    	<colgroup>
	                    		<col width="21%">
	                    		<col width="20%">
	                    		<col width="20%">
	                    		<col width="20%">
	                    		<col width="19%%">
	                    	</colgroup>
	                    		<thead>
	                    			<tr>
	                    				<td class="th_column_1">주문 번호</td>
	                    				<td class="th_column_2">주문 아이디</td>
	                    				<td class="th_column_3">주문 날짜</td>
	                    				<td class="th_column_4">주문 상태</td>
	                    				<td class="th_column_5">취소</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			
	                    			<td><c:out value="${list.orderId}"></c:out> </td>
	                    			<td><c:out value="${list.memberId}"></c:out></td>
	                    			<td><fmt:formatDate value="${list.orderDate}" pattern="yyyy-MM-dd"/></td>
	                    			<td><c:out value="${list.orderState}"/></td>
	                    			<td>
	                    				<c:if test="${list.orderState == '주문확인중' }">
		                    				<button class="delete_btn" data-orderid="${list.orderId }">취소</button>
	                    				</c:if>
	                    			</td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    	
                             </c:if>
                                <c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 상품이 없습니다.
                			</div>
                		</c:if>   
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->  
                    
                   
                    
                       <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMaker_wrap" >
                    
	                    <ul class="pageMaker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMaker.prev}">
	                    		<li class="pageMaker_btn prev">
	                    			<a href="${pageMaker.pageStart - 1}">이전</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
	                    		<li  class="pageMaker_btn ${pageMaker.pcri.productPageNum == num ? "active":""}"
	                    		>
	                    			<a href="${num}">${num}</a>
	                    		</li>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    </ul>
	                    
                    </div>
                          
                     <form id="moveForm" action="/orderList" method="get">
						<input type="hidden" name="productPageNum" value="${pageMaker.pcri.productPageNum}">
						<input type="hidden" name="productAmount" value="${pageMaker.pcri.productAmount}">
						<input type="hidden" name="productKeyword" value="${pageMaker.pcri.productKeyword}">
					</form>   
					
					<!-- 주문 취소 -->
					<form id="deleteForm" action="/admin/orderCancle" method="post">
						<input type="hidden" name="orderId">
						<input type="hidden" name="productPageNum" value="${pageMaker.pcri.productPageNum}">
						<input type="hidden" name="productAmount" value="${pageMaker.pcri.productAmount}">
						<input type="hidden" name="productKeyword" value="${pageMaker.pcri.productKeyword}">
						<input type="hidden" name="memberId" value="${member.memberId }">
					</form>         
                </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Kim Young Hwan 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

       

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

   

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/css/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/css/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>



<script>
 
	let searchForm = $('#searchForm');
	let moveForm = $('#moveForm');
	
	// 검색 버튼
	$("#searchForm button").on("click",function(e){
		e.preventDefault();
		
		//검색 키워드 유효성 검사
		if(!searchForm.find("input[name='productKeyword']").val()){
			
			alert("키워드를 입력해주세요.");
			return false;
		}
		
		searchForm.find("input[name='productPageNum']").val("1");
		
		searchForm.submit();
	});
	
	//페이지 이동 버튼
	$(".pageMaker_btn a").on ("click", function(e){
		
		e.preventDefault();
		
		console.log($(this).attr("href"));
		
		moveForm.find("input[name='productPageNum']").val($(this).attr("href"));
		
		moveForm.submit();
	});
 
	
	//주문 취소
	$(".delete_btn").on("click", function(e){
		e.preventDefault();
		
		let id = $(this).data("orderid");
		
		$("#deleteForm").find("input[name='orderId']").val(id);
		$("#deleteForm").submit();
	});
 </script>

</body>

</html>