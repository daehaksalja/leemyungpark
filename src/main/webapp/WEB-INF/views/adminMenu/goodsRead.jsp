<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<style>
#videobcg {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 1920px;
	min-height: 1080px;
	width: 100%;
	height: 100%;
	z-index: -1000;
	overflow: hidden;
}
</style>

</head>
<link rel="stylesheet" href="../../../resources/css/goodsRead.css">
<style>
/* 깔끔하게 스크롤바싹없애는 */
html, body, div, video {
	margin: 0;
	padding: 0;
}
body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: #000;
}
.container {
	
}
</style>
<body>
 	<video id="videobcg" preload="auto" autoplay="true" loop="loop"
	muted="muted">

	<source src="../../../resources/css/veryGoodSpace.mp4" type="video/mp4">



</video>
   <div class="header">

			<h1 class="Logo"> <a href="/" class="spaceShip">SPACE SHIP</a></h1>

			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a> 





        <a class="frame-btn" href="/adminMenu" id="logoutBtn"> <span
            class="frame-btn__outline frame-btn__outline--tall"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
               class="frame-btn__line frame-btn__line--tall"></span> <span
               class="frame-btn__line frame-btn__line--flat"></span>
         </span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">admin</span>
         </a>


			<a class="frame-btn" href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>
			</div>
  <div class="neon_effect">
   <h1 class="pGold">PRODUCT Information</h1>
   </div>
   <div class="neon_effect">
<div class="userText">
	  <h2 class="userText1H2">
		shipName  <br>
		shipPrice  <br>
	   shipStock <br>
	   shipIntro?  <br>

	</h2>
</div>
<div class="neon_effect">
    	<h2 class="userText2H2">
    	${dto.shipName}<br>
    	${dto.shipPrice}<br>
    	${dto.shipStock}<br>
    	${dto.shipIntro}<br>

    	</h2>
  </div>  


			<div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/goodsUpdate?shipId=${dto.shipId}" class="homeATag">수정하기</a>
				</div>
   </div> 
</body>
</html> 