<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아모르 : 관리자 회원 예매 목록</title>
<link rel="styleSheet" type="text/css" href="/amor/resources/css/admin/ticketingList.css">
<script type="text/javascript" src="../../resources/js/httpRequest.js"></script>
<script type="text/javascript">
function ticketingListSearch(){
let result = document.all.ticketingListSearch.value;
	if(result == "" || result == null){
		window.alert('검색어 입력바람');
	}else{
		location.href='ticketingList.do?search='+result;
	}
}

function ticketingCancel(idx){
	let ticketing_idx = idx;
	let param = 'ticketing_idx='+ticketing_idx;
	document.getElementById('ticketingcancel'+ticketing_idx).innerHTML = '취소완료';
	sendRequest('ticketingstateChk.do',param, null, 'POST');
}

</script>
</head>
<body>
<%@include file="../admin_header.jsp" %>
<div class="content">
<div class="content-title"><label class="titletext">회원 예매 목록</label>
<div class="contentsearch">
	<div class="search">
		<input type="text"  name="ticketingListSearch" placeholder="아이디를 검색해주세요." class="box">
		<img src="img/Icon_Search.png" class="btn" onclick="ticketingListSearch()">
	</div>
</div>
</div>
<div class="contentMain">
<div class="tableDiv">
	<table class="commonTable">
	<thead>
	<tr>
		<th>번호</th>
		<th>회원 아이디</th>
		<th>회원 이름</th>
		<th>회원 연락처</th>
		<th>영화 제목</th>
		<th>상영관이름</th>
		<th>좌석</th>
		<th>상영날짜</th>
		<th>상영시간</th>
		<th>실 예매시간</th>
		<th>가격</th>
		<th>예매인원</th>
		<th>결제방법</th>
		<th>예매취소</th>
		
	</tr>
	</thead>
	<c:if test="${pagsize != 0}">
	<tfoot>
		<tr>
			<td colspan="15"><div class="paging">${pageStr}</div></td>
		</tr>
	</tfoot>
	</c:if>
	<tbody>
	<c:if test="${empty lists }">
		<tr>
			<td colspan="14">없음</td>
		</tr>
	</c:if>
	<c:forEach var="dto" items="${lists }">
	<tr>
		<td>${dto.ticketing_idx}</td>
		<td>${dto.member_id}</td>
		<td>${dto.member_name}</td>
		<td>0${dto.member_tel1}-${dto.member_tel2}</td>
		<td>${dto.movie_name}</td>
		<td>${dto.theater_name}</td>
		<td>${dto.ticketing_seat}</td>
		<td>${dto.playing_movie_date}</td>
		<td>${dto.playing_movie_start}</td>
		<td>${dto.ticketing_reservetime}</td>
		<td>${dto.ticketing_price}</td>
		<td>${dto.ticketing_personnel}</td>
		<td>${dto.ticketing_payment}</td>
		<td id="ticketingcancel${dto.ticketing_idx}">
		<c:if test="${dto.ticketing_state eq 'y'}"><input class="btnticketingcancel" type="button" value="취소" onclick="ticketingCancel(${dto.ticketing_idx})">
		</c:if>
		<c:if test="${dto.ticketing_state eq 'n'}">취소완료</c:if>
		</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div>
</div>
</div>
</body>
</html>