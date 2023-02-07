<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="/resources/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
   <script src="https://kit.fontawesome.com/8a241b3425.js" crossorigin="anonymous"></script>
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
    <link href="/resources/css/admin/productEnroll.css" rel="stylesheet">

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
            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/productManage"  >
                    <i class="fa-solid fa-bars"></i>
                    <span>상품 목록</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item active">
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
                <nav class="navbar">

                    
                    

                    <!-- Topbar Navbar -->
                    <span class=" d-none d-lg-inline text-gray-600 small">${member.memberName }님 환영합니다. </span> 
                    <ul class="navbar-nav ml-auto">

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

                    <!-- Page Heading -->

                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 등록</span></div>
                    
                    <div class="admin_content_main">
                    	<form action="/admin/productEnroll" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품명</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="productName">
                    				<span id="warn_productName">제품명을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="productPrice">
                    				<span id="warn_productPrice">제품가격을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>카테고리</label>
                    			</div>
                    			<div class="form_section_content">
                    				<div class ="cate_wrap">
                    				<select class="cate1" name="categoryId">
                    					<option selected value ="none">선택</option>            					
                    				</select>
                    				</div>
                    			</div>
                    			<div class="form_section_content">
                    				<div class ="cate_wrap">
                    				<select class="cate2" name ="cateCode">
                    					<option selected value="none">선택 </option>                    					
                    				</select>
                    				<span id="warn_cateCode">카테고리를 선택해주세요.</span>
                    				</div>
                    			</div>
                    			
                    			</div>
                    	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" id ="fileItem" name='uploadFile' style="height: 50px;">
									<div id="uploadResult">
									
									</div>
                    			</div>
                    		</div>  
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품정보</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="productInfo" type="text">
                    				<span id="warn_productInfo">제품소개를 입력해주세요.</span>
                    			</div>
                    		</div>
                  
                  
                    	</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
	                    	</div> 
                    </div>
                    
                    
                    
                </div>
                
                <!-- /. -->

            </div>
            <!-- End of Main Content -->


        </div>
        <!-- End of Content Wrapper -->
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
    <!-- End of Page Wrapper -->
</div>
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
 	let enrollForm = $("#enrollForm")
 	
/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	
	/*이미지 존재시 삭제*/
	if($(".imgDeleteBtn").length > 0){
		console.log("이미지삭제");
		deleteFile();
	}
	
	let formData = new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	console.log("fileList::::: "+ fileList);
	console.log("fileObj::::" + fileObj);
	
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	}
	
	formData.append("uploadFile", fileObj);

$.ajax({
	url: '/admin/uploadAjaxAction',
	processData : false,
	contentType : false,
	data : formData,
	type : 'POST',
	dataType : 'json',
	success : function(result){
		console.log(result);
		showUploadImage(result);
	},
	error : function(result){
		alert("이미지 파일이 아닙니다.");
	}
});
	
	
});

/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png|jpeg)$");
let maxSize = 5242880; 	

function fileCheck(fileName, fileSize){

	if(fileSize >= maxSize){
		alert("파일 용량이 너무 큽니다.");
		return false;
	}
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	
	return true;		
	
}

//이미지 출력
function showUploadImage(uploadResultArr){
	
		//전달받은 데이터 검증
		if(!uploadResultArr || uploadResultArr.length == 0	){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
		
		str += "<div id = 'result_card>";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
		str += "</div>";
		
		console.log("str:::::::: " + str);
		uploadResult.append(str);
}


//이미지 삭제 버튼

$("#uploadResult").on("click",".imgDeleteBtn", function(e){
	deleteFile();
});

/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/admin/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});

}
 	
 	/* 취소 버튼 */
$("#cancelBtn").click(function(){
    location.href="/admin/productManage"
});
	
 	
 	 
 	/* 등록 버튼 */
 	$("#enrollBtn").click(function(e){    
 		
 		e.preventDefault();
 		
 		//공백 확인
 		let nameCheck = false;
 		let categoryCheck = false;
 		let infoCheck = false;
 		let priceCheck = false;
 		let cateCodeCheck = false;
 		
 		
 		let productName = $('input[name=productName]').val();
 		let productPrice = $('input[name=productPrice]').val();
 		let categoryId = $('select[name=categoryId]').val();
 		let productInfo = $('input[name=productInfo]').val();
 		let cateCode = $('select[name=cateCode]').val();
 		
 		
 		
 		let wProductName = $('#warn_productName');
 		let wProductPrice = $('#warn_productPrice');
 		let wCategoryId = $('#warn_categoryId');
 		let wProductInfo = $('#warn_productInfo');
 		let wCateCode = $('#warn_cateCode');
 		//이름 공란 체크
 		if(productName ===''){
 			wProductName.css('display', 'block');
 			nameCheck = false;
 			
 		}else {
 			wProductName.css('display','none');
 			nameCheck = true;
 		}
 		
 		//가격 체크
 		if(productPrice === ''){
 			wProductPrice.css('display','block');
 			priceCheck = false;
 		}else {
 			wProductPrice.css('display','none');
 			priceCheck = true;
 		}
 		
 		//카테고리 체크
 		if(categoryId ==='none'){
 			wCategoryId.css('display','block');
 			categoryCheck = false;
 		} else{
 			wCategoryId.css('display', 'none');
 			categoryCheck = true;
 		}
 		
 		
 		//카테코드 체크
 		if(cateCode === 'none'){
 			wCateCode.css('display','block');
 			cateCodeCheck = false;
 		} else{
 			wCateCode.css('display','none');
 			cateCodeCheck = true;
 		}
 		//제품소개 체크
 		if(productInfo ===''){
 			wProductInfo.css('display', 'block');
 			infoCheck = false;
 		}else{
 			wProductInfo.css('display','none');
 			infoCheck = true;
 		}
 		
 		//최종검사
 		if(nameCheck && priceCheck && categoryCheck && infoCheck &&cateCodeCheck){
 			
 		
 	  enrollForm.submit();		
 		}	else{
 		
 			return false;
 		}
 	    
 	});
 	
 	
	//카테고리
	let cateList = JSON.parse('${cateList}');
	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	
	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");
	
	//카테고리 배열 초기화
	function makeCateArray(obj,array,cateList,tier){
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
	makeCateArray(cate1Obj,cate1Array , cateList,1);
	makeCateArray(cate2Obj,cate2Array , cateList,2);  
	
	//대분류 <Option> 태그
	for(let i = 0; i < cate1Array.length; i++){
		cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>"+ cate1Array[i].cateName + "</option>");
	}
	
	//중분류 태그
	$(cateSelect1).on("change",function(){
		let selectVal1 = $(this).find("option:selected").val();
		cateSelect2.children().remove();
		cateSelect2.append("<option value='none'>선택</option>")
	
		for(let i = 0; i < cate2Array.length; i++){
			if(selectVal1 === cate2Array[i].cateParent){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");
			}
		}
	});


</script>
</body>

</html>