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
   <link rel="stylesheet" href="../../../resources/css/goodsDetail2.css">
</head>
<body>
 <div class="wrapper">
	<div class="wrap">
			<div class="search_area">
                	<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<select name="type">
                					<option value="T">책 제목</option>
                					<option value="A">작가</option>
                				</select>
                				<input type="text" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
			</div>
		<div class="content_area">
						<div class="line">
			</div>			
			<div class="content_top">
				<div class="ct_left_area">
					<div class="image_wrap" data-shipid="${goodsInfo.imageList[0].shipId}" data-path="${goodsInfo.imageList[0].uploadPath}" data-uuid="${goodsInfo.imageList[0].uuid}" data-filename="${goodsInfo.imageList[0].fileName}">
						<img>
					</div>				
				</div>
				<div class="ct_right_area">
					<div class="title">
						<h1>
							${goodsInfo.shipName}
						</h1>
					</div>
					<div class="line">
					</div>
					
					<div class="line">
					</div>	
					<div class="price">
						<div class="sale_price">정가 : <fmt:formatNumber value="${goodsInfo.shipPrice}" pattern="#,### 원" /></div>
						<div class="discount_price">
												
					</div>			
					<div class="line">
					</div>	
					<div class="button">						
						<div class="button_quantity">
							주문수량
							<input type="text" value="1">
							<span>
								<button>+</button>
								<button>-</button>
							</span>
						</div>
						<div class="button_set">
							<a class="btn_cart">장바구니 담기</a>
							<a class="btn_buy">바로구매</a>
						</div>
					</div>
				</div>
			</div>
			<div class="line">
			</div>				
			<div class="content_middle">
				<div class="ship_intro">
					${goodsInfo.shipIntro}
				</div>
			</div>
			<div class="line">
			</div>				
			<div class="content_bottom">
				리뷰
			</div>
			
		</div>
	</div>	
</div> 

</div> 

<script>
$(document).ready(function(){
	/* 이미지 삽입 */
	const bobj = $(".image_wrap");
	
	if(bobj.data("shipid")){
		const uploadPath = bobj.data("path");
		const uuid = bobj.data("uuid");
		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
		
		bobj.find("img").attr('src', '/display?fileName=' + fileCallPath);
	} else {
		bobj.find("img").attr('src', '/resources/img/goodsNoImage.png');
	}
	

	
});	
</script>
</body>
</html>