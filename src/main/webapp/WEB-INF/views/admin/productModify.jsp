<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% pageContext.setAttribute("br","<br/>");
	pageContext.setAttribute("cn","\n");%>
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

    <title>제품 수정 페이지</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="../resources/css/admin/productModify.css" rel='stylesheet'>
    <!-- Custom styles for this template-->
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
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
                    <div class="card shadow ">
                        <div class="card-header">
                            <h6 class="font-weight-bold" style="color:#fff; font-size: 18px;">수정 페이지</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <!-- Area Chart -->
                            <div class="card shadow mb-4">
                               
                                <div class="card-body">
                                   
                                    
                               
                                 <div class="admin_content_main">
            <form id="modifyForm" action="/admin/productModify" method="post">
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>No</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" name="productId" readonly="readonly" value="<c:out value='${productIntro.productId }'></c:out>">
	                   			</div>
	                   		</div>                    
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Name</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input name="productName" value="<c:out value='${productIntro.productName }'></c:out>" > 
	                   				
	                   			</div>
	                   				
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Price</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input name="productPrice" value="<c:out value='${productIntro.productPrice }'></c:out>" >
	                   			</div>
	                   				
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Category</label>
	                   			</div>
	                   			
	                   			
	                   			<div class="form_section_content">
	                   				<div class="cate_wrap">
	                   					<select class="cate1" name="categoryId">
                    						<option selected value="none">선택</option>
                    					</select>
	                   				</div>
	                   				</div>
	                   			
	                   			
	                   		
	                   			<div class="form_section_content">
                    				<div class="cate_wrap">
                    					
                    					<select class="cate2" name="cateCode">
                    						<option selected value="none">선택</option>
                    					</select>
                    				
                    				</div>
                    			
                    			<!-- 
                    			<div class="form_section_content">
                    			<div class="cate_wrap">
                    				<select name="cateCode">
                    					<option value="none" selected>=== 선택 ===</option>
                    					<option value="espresso">에스프레소</option>
                    					<option value="coldBrew">콜드브루</option>
                    					<option value="frappuccino">프라푸치노</option>
                    					<option value="blended">블랜디드</option>
                    					<option value="tea">티</option>
                    					<option value="sandwich">샌드위치</option>
                    					<option value="cake">케이크</option>
                    					<option value="bread">빵</option>
                    					<option value="snack">스낵</option>
                    				</select>
                    			 -->
                    			</div>
                    				
                    		</div>
                    		
	                   		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>Image</label>
                    			</div>
                    			<div class="form_section_content">
                    			
									<input type="file" id ="fileItem" name='uploadFile' style="height: 50px;">
									<div id="uploadResult">
																		
									</div>									
                    			</div>
                    		</div>
                    		
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Information</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<textarea name="productInfo" ><c:out value='${productIntro.productInfo }'/></textarea>
	                   				
	                   			</div>
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Insert Date</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${productIntro.regDate}" pattern="yyyy-MM-dd"/>">
	                   			</div>
	                   		</div>
	                   		
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>Update Date</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${productIntro.updateDate}" pattern="yyyy-MM-dd"/>">
	                   			</div>
	                   		</div>
	                   		
	                   		
	                 		<div class="btn_section">
	                   			<button id="cancelBtn" class="btn">취소</button>
		                    	<button id="modifyBtn" class="btn modify_btn">수 정</button>
		                    	<button id="deleteBtn" class="btn delete_btn">삭 제</button>
		                    </div> 
		                    
		                    
	                    </form>
                    </div>  
                               
                	
                		 
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
                        <span>Copyright &copy; Kim Young Hwan 2022 - 2023</span>
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
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/admin/getAttachList", {productId : productId}, function(arr)	{
		console.log(arr);
		
		if(arr.length === 0){
			
			let str = "";
			str += "<div id = 'result_card'>";
			str += "<img src = '/resources/img/non_image.png'>";
			str += "</div>";
			
			uploadResult.html(str);
			return;
		}
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";
		str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";				
		str += "</div>";
		
		console.log("str :::::: "+ str);
		uploadResult.html(str);		
	
	}); // GetJSON
	
	
	let cateList = JSON.parse('${cateList}');
	
	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	
	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");
	
	//카테고리 배열 초기화 메서드
	function makeCateArray(obj, array, cateList, tier){
		for(let i = 0; i < cateList.length; i++){
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
	
	makeCateArray(cate1Obj, cate1Array, cateList, 1);
	makeCateArray(cate2Obj, cate2Array, cateList, 2);
	
	let targetCate = '';
	let targetCate2 = '${productIntro.cateCode}';
	
	//소분류
	for(let i = 0; i < cate2Array.length; i++ ){
		if(targetCate2 === cate2Array[i].cateCode){
			targetCate2 = cate2Array[i];
		}
	}
	for(let i = 0; i < cate2Array.length; i++){
		if(targetCate2.cateParent === cate2Array[i].cateParent){
			cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>"+cate2Array[i].cateName+"</option>");
		}
	}
	
	$(".cate2 option").each(function(i,obj){
		if(targetCate2.cateCode === obj.value){
			$(obj).attr("selected", "selected");
		}
	});
	
	//대분류
	for(let i = 0; i < cate1Array.length; i++){
		if(targetCate2.cateParent === cate1Array[i].cateCode){
			targetCate = cate1Array[i];
		}
	}
	
	for(let i =0; i < cate1Array.length; i++){
		if(targetCate.cateParent === cate1Array[i].cateParent){
			cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>"+ cate1Array[i].cateName+"</option>");
		}
	}
	$(".cate1 option").each(function(i,obj){
		if(targetCate.cateCode === obj.value){
			$(obj).attr("selected", "selected");
		}
	});
	
});

	let moveForm = $("#moveForm");
	let modifyForm = $("#modifyForm");
	
	/*  상세 페이지 이동 버튼 */
	$("#cancleBtn").on("click", function(e){
	
		e.preventDefault();
				
		moveForm.attr("action", "/admin/productDetail")
		moveForm.submit();
		
	});
	
	/*  수정 버튼 작동 및 유효성 검사 */
	$("#modifyBtn").on("click", function(e){

		let productName = $(".form_section_content input[name='productName']").val();
		let productInfo = $(".form_section_content textarea").val();	
		let productPrice = $(".form_section_content input[name='productPrice']").val();
		let categoryId = $(".form_section_content select[name='categoryId']").val();
		let cateCode = $(".form_section_content select[name='cateCode']").val();
		
		let	nameCk = false;
		let infoCk = false;		
		let priceCk = false;
		let categoryIdCk = false;
		let cateCodeCk = false;
		
		e.preventDefault();
		
		if(productName == '' || productName == null){
			alert("상품명을 입력해주세요");
		} else {
			
			nameCk = true;
		}
		
		
		if(productInfo == '' || productInfo == null ){
			alert("상품 정보를 입력해주세요.");
		} else {
		
			infoCk = true;
		}
		
		if(productPrice == '' || productPrice == null ){
			alert("상품 가격을 입력해주세요.");
		} else {
		
			priceCk = true;
		}
		if(categoryId == '' || categoryId == null ){
			alert("음료 / 푸드를 선택해주세요.");
		} else {
		
			categoryIdCk = true;
		}

		if(cateCode == '' || cateCode == null ){
			alert("상품 카테고리를 선택해주세요.");
		} else {
		
			cateCodeCk = true;
		}

		if(nameCk && infoCk && priceCk && categoryIdCk && cateCodeCk){
			modifyForm.submit();	
		} else {
			return false;
		}
		
		
	});

	//이미지 업로드
	
	$("input[type='file']").on("change", function(e){
		//이미지 존재시 삭제
		if($("#result_card").length > 0 ){
			deleteFile();
		}
		
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		
		$.ajax({
			url : '/admin/uploadAjaxAction',
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json' ,
			success : function(result){
				
				showUploadImage(result);
			},
			error : function(result){
				alert("이미지 파일이 아닙니다.");
			}
		});
	});
	/* var, method related with attachFile */
	let regex = new RegExp("(.*?)\.(jpg|png|jpeg)$");
	let maxSize = 1048576; //1MB	
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr){
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
		//replace 적용 하지 않아도 가능
		//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		
		str += "<div id='result_card'>";
		str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
		str += "</div>";		
		
   		uploadResult.append(str);     
        
	}
	
	</script>
<script>
	/*삭제 script*/
	$("#deleteBtn").on("click",function(e){
		e.preventDefault();
		let moveForm = $("#moveForm");
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="productId" value="${productIntro.productId}">');
		moveForm.attr("action", "/admin/productDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	/*이미지 삭제 버튼*/
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		deleteFile();
	});
	
	//파일 삭제
	function deleteFile() {
		console.log("이미지 삭제");
		$("#result_card").remove();
	}
</script>
<script>
	let cateList = JSON.parse('${cateList }');
	
	let cate1Array = new Array();
	let cate2Array = new Array();
	
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	
	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");
	
	/*카테고리 배열 초기화 메서드*/
	function makeCateArray(obj, array, cateList, tier){
		for(let i = 0; i < cateList.length; i++){
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
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	
	// 소분류 <option>
	
	$(cateSelect1).on("change",function(){
		
		let selectVal1 = $(this).find("option:selected").val();
		
		cateSelect2.children().remove();
		
		cateSelect2.append("<option value='none'> 선택 </option>");
		
		for(let i = 0; i < cate2Array.length; i++){
			if(selectVal1 === cate2Array[i].cateParent){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>"+ cate2Array[i].cateName + "</option>");
			}
		}
	});
	
	
	



</script>
</body>

</html>