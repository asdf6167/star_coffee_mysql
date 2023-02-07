<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
     
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
 
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>상품 정보</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../resources/css/style.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../resources/css/productDetail.css">
  <style type="text/css">
  </style>
</head>

<body style="background-color : #A9A9A9;">

<%@include file="../views/includes/admin/header.jsp" %>
  <!--Main layout-->
  <main >
    <div class="container">

        <!--Grid row-->
        <div class="row wow fadeIn content_top">
        <div class="ct_left_area">
        	<div class="image_wrap" data-productid="${productIntro.imageList[0].productId }" data-path="${productIntro.imageList[0].uploadPath }" data-uuid="${productIntro.imageList[0].uuid }" data-filename="${productIntro.imageList[0].fileName }">
        		<img>
        	</div>
        </div> 
        <div class="ct_right_area">
        	<div class="title">
        		<h1>
        			${productIntro.productName }
        		</h1>
        	</div>
        	<div class="line"></div>
        	
        	<div class="price">
        		<div class="discount_price">
        			<span class="discount_price_number"><fmt:formatNumber value="${productIntro.productPrice }" pattern="#,###원"/></span>
        		</div>
        		<div>
        			예상 적립 포인트 : <span class="point_span"></span>원
        		</div>
        	</div>
        	<div class="line"></div>
        	<div class="button">
        			<c:if test="${member != null }">
		        		<div class="button_quantity">
		        			수량
		        			<input type="text" class="quantity_input" value="1">
		        			<span>
		        				<button class="plus_btn">+</button>
		        				<button class="minus_btn">-</button>
		        			</span>
		        		</div>
        		
		        		<div class="button_set">
		        			
		        			<a class="btn_cart"><span>장바구니 담기</span></a>
		        			<a class="btn_buy"><span>바로구매</span></a>
		        				
		        			
		        		</div>
        			</c:if>
        	</div>

        	
        </div>
        

		 

        </div>
        <!--Grid row-->
        <div class="line"></div>
		<div class="content_middle">
			<div class="product_intro">
				${productIntro.productInfo}
			</div>
			
			
		</div>
		
		<div class="line"></div>

		<div class="content_bottom">
                   					
                   					<div class="reply_subject">
		                   					<h2>Review</h2>
                   					</div>
                   					
                   					<div class="reply_not_div">
					
									</div>
									<ul class="reply_content_ul">
											
									</ul>
									<div class="reply_pageInfo_div">
										<ul class="pageMaker">
										
										</ul>

									</div>
                   					<c:if test="${member != null }">
                   					
                   					<div class="reply_button_wrap">
                   						<button>리뷰 작성</button>
                   					</div>
                   					
                   					</c:if>
                   					
                   				</div>
     
     <!-- 주문 form -->
	<form action="/order/${member.memberId }" method="get" class="order_form">
		<input type="hidden" name="orders[0].productId" value="${productIntro.productId}">
		<input type="hidden" name="orders[0].productCount" value="">
	</form>
     
    </div>
  </main>
  <!--Main layout-->



 
 
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
    
    //댓글 페이지 정보
	  const pcri ={
			  productId : '${productIntro.productId}',
			  productPageNum : 1,
			  productAmount : 10
			  
	  }
    
    $(document).ready(function(){
    	
    	// 리뷰 리스트 출력 
      	const productId = '${productIntro.productId}';
      	
      	$.getJSON("/reply/list", {productId : productId}, function(obj){
      		
      		if(obj.list.length === 0){
      			$(".reply_not_div").html('<span>아직 작성된 리뷰가 없습니다.</span>');
      			$(".reply_content_ul").html('');
      			$(".pageMaker").html('');
      		}else{
      			
      			$(".reply_not_div").html('');
      			
      			const  list = obj.list;
      			const pf = obj.pageInfo;
      			const userId = '${member.memberId}';
      			
      			//list
      			
      			let reply_list = '';
      			
      			$(list).each(function(i,obj){
      				reply_list += '<li>';
      				reply_list += '<div class="comment_wrap">';
      				
      				reply_list += '<div class="reply_top">';
    				/* 아이디 */
    				reply_list += '<span class="id_span">'+ obj.memberId+'</span>';
    				
    				/* 평점 */
    				reply_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.rating +'</span>점</span>';
    				if(obj.memberId === userId){
    					reply_list += '<a class="update_reply_btn" href="'+ obj.replyId +'">수정</a><a class="delete_reply_btn" href="'+ obj.replyId +'">삭제</a>';
    				}
    				reply_list += '</div>';
    				reply_list += '<div class="reply_bottom">';
    				reply_list += '<div class="reply_bottom_txt">'+ obj.content +'</div>';
    				reply_list += '</div>';
    				reply_list += '</div>';
    				reply_list += '</li>';
      			});
      			
      			$(".reply_content_ul").html(reply_list);
      			
      			//페이지 버튼
      			
      			let reply_pageMaker = '';
      			/* prev */
				if(pf.prev){
					let prev_num = pf.pageStart -1;
					reply_pageMaker += '<li class="pageMaker_btn prev">';
					reply_pageMaker += '<a href="'+ prev_num +'">이전</a>';
					reply_pageMaker += '</li>';	
				}
				/* number btn */
				for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
					reply_pageMaker += '<li class="pageMaker_btn ';
					if(pf.pcri.productPageNum === i){
						reply_pageMaker += 'active';
					}
					reply_pageMaker += '">';
					reply_pageMaker += '<a href="'+i+'">'+i+'</a>';
					reply_pageMaker += '</li>';
				}
				/* next */
				if(pf.next){
					let next_num = pf.pageEnd +1;
					reply_pageMaker += '<li class="pageMaker_btn next">';
					reply_pageMaker += '<a href="'+ next_num +'">다음</a>';
					reply_pageMaker += '</li>';	
				}	
				
				$(".pageMaker").html(reply_pageMaker);
      		}
      		
      	});
    	
    	 /* 이미지 삽입 */
	const bobj = $(".image_wrap");
    		
    	 
    	 if(bobj.data("productid")){
    	
    		const uploadPath = bobj.data("path");
    		console.log(uploadPath);
    		const uuid = bobj.data("uuid");
    		const fileName = bobj.data("filename");
    		
    		const fileCallPath = encodeURIComponent(uploadPath.replace(/\\/g, '/')  + "/" + uuid + "_" + fileName);
    		
    		bobj.find("img").attr('src','/display?fileName=' + fileCallPath);
    	 }else{
    		 bobj.find("img").attr('src','/resources/img/non_image2.png');
    	 }

    	//포인트
    	    let productPrice = "${productIntro.productPrice}"
    	    let point = productPrice*0.05;
    	    point = Math.floor(point);
    	    $(".point_span").text(point);
    	    
    	//리뷰 리스트 출력
    	
    	
    	
    	$.getJSON("/reply/list", {productId : productId}, function(obj){
    		
    		makeReplyContent(obj);
    		
    	});
    	    
    	 
    }); //$(document).ready
    
    
    //수량 버튼 조작
    let quantity = $(".quantity_input").val();
    $(".plus_btn").on("click",function(){
    	$(".quantity_input").val(++quantity);
    	
    });
    $(".minus_btn").on("click",function(){
    	if(quantity > 1 ){    		
    	$(".quantity_input").val(--quantity);
    	}
    });
    
    //서버로 전송할 데이터
    const form = {
    		memberId : '${member.memberId}',
    		productId : '${productIntro.productId}',
    		productCount : ''
    }
    
    //장바구니 추가 버튼
    $(".btn_cart").on("click", function(e){
    	form.productCount = $(".quantity_input").val();
    	$.ajax({
    		url : '/cart/add',
    		type : 'POST',
    		data : form,
    		success: function(result){
    			cartAlert(result);
    		}
    	})
    });
    
    
    function cartAlert(result){
		if(result == '0'){
			alert("장바구니에 추가를 하지 못하였습니다.");
		} else if(result == '1'){
			alert("장바구니에 추가되었습니다.");
		} else if(result == '2'){
			alert("장바구니에 이미 추가되어져 있습니다.");
		} else if(result == '5'){
			alert("로그인이 필요합니다.");	
		}
	}
    
    //바로구매 버튼
    $(".btn_buy").on("click", function(){
    	let productCount = $(".quantity_input").val();
    	console.log(productCount);
    	$(".order_form").find("input[name='orders[0].productCount']").val(productCount);
    	$(".order_form").submit();
    
    });
    
  //리뷰 쓰기
    $(".reply_button_wrap").on("click", function(e){
    	
    	e.preventDefault();
    	
    	const memberId = '${member.memberId}';
    	const productId = '${productIntro.productId}';
    	
    	$.ajax({
    		data : {
    			productId : productId,
    			memberId : memberId
    		},
    		url : '/reply/check',
    		type : 'POST',
    		success : function(result){
    			
    			if(result == '1'){
    				alert("이미 등록된 리뷰가 존재합니다.")
    			}else if(result === '0'){
    				let popUrl = "/replyEnroll/" + memberId + "?productId=" + productId;
    				console.log(popUrl);
    				let popOption = "width = 490px, height=490px, top=300px , left=300px, scrollbars=yes"
    			
    				window.open(popUrl,"리뷰 작성", popOption);
    			}
    		}
    	});
    	
    });
  
  //댓글 데이터 서버 요청 및 댓글 동적 생성 메서드
  let replyListInit = function(){
	  $.getJSON ("/reply/list", pcri , function(obj){
		  makeReplyContent(obj);
	  });
  }
  
  //리뷰 수정 버튼
  $(document).on('click', '.update_reply_btn', function(e){
	 
	  e.preventDefault();
	  let replyId = $(this).attr("href");
	  let popUrl = "/replyUpdate?replyId=" + replyId + "&productId=" + '${productIntro.productId}' +  "&memberId=" + '${member.memberId}';
	  let popOption = "width = 490px , height=490px, top=300px , left=300px, scrollbars=yes"
 
  		window.open(popUrl, "리뷰 수정", popOption);
  });
  
  //리뷰 삭제 버튼
  $(document).on('click', '.delete_reply_btn', function(e){
	 e.preventDefault();
	 let replyId = $(this).attr("href");
	 
	 $.ajax({
		 data : {
			 replyId : replyId,
			productId : '${productIntro.productId}'
		 },
		 url : '/reply/delete',
		 type: 'POST',
		 success : function(result){
			 replyListInit();
			 alert('리뷰를 삭제했습니다.');
		 }
	 });
  });
  // 댓글 동적 생성 메서드
  function makeReplyContent(obj){
	  
	  if(obj.list.length === 0 ){
		  $(".reply_not_div").html('<span>리뷰가 없습니다. </span>');
		  $(".reply_content_ul").html('');
		  $(".pageMaker").html('');
		  
	  }else {
		  
		  $(".reply_not_div").html('');
		  
		  const list = obj.list;
		  const pf = obj.pageInfo;
		  const userId = '${member.memberId}';
		  
		  //list
		  
		  let reply_list = '';
		  
		  $(list).each(function(i,obj){
			 
			  reply_list += '<li>';
			  reply_list += '<div class="comment_wrap">';
			  reply_list += '<div class="reply_top">';
			  
			  //아이디
			  reply_list += '<span class="id_span">' + obj.memberId+'</span>';
			 
			  //평점
			  reply_list += '<span class = "rating_span"> 평점 : <span class="rating_value_span">'+ obj.rating +'</span>점</span>';
		  
		  	 if(obj.memberId === userId){
		  		 reply_list += '<a class="update_reply_btn" href="'+obj.replyId + '">수정 </a><a class="delete_reply_btn" href="'+ obj.replyId +'">삭제</a>';
		  	 }
		  	 reply_list += '</div>'; 
		  	 reply_list += '<div class="reply_bottom">';
		  	 reply_list += '<div class="reply_bottom_txt">' + obj.content + '</div>';
		  	 reply_list += '</div>';
		  	 reply_list += '</div>';
		  	 reply_list += '</li>';
		  });
		  
		  $(".reply_content_ul").html(reply_list);
		  
		  //페이지 버튼
		  
		  let reply_pageMaker = '';
		  
		  	//prev
		  	if(pf.prev){
		  		let prev_num = pf.pageStart -1 ;
		  		reply_pageMaker += '<li class="pageMaker_btn prev">';
		  		reply_pageMaker += '<a href="'+ prev_num + '">이전</a>';
		  		reply_pageMaker += '</li>';
		  	}
		  	//number btn	
		  	for(let i = pf.pageStart; i< pf.pageEnd+1; i++){
		  		reply_pageMaker += '<li class="pageMaker_btn ';
		  		if(pf.pcri.productPageNum === i){
		  			reply_pageMaker += 'active';	
		  		}
		  		reply_pageMaker += '">';
		  		reply_pageMaker += '<a href="'+i+ '">'+i+'</a>';
		  		reply_pageMaker += '</li>';
		  		
		  	}
		  	
		  	// next 
		  	if(pf.next){
		  		let next_num = pf.pageEnd +1;
		  		reply_pageMaker += '<li class="pageMaker_btn next">';
		  		reply_pageMaker += '<a href="' + next_num + '"> 다음 </a>';
		  		reply_pageMaker += '</li>';
		  	}
		  	
		  	$(".pageMaker").html(reply_pageMaker);
	  }
	  
	 
  }
  
  
  	
  </script>
  
</body>

</html>
