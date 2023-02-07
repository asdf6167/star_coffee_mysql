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
  <title>Order Page</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../resources/css/style.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/resources/css/order.css">
  
</head>

<body>

<%@include file="../views/includes/admin/header.jsp" %>
  <!--Main layout-->
  <main>
    <div class="content_area">
	
	<div class="content_subject"> <span>Order</span></div>
      
  		<div class="content_main">
				<!-- 회원 정보 -->
			<div class="member_info_div">
				<table class=" memberInfo_table">
					<tbody>
						<tr>
							<th style="width : 25%;"> 주문자 </th>
							<td style="width *">${memberInfo.memberName } | ${memberInfo.memberMail }</td>
						</tr>						
					</tbody>
				</table>
			</div>		
			
				<!-- 상품 정보 -->
			<div class="orderProduct_div">
				<!-- 상품 종류 -->
				<div class="product_kind_div">
					주문 상품
				</div>
				
				<!--  상품 테이블 -->
				<table class="product_subject_table">
					<colgroup>
						<col width="15%">
						<col width="45%">
						<col width="40%">
					</colgroup>
					<tbody>
						<tr>
						 	<th></th>
						 	<th>상품 정보</th>
						 	<th>판매가</th>
						</tr>
					</tbody>
				</table>
				<table class="product_table">
					<colgroup>
						<col width="15%">
						<col width="45%">
						<col width="40%">
					</colgroup>
					
					<tbody>
						<c:forEach items="${orderList }" var="ol">
							<tr>
								<td> 
									<div class="image_wrap" data-productid ="${ol.imageList[0].productId }" data-path="${ol.imageList[0].uploadPath }" data-uuid="${ol.imageList[0].uuid }" data-filename="${ol.imageList[0].fileName }"
									style="width: 120px;">
										<img>
									</div>
								 </td>
								<td style="font-weight: bold;">${ol.productName }</td>
								<td class="product_table_price_td">
									<fmt:formatNumber value="${ol.productPrice }" pattern="#,### 원"/> | 수량 ${ol.productCount }개
									<br><fmt:formatNumber value="${ol.totalPrice }" pattern="#,###원"/>
									<br>[<fmt:formatNumber value="${ol.totalPoint }" pattern="#,###원"/> P]
									
									<input type="hidden" class="individual_productPrice_input" value="${ol.productPrice }">
									<input type="hidden" class="individual_productCount_input" value="${ol.productCount }">
									<input type="hidden" class="individual_totalPrice_input" value="${ol.productPrice * ol.productCount }">
									<input type="hidden" class="individual_point_input" value="${ol.point }">
									<input type="hidden" class="individual_totalPoint_input" value="${ol.totalPoint }">
									<input type="hidden" class="individual_productId_input" value="${ol.productId }">
									
									
								</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
				
				<!-- 주문 종합 정보 -->
				<div class="total_info_div">
		<!-- 가격 종합 정보 -->
		<div class="total_info_price_div">
			<ul>
				<li>
					<span class="price_span_label">상품 금액</span>
					<span class="totalPrice_span"></span>원
				</li>
				
				<li class="point_li">
					<span class="price_span_label">적립예정 포인트</span>
					<span class="totalPoint_span">7960원</span>
				</li>
			</ul>
		</div>
		<!-- 포인트 정보 -->
				
				
				<table class="point_table">
					<colgroup>
						<col width="30%">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>포인트 사용</th>
							<td>
								  보유 포인트 :  ${memberInfo.point } <br>
								<input class="order_point_input" value="0">원
								<a class="order_point_input_btn order_point_input_btn_N" data-state="N">모두사용</a>
								<a class="order_point_input_btn order_point_input_btn_Y" data-state="Y" style="display: none;">사용취소</a>
							</td>
						</tr>
					</tbody>
				</table>
		<!-- 버튼 영역 -->
		<div class="total_info_btn_div">
			<a class="order_btn" style="color : #fff">결제하기</a>
		</div>
	</div>
			</div>
    </div>
  </main>
  <!--Main layout-->
 
 <!--  수량 조절 form -->
 <form action="/cart/update" method="post" class="quantity_update_form">
 	<input type="hidden" name="cartId" class="update_cartId">
 	<input type="hidden" name="productCount" class="update_productCount">
 	<input type="hidden" name="memberId" value="${member.memberId }">
 </form>
 
<!-- 삭제 form -->
	<form action="/cart/delete" method="post" class="quantity_delete_form">
				<input type="hidden" name="cartId" class="delete_cartId">
				<input type="hidden" name="memberId" value="${member.memberId}">
 	</form>
 	
 	<!-- 주문 form -->
 	<form action="/order/${member.memberId }" method="get" class="order_form">
 	
 	</form>
 	
 	<!-- 주문 요청 form -->
 	<form class="order_form" action="/order" method="post">
 		<!--  주문자 회원번호  -->
 		<input name="memberId" value="${memberInfo.memberId }" type="hidden">
 		<!-- 사용 포인트 -->
 		<input name="usePoint" type="hidden">
 		<!-- 상품 정보 -->
 		
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
  <script>
  
    // Animations initialization
    new WOW().init();
    
    
    $(document).ready(function(){
    	setTotalInfo();  	
    	//이미지 삽입
    	$(".image_wrap").each(function(i,obj){
    		
    		const bobj = $(obj);
    		console.log(bobj);
    		if(bobj.data("productid")){
    			const uploadPath = bobj.data("path");
    			const uuid = bobj.data("uuid");
    			const fileName = bobj.data("filename");
    			
    			const fileCallPath = encodeURIComponent(uploadPath + "/" + uuid + "_" + fileName);
    			
    			console.log("fileCallPath::::" + fileCallPath);
    			
    			
    			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
    			
    		}else {
    			
    			$(this).find("img").attr('src', '/resources/img/non_image.png');
    		}
    	});
    });
 
    //포인트입력
    $(".order_point_input").on("propertychange change keyup paste input", function(){
    	
    	const maxPoint = parseInt('${memberInfo.point}');
    	
    	let inputValue = parseInt($(this).val());
    	
    	if(inputValue < 0){
    		$(this).val(0);
    	} else if (inputValue > maxPoint){
    		$(this).val(maxPoint);
    	}
    	
    	//주문 정보란 최신화
    	setTotalInfo();
    });
   
    
    //포인트 모두사용 취소 버튼
    $(".order_point_input_btn").on("click", function(){
    	
    	const maxPoint = parseInt('${memberInfo.point}');
    	
    	let state = $(this).data("state");
    	
    	if(state == 'N'){
    		console.log ("n동작");
    		//취소
    		//값 변경
    		$(".order_point_input").val(maxPoint);
    		//글 변경
    		$(".order_point_input_btn_Y").css("display","inline-block");
    		$(".order_point_input_btn_N").css("display","none");
    	}else if(state == 'Y'){
    		console.log("y동작");
    		//취소
    		//값 변경
    		$(".order_point_input").val(0);
    		//글 변경
    		$(".order_point_input_btn_Y").css("display", "none");
    		$(".order_point_input_btn_N").css("display", "inline-block");
    	}
    });
    
    
    //총 주문 정보 세팅
    function setTotalInfo(){
    	
    	let totalPrice = 0;
    	let totalCount = 0;
    	let totalKind = 0;
    	let totalPoint = 0;
    	let usePoint = 0;
    	let finalTotalPrice = 0;
    	
    	$(".product_table_price_td").each(function(index, element){
    		//총 가격
    		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
    	
    	   // 총 갯수
    	   totalCount += parseInt($(element).find("individual_productCount_input").val());
    	   
    	   //총 종류
    	   totalKind += 1;
    	   //총 마일리지
    	   totalPoint += parseInt($(element).find(".individual_totalPoint_input").val());
    	});
    	
    	//사용 포인트
    	usePoint = $(".order_point_input").val();
    	
    	finalTotalPrice = totalPrice - usePoint;
    	
    	
    	//값 삽입
    	//총가격
    	$(".totalPrice_span").text(totalPrice.toLocaleString());
    	//총 갯수
    	$(".product_kind_div_count").text(totalCount);
    	//총 종류
    	$(".product_kind_div_kind").text(totalKind);
    	//총 마일리지
    	$(".totalPoint_span").text(totalPoint.toLocaleString());
    	
    	//할인가 ( 사용 포인트)
    	$(".usePoint_span").text(usePoint.toLocaleString());
    	
    }
    
    
    //주문 요청
    $(".order_btn").on("click",function(){
    	//사용 포인트
    	$("input[name='usePoint']").val($(".order_point_input").val());	
    	
    	
    	//상품 정보
    	let form_contents = '';
    	$(".product_table_price_td").each(function(index,element){
    		let productId = $(element).find(".individual_productId_input").val();
	    	let productCount = $(element).find(".individual_productCount_input").val();
    		let productId_input = "<input name = 'orders[" + index + "].productId' type='hidden' value='"+ productId + "'>";
			form_contents += productId_input;
			let productCount_input = "<input name='orders["+index+"].productCount' type='hidden' value='"+productCount+"'>";
			form_contents += productCount_input;
    	});
    	$(".order_form").append(form_contents);
    	
    	//서버 전송
    	$(".order_form").submit();
    	
    		
    });
  </script>
  
</body>

</html>
