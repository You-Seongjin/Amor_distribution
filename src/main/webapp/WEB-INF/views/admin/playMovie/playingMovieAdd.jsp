<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아모르: 상영영화등록</title>
<link rel="styleSheet" type="text/css" href="/amor/resources/css/admin/playingMovieAddUp.css">
<script type="text/javascript" src="../../resources/js/httpRequest.js"></script>
<script>

function show() {
	let movie_idx = document.getElementById('movieRunning').value;
	let param = 'movie_idx='+movie_idx;
	sendRequest ('movieRunning.do',param,showResult,'GET');

}
function showResult() {
	if (XHR.readyState==4) {
		if (XHR.status==200){
			window.alert('4');
			let data=XHR.responseText;
			window.alert('3');
			let objdata=JSON.parse(data);
			window.alert('2');
			
			window.alert(movieRunning);
		}
	}
	
}
</script>
</head>
<body>
<%@include file="../admin_header.jsp" %>
<div class="content">
<div class="content-title"><label class="titletext">상영 시간 등록</label>
</div>
<div class="contentMain">
<div class="table">
<section>
	<article>
	<form name="playingMovieAdd" action="playingMovieAdd.do" method="post">
		<table>
			<tr>
				<td class="playAdd">상영 영화 선택</td>
				<td class="playAdd">
				<select name="movie_idx" class="playAddInput2" id="movieRunning" onchange="show()">
				<c:if test="${empty movieLists }">
					<option selected disabled>등록된 영화가 없습니다.</option>				
				</c:if>
				<c:forEach var="map" items="${movieLists }">
					<option value="${map.MOVIE_IDX}" name="movie_idx">${map.MOVIE_NAME}</option>
				</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td class="playAdd">상영 스크린 선택</td>
				<td class="playAdd">
				<select name="theater_idx" class="playAddInput2">
				<c:if test="${empty screenLists }">
					<option selected disabled>등록된 상영관이 없습니다.</option>				
				</c:if>
				<c:forEach var="map" items="${screenLists }">
					<option value="${map.THEATER_IDX}" name="theater_idx">${map.THEATER_NAME}</option>
				</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td class="playAdd">상영 날짜 선택</td>
				<td class="playAdd"><input type="date" name="playing_movie_date" class="playAddInput"></td>
			</tr>
			<tr>
				<td class="playAdd">상영 시간</td>
				<td class="playAdd"><input type="time" name="playing_movie_start" class="playAddInput">&nbsp;&nbsp;~&nbsp;&nbsp;
				<input type="time" name="playing_movie_end" class="playAddInput"></td>
			</tr>
			<tr>
				<td class="playAddBtn" colspan="2"><input type="submit" value="상영 등록" class="nextBtn">&nbsp;&nbsp;
				<input type="reset" value="다시 작성" class="cancelBtn"></td>
			</tr>
		</table>
	</form>
	</article>
</section>
</div>
</div>
</div>
</body>
</html>