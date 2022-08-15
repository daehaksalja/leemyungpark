<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsModify.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
</head>
<body>

			
				
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 등록</span></div>
                    <div class="admin_content_main">
                    	<form action="/admin/goodsModify" method="post" id="modifyForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 제목</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipName" value="${goodsInfo.shipName}">
                    				<span class="ck_warn bookName_warn">책 이름을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipPrice" value="${goodsInfo.shipPrice}">
                    				<span class="ck_warn shipPrice_warn">상품 가격을 입력해주세요.</span>
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipStock" value="${goodsInfo.shipStock}">
                    				<span class="ck_warn shipStock_warn">상품 재고를 입력해주세요.</span>
                    			</div>
                    		</div>          
                    		   		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 소개</label>
                    			</div>
                    			<div class="form_section_content bit">
                    				<textarea name="shipIntro" id="shipIntro_textarea">${goodsInfo.shipIntro}</textarea>
                    				<span class="ck_warn shipIntro_warn">책 소개를 입력해주세요.</span>
                    			</div>
                    		</div>        		
                    		
                    		<input type="hidden" name='shipId' value="${goodsInfo.shipId}">
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    	</div> 
                    </div>  
                	<form id="moveForm" action="/adminMenu/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
						<input type="hidden" name='shipId' value="${goodsInfo.shipId}">
                	</form>                     
                </div>
 
<script type="text/javascript">
/* 취소 버튼 */
$("#cancelBtn").on("click", function(e){
	e.preventDefault();
	$("#moveForm").submit();
});

/* 수정 버튼 */
$("#modifyBtn").on("click", function(e){
	e.preventDefault();
	$("#modifyForm").submit();
});
</script>
</body>
</html>