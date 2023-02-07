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
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

    <title>Admin Page</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
    <link href="/resources/css/admin/productDetail.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a241b3425.js" crossorigin="anonymous"></script>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	  
	
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
                            <h6 class="font-weight-bold ">제품 상세</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <!-- Area Chart -->
                            <div class="card shadow mb-4">
                               
                                <div class="card-body">
                                   
                                     <c:if test="${listCheck != 'empty' }">
                               
                                 <div class="admin_content_main ">
                   						<div class="form_section">
                   								<div class="form_section_title">
                   									<label>제품 번호</label>
                   								</div>
                   								<div class="form_section_content">
                   								<input class="input_block" name="productId" readonly="readonly" value="<c:out value='${productIntro.productId }'></c:out>">
                   				
                   								</div>
                   						</div>                    
                   						<div class="form_section">
                   								<div class="form_section_title">
                   									<label>제품명</label>
                   								</div>
                   								<div class="form_section_content">
                   									<input class="input_block" name="productName" readonly="readonly" value="<c:out value='${productIntro.productName }'></c:out>" >
                   								</div>
                   						</div>
                   						
                   						<div class="form_section">
                   								<div class="form_section_title">
                   									<label>가격</label>
                   								</div>
                   								<div class="form_section_content">
                   									<input class="input_block" name="productPrice" readonly="readonly" value="<c:out value='${productIntro.productPrice }'></c:out>" >
                   								</div>
                   						</div>
                   		
                   						<div class="form_section">
                    						<div class="form_section_title">
                    							<label>상품 이미지</label>
                    						</div>
                    						<div class="form_section_content">

												<div id="uploadResult">
																		
												</div>
                    						</div>
                    					</div>
                   		
                   		
                   		
                   				<div class="form_section">
                   						<div class="form_section_title">
                   							<label>카테고리</label>
                   						</div>
                   							
                   						<div class="form_section_content">
                   							
                   						
                   							<div class="cate_wrap">
                   								<span>분류</span>
                   									<select class="cate2" disabled>
                   									<option value="none">선택</option>
                   									</select>
                   							</div>
                   						</div>
                   						
                   					
                   				</div>
                   		
                   				<div class="form_section">
                   					<div class="form_section_title">
                   						<label>제품특징</label>
                   					</div>
                   					
                   					<div class="form_section_content">
                   						<textarea class="input_block" name="productIntro" readonly="readonly"><c:out value='${productIntro.productInfo }'/></textarea>
                   					</div>
                   				</div>
                   				
                   				
                   				<div class="form_section">
                   					<div class="form_section_title">
                   						<label>등록 날짜</label>
                   					</div>
                   					<div class="form_section_content">
                   						<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${productIntro.regDate}" pattern="yyyy-MM-dd"/>"
                   						style="text-align: center">
                   					</div>
                   				</div>
                   				
                   				<div class="form_section">
                   					<div class="form_section_title">
                   						<label>수정 날짜</label>
                   					</div>
                   				
                   					<div class="form_section_content">
                   						<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${productIntro.updateDate}" pattern="yyyy-MM-dd"/>"
                   						style="text-align: center">
                   					</div>
                   				</div>
                   				
                   				
                   				
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">제품 목록</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    	</div> 
                    
                    
                    </div>  
                                   		
               
                		</c:if>   
                            </div>
                        </div>
                    </div>

                </div>
			     </div>
                </div>


            </div>
            <!-- End of Main Content -->
 				<form id="moveForm" method="get">
                	<input type="hidden" name="productId" value='<c:out value="${productIntro.productId }"/>'>
                	<input type="hidden" name="productPrice" value='<c:out value="${productIntro.productPrice }"/>'>
                	<input type="hidden" name="productPageNum" value='<c:out value="${pcri.productPageNum }"/>'>
                	<input type="hidden" name="productAmount" value='<c:out value="${pcri.productAmount }"/>' >
                	<input type="hidden" name="productKeyword" value='<c:out value="${pcri.productKeyword }"/>'>
                </form>
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Kim Young Hwan 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

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

$(document).ready(function(){
	
	
	let productId = '<c:out value="${productIntro.productId}"/>';
	let uploadResult  = $("#uploadResult");
	
	$.getJSON("/admin/getAttachList", {productId : productId}, function(arr){
		
		
		if(arr.length === 0 ){
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='/resources/img/non_image2.png'>";
			str += "</div>";
			
			uploadResult.html(str);
			return;
		}
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";+ fileCallPath +"'>";
		str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
		str += "</div>";		
		uploadResult.html(str);
		console.log(str);
	});
	
});


	
	//카테고리
	
	let cateList = JSON.parse('${cateList}');

	console.log("cateList:::::::" + cateList);
	
	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();

	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");

	//카테고리 배열 초기화 매서드
	function makeCateArray(obj, array, cateList, tier){
		for(let i = 0 ; i < cateList.length; i++){
			if(cateList[i].tier === tier){
				obj = new Object();
				
				obj.cateName = cateList[i].cateName;
				obj.cateCode = cateList[i].cateCode;
				obj.cateParent = cateList[i].cateParent;
				
				array.push(obj);
			}
				
		}
	}

	//배열 초기화
	
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	
	let targetCate = '${productIntro.categoryId}';
	let targetCate2 ='${productIntro.cateCode}';
	
	
	for(let i = 0; i < cate2Array.length; i++){
		if(targetCate2 === cate2Array[i].cateCode){
			targetCate2 = cate2Array[i];
		}
	}
	
	for(let i = 0; i< cate2Array.length; i++){
		if(targetCate2.cateParent === cate2Array[i].cateParent){
			cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>"+cate2Array[i].cateName+"</option>");
		}
	}
	
	$(".cate2 option").each(function(i,obj){
		if(targetCate2.cateCode === obj.value){
			$(obj).attr("selected", "selected");
		}
	});
	
	/////////////////////////////
  	for(let i = 0; i < cate1Array.length; i++){
  		cateSelect1.append("<option value='"+ cate1Array[i].cateCode+"'>"+ cate1Array[i].cateName + "</option>");
  	}
	console.log('targetCate2 : ' + targetCate2)
	console.log('targetCate2.cateName : ' + targetCate2.cateName);
	console.log('targetCate2.cateCode : ' + targetCate2.cateCode);
	console.log('targetCate2.cateParent : ' + targetCate2.cateParent);
	
	
	
	
	


let moveForm = $("#moveForm");

/* 작가 관리 페이지 이동 버튼 */
$("#cancelBtn").on("click", function(e){
	
	e.preventDefault();
	
	$("input[name=productId]").remove();
	moveForm.attr("action", "/admin/productManage")
	moveForm.submit();
	
});

/* 작가 수정 페이지 이동 버튼 */
$("#modifyBtn").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.attr("action", "/admin/productModify");
	moveForm.submit();
	
});



</script>

</body>

</html>