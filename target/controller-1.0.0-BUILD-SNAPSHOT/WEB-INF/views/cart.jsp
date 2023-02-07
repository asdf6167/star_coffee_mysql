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
  <title>장바구니</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../resources/css/style.min.css" rel="stylesheet">
  <link href="../resources/css/cart.css" rel="stylesheet">
  <style>
 
  </style>
</head>

<body>

<%@include file="../views/includes/admin/header.jsp" %>
  <!--Main layout-->
  <main>
    <div class="content_area">
	
	<div class="content_subject">
		<i class="fas fa-shopping-cart cart"></i>
	 <span>Cart</span></div>
     
     <!-- 장바구니 가격 합계 -->
     <!-- cartInfo --> 
     <div class="content_totalCount_section">
     	
     	<!-- 체크박스 전체 여부 -->
     	<div class ="all_check_input_div">
     		<input type="checkbox" class="all_check_input input_size_20" checked="checked">
     		<span class="all_check_span">전체선택</span> 
     	</div>
     	
     	<table class="subject_table">
     		<caption>표 제목 </caption>
     		<tbody>
     			<tr>
     				<th class="td_width_1"></th>
     				<th class="td_width_2"></th>
     				<th class="td_width_3">상품명</th>
     				<th class="td_width_4">가격</th>
     				<th class="td_width_4">수량</th>
     				<th class="td_width_4">합계</th>
     				<th class="td_width_4"></th>
     			</tr>
     		</tbody>
     	</table>
     	
     	<table class ="cart_table">
     		<caption>표 내용 부분</caption>
     		<tbody>
     			<c:forEach items="${cartInfo }" var="ci">
     				<tr>
     					<td class="td_width_1 cart_info_td">
     						<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked" >
     						<input type ="hidden" class="individual_productPrice_input" value="${ci.productPrice }">
     						<input type ="hidden" class="individual_productCount_input" value="${ci.productCount }">
     						<input type ="hidden" class="individual_totalPrice_input" value="${ci.productPrice * ci.productCount }">
     						<input type ="hidden" class="individual_point_input" value="${ci.point }">
     						<input type ="hidden" class="individual_totalPoint_input" value="${ci.totalPoint }">
     						<input type ="hidden" class="individual_productId_input" value="${ci.productId }">
     						
     					</td>
     					<td class="td_width_2">
     						<div class="image_wrap" data-productid ="${ci.imageList[0].productId }" data-path="${ci.imageList[0].uploadPath}" data-uuid="${ci.imageList[0].uuid }" data-filename="${ci.imageList[0].fileName }">
     							 <img>
     						</div>
     					</td>
     					<td class="td_width_3">${ci.productName }</td>
     					<td class="td_width_4 price_td">
     						Price : <fmt:formatNumber value ="${ci.productPrice }" pattern="#,### 원" /> <br>
     						Point : <span class="green_color"> <fmt:formatNumber value="${ci.point }" pattern="#,###"/> </span> 
     					</td>
     					
     					<td class=" table_text_align_center">
							<div class="table_text_align_center quantity_div">
								<input type="text" value="${ci.productCount}" class="quantity_input">	
								<button class="quantity_btn plus_btn">+</button>
								<button class="quantity_btn minus_btn">-</button>
						</div>
						<a class="quantity_modify_btn" data-cartId="${ci.cartId}" style="color:#fff;">변경</a>
     					</td>
     					<td class="td_width_4 table_text_align_center">
									<fmt:formatNumber value="${ci.productPrice * ci.productCount}" pattern="#,### 원" />
								</td>
								
								<td class="td_width_4 table_text_align_center">
									<button class="delete_btn" data-cartid="${ci.cartId }">삭제</button>
								</td>	
     				</tr>
     				
     			</c:forEach>
     		</tbody>
     	</table>
     	<table class="list_table">
				</table>
     </div>
     
     <!-- 가격 종합 -->
			<div class="content_total_section" style="height: 150px;">
				<div class="total_wrap">
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td>총 상품 가격</td>
										<td>
											<span class="totalPrice_span"></span> 원
										</td>
									</tr>
																
									<tr>
										<td>총 상품수</td>
										<td><span class="totalCount_span"></span>개</td>
									</tr>
								</table>
							</td>
							<td>
								<table>
									<tr>
										<td></td>
										<td></td>
									</tr>
								</table>							
							</td>
						</tr>
					</table>
					<div class="boundary_div">구분선</div>
					<table>
						<tr>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
												<strong>총 결제 예상 금액</strong>
											</td>
											<td>
												<span class="finalTotalPrice_span"></span> 원
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
												<strong>총 적립 예상 마일리지</strong>
											
											</td>
											<td>
												<span class="totalPoint_span"></span> 원
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- 구매 버튼 영역 -->
			<div class="content_btn_section">
				<a class="order_btn" style="color:#fff;">주문하기</a>
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
    	
    	//종합 정보 섹션 정보 삽입 
    	
    	setTotalInfo();
    	
    	//이미지 삽입
    	$(".image_wrap").each(function(i,obj){
    		
    		const bobj = $(obj);
    		
    		if(bobj.data("productid")){
    			const uploadPath = bobj.data("path");
    			const uuid = bobj.data("uuid");
    			const fileName = bobj.data("filename");
    			
    			const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
    			
    			
    			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
    			
    		}else{
    			$(this).find("img").attr('src','/resources/img/non_image.png')
    		}  
    			
    	});
    	
    });
   
    
    //체크여부에 따른 종합 정보 반환
    $(".individual_cart_checkbox").on("change", function(){
    	//총 주문 정보 세팅
    	setTotalInfo($(".cart_info_td"));
    });
    
   
    function setTotalInfo(){
    	

    	let totalPrice = 0;
    	let totalCount = 0;	
    	let totalPoint = 0;
    	
    	$(".cart_info_td").each(function(index, element){
    		
    	if($(element).find(".individual_cart_checkbox").is(":checked") === true){
    		
    		//총 가격
    		totalPrice += parseInt($(element).find (".individual_totalPrice_input").val());
    		//총 갯수
    		totalCount += parseInt($(element).find(".individual_productCount_input").val());
    		
    		//총 마일리지
    		totalPoint += parseInt($(element).find(".individual_totalPoint_input").val());
    	
    		
    	}
    });
    	
    	
    	//총 가격
    	$(".totalPrice_span").text(totalPrice.toLocaleString());
    	//총갯수
    	$(".totalCount_span").text(totalCount);
    	//총 마일리지
    	$(".totalPoint_span").text(totalPoint.toLocaleString());
    	//최종가격
    	$(".finalTotalPrice_span").text(totalPrice.toLocaleString());
    }

    
    //체크박스 전체 선택
    $(".all_check_input").on("click", function(){
    	
    	console.log("전체선택")
    	//체크박스 체크/해제
    	
    	if($(".all_check_input").prop("checked")){
    		$(".individual_cart_checkbox").prop('checked',true);
    		} else{
    		$(".individual_cart_checkbox").prop('checked',false);
    		}
    	
    	setTotalInfo($(".cart_info_td"));
    });
  
    //수량버튼
    $(".plus_btn").on("click", function(){
    	let quantity = $(this).parent("div").find("input").val();
	    $(this).parent("div").find("input").val(++quantity);
    });
    
    $(".minus_btn").on("click",function(){
    	let quantity = $(this).parent("div").find("input").val();
    	if(quantity > 1){
    		$(this).parent("div").find("input").val(--quantity);
    	}
    });
    
    //수량 수정 버튼
    $(".quantity_modify_btn").on("click", function(){
    	let cartId = $(this).data("cartid");
    	let productCount = $(this).parent("td").find("input").val();
    	$(".update_cartId").val(cartId);
    	$(".update_productCount").val(productCount);
    	$(".quantity_update_form").submit();
    	
    });
    
    /* 장바구니 삭제 버튼 */
    $(".delete_btn").on("click", function(e){
    	e.preventDefault();
    	const cartId = $(this).data("cartid");
    	
    	$(".delete_cartId").val(cartId);
    	console.log(cartId);
    	$(".quantity_delete_form").submit();
    	
    });
    
    //주문 페이지 이동
    
    $(".order_btn").on("click", function(){
    	let form_contents = '';
    	let orderNumber = 0;
    	
    	$(".cart_info_td").each(function(index,element){
    		
    		if($(element).find(".individual_cart_checkbox").is(":checked") === true){
    			
    		
    		let productId = $(element).find(".individual_productId_input").val();
    		let productCount = $(element).find(".individual_productCount_input").val();
    		
    		let productId_input = "<input name='orders["+ orderNumber + "].productId'type= 'hidden' value='"+productId+"'>";
    		form_contents += productId_input;
    		
    		let productCount_input = "<input name='orders[" + orderNumber + "].productCount' type='hidden' value='" + productCount + "'>";
    		form_contents += productCount_input;
    		
    		orderNumber += 1;
    		
    		}
    	});
    	
    	$(".order_form").html(form_contents);
    	$(".order_form").submit();
    });
    
   
  </script>
  
</body>

</html>
