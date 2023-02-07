<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
     
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>MainPage</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../resources/css/style.min.css" rel="stylesheet">
 <script src="https://kit.fontawesome.com/8a241b3425.js" crossorigin="anonymous"></script>
  <style type="text/css">
   
  </style>
</head>

<body style="background-color:#A9A9A9 ">

<%@include file="../views/includes/admin/header.jsp" %>

<!-- 메인 페이지 이미지 -->
 <!--Carousel Wrapper-->
  <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

    <!--Indicators-->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-1z" data-slide-to="1"></li>
      <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

      <!--First slide-->
      <div class="carousel-item active">
        <div class="view" style="background-image: url(../resources/img/coffee_background02.jpeg); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

             <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Welcome  StarCoffee</strong>
              </h1>

              <p>
                <strong>Kim Young Hwan's Project</strong>
              </p>

              <p class="mb-4 d-none d-md-block">
                <strong>본 사이트는 포트폴리오 제작용 사이트 입니다.</strong>
              </p>
              <c:if test="${member == null }">
					
              <a target="_blank" href="/member/login" class="btn btn-outline-white btn-lg">Start
               Login
             		 </c:if>
              </a>
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/First slide-->

      <!--Second slide-->
      <div class="carousel-item">
        <div class="view" style="background-image: url(../resources/img/coffee_background01.jpeg); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Welcome  StarCoffee</strong>
              </h1>

              <p>
                <strong>Kim Young Hwan's Project</strong>
              </p>

              <p class="mb-4 d-none d-md-block">
                <strong>본 사이트는 포트폴리오 제작용 사이트 입니다.</strong>
              </p>
				  <c:if test="${member == null }">
              <a target="_blank" href="/member/login" class="btn btn-outline-white btn-lg">Start
               Login
              </c:if>
              </a>
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/Second slide-->

      <!--Third slide-->
      <div class="carousel-item">
        <div class="view" style="background-image: url(../resources/img/starbucks_logo2.jpeg); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Welcome  StarCoffee</strong>
              </h1>

              <p>
                <strong>Kim Young Hwan's Project</strong>
              </p>

              <p class=" d-none d-md-block">
                <strong>본 사이트는 포트폴리오 제작용 사이트 입니다.</strong>
              </p>
			  <c:if test="${member == null }">
              <a  href="/member/login" class="btn btn-outline-white btn-lg">
              Start
               Login
              
              </a>
              </c:if>
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/Third slide-->

    </div>
    <!--/.Slides-->

    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->

  </div>
  <!--/.Carousel Wrapper-->
  <!--Main layout-->
  <main >
    <div class="container">

     
      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

        <!-- Navbar brand -->
        <span class="navbar-brand">Categories</span>

		<div class="search_filter">
					<div class="filter_button_wrap">
						<button class="filter_button filter_active" id="filter_button_a">음료</button>
						<button class="filter_button" id="filter_button_b">푸드</button>
					</div>	
					
					
					<div class="filter_content filter_a">
					
						<c:forEach items="${filter_info}" var="filter">
						<c:if test="${filter.cateGroup eq '1' }">
						 	<a href="${filter.cateCode}" style="color : #fff">${filter.cateName}</a>
						</c:if>
						</c:forEach>
					</div>
					<div class="filter_content filter_b">
						<c:forEach items="${filter_info}" var="filter">
						<c:if test="${filter.cateGroup eq '2' }">
							<a href="${filter.cateCode}" style="color : #fff">${filter.cateName}</a>
						</c:if>
						</c:forEach>			
					</div>		
					
					
            <div class="md-form search_wrap">
              <form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<input type="text" name="productKeyword">
                    			<button class='btn' style="font-size: 13px;"><i class="fa-solid fa-magnifying-glass"></i></button>                				
                			</div>
               </form>
            </div>
					
					<form id="filter_form" action="/search" method="get" >
						<input type="hidden" name="productKeyword">
						<input type="hidden" name="cateCode">
			
					</form>					
		</div>

		      </nav>
      <!--/.Navbar-->

      <!--Section: Products v.3-->
      <section class="text-center">

        <!--Grid row-->
        <div class="row wow fadeIn">

		  <!-- foreach -->
		  <c:forEach items="${list}" var="list" >
		  
          <div class="col-lg-3">
            <div class="card" style="margin-top: 50px;">
              <div class="view overlay">
                <img  src="/resources/img/non_image.png" class="card-img-top image_wrap"
                  data-productid="${list.imageList[0].productId }"
                  data-path="${list.imageList[0].uploadPath }"
                  data-uuid="${list.imageList[0].uuid }" 
                  data-fileName="${list.imageList[0].fileName }"
                  alt="">
                <a>
               
                </a>
              </div>
              <div class="card-body text-center">
                <!--Category & Title-->
                
                  <h5>[${list.cateName }]</h5>
                
                <h5>
                  <strong>
                    <a href="/productDetail/${list.productId }" class="dark-grey-text">${list.productName }
                   
                    </a>
                  </strong>
                </h5>
                <h4 class="font-weight-bold blue-text">
                  <strong><fmt:formatNumber value="${list.productPrice }" pattern="#,###"/></strong>
                </h4>
              </div>
            </div>
          </div>
          </c:forEach>
          <!-- foreach -->

        </div>
        <!--Grid row-->

      </section>
      <!--Section: Products v.3-->

      <!--Pagination-->
      <nav class="d-flex justify-content-center pageMaker_wrap">
        <ul class="pagination pg-blue pageMaker">

          <!--Arrow left-->
          <c:if test="${pageMaker.prev}">
          <li class="page-item disabled pageMaker_btn prev">
            <a class="page-link" href="${pageMaker.pageStart - 1}" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
          </li>
		</c:if>
		<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
          <li class="active pageMaker_btn ${pageMaker.pcri.productPageNum == num ? "active":""}" style="background-color: #1E3932;">
            <a class="page-link" href="${num}">${num}
              <span class="sr-only">(current)</span>
            </a>
          </li>
       
		</c:forEach>
		
		<c:if test="${pageMaker.next}">
          <li class="page-item pageMaker_btn next">
            <a class="page-link" href="${pageMaker.pageEnd + 1 }" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
          </c:if>
        </ul>
      </nav>
      <!--Pagination-->

    </div>
  </main>
  <!--Main layout-->
  <form id="searchForm" action="/search" method="get">
		<input type="hidden" name="productKeyword" value='<c:out value="${pageMaker.pcri.productKeyword}"></c:out>'>
		<input type="hidden" name="productPageNum" value='<c:out value="${pageMaker.pcri.productPageNum }"></c:out>'>
		<input type="hidden" name="productAmount" value='${pageMaker.pcri.productAmount}'>
		<input type="hidden" name="cateCode" value="<c:out value="${pageMaker.pcri.cateCode}"/>">
		<input type="hidden" id=type name="type" value='${pageMaker.pcri.type}'>
 </form>
 <form id="moveForm" action="/search" method="get">
 	<input type="hidden" name="productPageNum" value="${pageMaker.pcri.productPageNum }">
 	<input type="hidden" name="productAmount" value="${pageMaker.pcri.productAmount }">
 	<input type="hidden" name="productKeyword" value="${pageMaker.pcri.productKeyword }">
 	<input type="hidden" name="cateCode" value="<c:out value="${pageMaker.pcri.cateCode}"/>">

 </form>
 
  <%@include file="../views/includes/admin/footer.jsp" %>

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="../resources/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="../resources/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="../resources/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
    
    let moveForm = $('#moveForm');
    
    //페이지 이동 버튼
    $(".pageMaker_btn a").on("click", function(e){
    	 e.preventDefault();
    	    
    	    moveForm.find("input[name='productPageNum']").val($(this).attr("href"));
    	    
    	    moveForm.submit();
    });
   

    $(document).ready(function(){
    	
    });
    
    function getProductList(type){
    	$("#productType").val(type);
    	
		searchForm.submit();
    }
	 /* 이미지 삽입 */
	$(".image_wrap").each(function(i, obj){
		
		const bobj = $(obj);
		if(bobj.data("productid")){
	
		const uploadPath = bobj.data("path");
		console.log(uploadPath);
		const uuid = bobj.data("uuid");
		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(uploadPath.replace(/\\/g, '/')  + "/" + uuid + "_" + fileName);
		
		
		let pathTest = "/display?fileName="+fileCallPath;
		console.log("fileCallPath:>>>>>>>" + fileCallPath);
		console.log(pathTest);
		console.log("uploadPath:>>>>>>>>" + uploadPath);
		console.log("uuid >>>>>>>>>>>>" + uuid);
		
		$(this).attr('src', pathTest);
		}else{
			$(this).attr('src', '/resources/img/non_image.png')
		}
		
	});
	 
	 
	 function getProductList(type){
	    	$("#productType").val(type);
	    	
			searchForm.submit();
	    }
 //검색 필터
	 
	 let buttonA = $("#filter_button_a");
	 let buttonB = $("#filter_button_b");
	 
	 buttonA.on("click", function(){
			$(".filter_b").css("display", "none");
			$(".filter_a").css("display", "block");		
			buttonA.attr("class", "filter_button filter_active");
			buttonB.attr("class", "filter_button");
		});
	 
	 buttonB.on("click", function(){
			$(".filter_a").css("display", "none");
			$(".filter_b").css("display", "block");
			buttonB.attr("class", "filter_button filter_active");
			buttonA.attr("class", "filter_button");		
		});
	 
	 function getProductList(type){
	    	$("#productType").val(type);
	    	
			searchForm.submit();
	    }
	 
	 //필터링 태그 동작
	 $(".filter_content a").on("click", function(e){
			e.preventDefault();
			let productKeyword = '<c:out value ="${pageMaker.pcri.productKeyword}"/>';
			let cateCode = $(this).attr("href");
	 
	 	$("#filter_form input[name='productKeyword']").val(productKeyword);
	 	$("#filter_form input[name='cateCode']").val(cateCode);
	 	$("#filter_form").submit();
	 });
	 
  </script>
  
</body>

</html>
