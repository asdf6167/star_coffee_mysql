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
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/8a241b3425.js" crossorigin="anonymous"></script>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	  
	  <style>
	  	<!-- 검색창 , 페이징 -->
	  	/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-top: 30px;
    margin-bottom: 40px;
  
}

.pageMaker_wrap a{
	
	color : black;
}
.pageMaker{
 	margin-left : 30%;
 	text-align: center;
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.next a, .prev a {
    color: #ccc;
}
.active{							/* 현재 페이지 버튼 */
	border : 2px solid black;
	font-weight:400;
}

/* 검색 영역 */
.search_wrap{
	margin-top:15px;
	 margin-bottom: 10px;
}
.search_input{

    position: relative;
    text-align:center;	
   
}
.search_input input[name='keyword']{
	padding: 4px 10px;
    font-size: 15px;
    height: 20px;
    line-height: 20px;
    
}
.search_btn{
	height: 32px;
    width: 80px;
    font-weight: 600;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    margin-left: 15px;
    background-color: #1E3932;
    color: #fff;
}
 
 .table_empty{
	height: 50px;
    text-align: center;
    margin: 200px 0 215px 0px;
    font-size: 25px;
}
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
                <div class="sidebar-brand-text">Star Coffee </div>
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
            <li class="nav-item active">
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
            <li class="nav-item">
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
                <nav class="navbar navbar-expand navbar-light bg-white topbar static-top shadow">

                    
                    

                    <!-- Topbar Navbar -->
                    <span class=" d-none d-lg-inline text-gray-600 small">${member.memberName }님 환영합니다. </span> 
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="/member/logout.do" id="userDropdown">
                                <span class="d-none d-lg-inline text-gray-600 small">Logout</span>    
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
                            <h6 class="font-weight-bold" style="color:#fff;">상품 목록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <c:if test="${listCheck != 'empty' }">
                                <table class="table table-bordered" id="dataTable" >
                                    <thead>
                                        <tr>
                                            <th>상품번호</th>
                                            <th>상품명</th>
                                           
                                            <th>카테고리</th>
                                            <th>가격</th>
                                            <th>등록 날짜</th>
                                            <th>수정 날짜</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                           
                                            <th>Category</th>
                                            <th>Price</th>
                                            <th>Reg Date</th>
                                            <th>Update Date</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
		                                   <c:forEach items="${list}" var="list">
		                    					<tr>
		                    						<td><c:out value="${list.productId}"></c:out> </td>
						                    			<td>
						                    			<a class="move" href='<c:out value="${list.productId}"/>'>
						                    			<c:out value="${list.productName}"></c:out>
						                    			</a>                    			
						                    			</td>
						                    				
						                    			<td><c:out value="${list.cateName }"></c:out></td>
						                    			<td><c:out value="${list.productPrice}"></c:out> </td>
						                    			<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
						                    			<td><fmt:formatDate value="${list.updateDate}" pattern="yyyy-MM-dd"/></td>
		                    					</tr>
                    						</c:forEach>
                                    </tbody>
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
                    
                     <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" action="/admin/productManage" method="get">
                    		<div class="search_input">
                    			<input type="text" name="productKeyword" class="search_keyword" value='<c:out value="${pageMaker.pcri.productKeyword}"></c:out>'>
                    			<input type="hidden" name="productPageNum" value='<c:out value="${pageMaker.pcri.productPageNum }"></c:out>'>
                    			<input type="hidden" name="productAmount" value='${pageMaker.pcri.productAmount}'>
                    			<button class='btn search_btn'>검 색</button>
                    		</div>
                    	</form>
                    </div>  
                    
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
                          
                     <form id="moveForm" action="/admin/productManage" method="get">
						<input type="hidden" name="productPageNum" value="${pageMaker.pcri.productPageNum}">
						<input type="hidden" name="productAmount" value="${pageMaker.pcri.productAmount}">
						<input type="hidden" name="productKeyword" value="${pageMaker.pcri.productKeyword}">
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
                        <span>Copyright &copy; Kim Young Hwan 2022 - 2023</span>
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
 
//등록 메세지
 $(document).ready(function(){
     
 	let result = '<c:out value="${enroll_result}"/>';
    let mresult = '<c:out value="${modify_result}"/>';
     checkResult(result);
     checkmResult(mresult);
     
     function checkResult(result){
         
         if(result === ''){
             return;
         }
         
         alert("상품'${enroll_result}' 을 등록하였습니다.");
         
     }
     
     function checkmResult(mresult) {
		if(mresult === '1'){
			alert("상품 정보 수정을 완료하였습니다.");
			
		}else if(mresult === '0'){
				alert("상품 정보 수정을 하지 못했습니다.")
		
	}
 }
 });
     </script>
<script>
 let moveForm = $('#moveForm');
 
 /* 페이지 이동 버튼 */
 $(".pageMaker_btn a").on("click", function(e){
     
	
     e.preventDefault();
     
     moveForm.find("input[name='productPageNum']").val($(this).attr("href"));
     
     moveForm.submit();
    
 });
 
 let searchForm = $('#searchForm');
	
	/* 상품 검색 버튼 동작 */
	$("#searchForm button").on("click", function(e){
		
		e.preventDefault();
		
		/* 검색 키워드 유효성 검사 */
		if(!searchForm.find("input[name='productKeyword']").val()){
			alert("제품명을 입력하십시오");
			return false;
		}
		
		searchForm.find("input[name='productPageNum']").val("1");
		
		searchForm.submit();
		
	});
	
	//삭제 결과창
	let delete_result = '${delete_result}';
	
	if(delete_result ==1 ){
			alert("제품 삭제 완료");
	}

	/* 제품 상세 페이지 이동 */
	$(".move").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.append("<input type='hidden' name='productId' value='"+ $(this).attr("href") + "'>");
		moveForm.attr("action", "/admin/productDetail");
		moveForm.submit();
		
	});
 
 </script>

</body>

</html>