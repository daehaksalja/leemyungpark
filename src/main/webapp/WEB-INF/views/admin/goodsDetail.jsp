<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
</head>
<body>
<div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 상세</span></div>

                    <div class="admin_content_main">

                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>ship 제목</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipName" value="<c:out value="${goodsInfo.shipName}"/>" disabled>
                    			</div>
                   			 </div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>등록 날짜</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input value="<fmt:formatDate value='${goodsInfo.regDate}' pattern='yyyy-MM-dd'/>" disabled>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>최근 수정 날짜</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input value="<fmt:formatDate value='${goodsInfo.updateDate}' pattern='yyyy-MM-dd'/>" disabled>
                    			</div>
                    		</div>                    		                    		
                    	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>ship 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipPrice" value="<c:out value="${goodsInfo.shipPrice}"/>" disabled>
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>ship 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="shipStock" value="<c:out value="${goodsInfo.shipStock}"/>" disabled>
                    			</div>
                    		</div>          
                    	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>ship 소개</label>
                    			</div>
                    			<div class="form_section_content bit">
                    				<textarea name="shipIntro" id="shipIntro_textarea" disabled>${goodsInfo.shipIntro}</textarea>
                    			</div>
                    		</div>        		
                    		
                   		
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">상품 목록</button>
	                    		<button id="modifyBtn" class="btn enroll_btn">수정 </button>
	                    	</div> 
                    </div>      

                	
                	<form id="moveForm" action="/adminMenu/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>
                	
                </div>
                
                <script type="text/javascript">
                
                /* 목록 이동 버튼 */
            	$("#cancelBtn").on("click", function(e){
            		e.preventDefault();
            		$("#moveForm").submit();	
            	});	
            	
            	/* 수정 페이지 이동 */
            	$("#modifyBtn").on("click", function(e){
            		e.preventDefault();
            		let addInput = '<input type="hidden" name="shipId" value="${goodsInfo.shipId}">';
            		$("#moveForm").append(addInput);
            		$("#moveForm").attr("action", "/admin/goodsModify");
            		$("#moveForm").submit();
            	});
            	</script>
</body>
</html>