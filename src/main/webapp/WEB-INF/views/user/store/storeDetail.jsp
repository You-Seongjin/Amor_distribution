<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아모르 : 스토어 결제확인</title>
<link rel="stylesheet" href="/amor/resources/css/user/storeDetail.css">
</head>
<%@include file="../header.jsp" %>
<body>
<!-- BORDER BAR-->
<div class="border-bar">
	<div class="border-title">
		결제 내역 확인
	</div>
</div>
<div class="body-inner">
<div class="payForm">
	<table class="payTable">
	<tbody>
		<tr>
			<th>상품명</th>
			<td>콜라</td>
			<th>결제일자</th>
			<td>2023.09.12 10:12:12</td>
		</tr>
		<tr>
			<th>결제수단</th>
			<td>카카오페이</td>
			<th>결제금액</th>
			<td>300,000원</td>
		</tr>
	</tbody>
	</table>
	<div class="btnDiv">
		<button class="submitBtn1">스토어 내역 보기</button>
		<button class="submitBtn2">확인</button>	
	</div>
</div>
</div>
</body>
	<%@include file="../footer.jsp" %>
</html>