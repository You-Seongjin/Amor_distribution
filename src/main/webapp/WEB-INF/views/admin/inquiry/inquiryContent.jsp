<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아모르 관리자 : 1:1 문의 내용</title>
</head>
<body>
<%@include file="../admin_header.jsp" %>
<div class="content">
<div class="content-title"><label class="titletext">1:1 문의 내용</label>
</div>
	<div class="titleDiv">
	<label class="info">제목</label>
	<span>${dto.inquiry_subject }</span>
	</div>
	<div class="titleDiv">
	<label class="info">회원 아이디</label>
	<span>${dto.member_id }</span>
	</div>
	<div class="titleDiv">
	<label class="info">이메일</label>
	<span>${dto.member_email }</span>
	</div>
	<div class="titleDiv">
	<label class="info">전화번호</label>
	<span>${dto.member_tel }</span>
	</div>
	<div class="titleDiv">
	<label class="info">내용</label>
	<span>${dto.inquiry_content }</span>
	</div>
	<div class="titleDiv">
	<label class="info">첨부 파일</label>
	<span>${dto.inquiry_filename }</span>
	</div>
</div>
<div class="content">
<div class="content-title"><label class="titletext">1:1 문의 내용</label></div>
<form name="inquiryAnswerForm" action="inquiryAnswer.do" method="post">
	<div class="titleDiv">
	<label class="info">답변내용</label>
	<textarea name="inquiry_content" maxlength="1000" required="required" class="content" id="text"></textarea>
	<div class="countDiv">(<span id="count">0</span> / 1000)</div>
	</div>
	<div class="btnDiv">
		<input type="button" value="취소" onclick="javascript: location.href='/amor/admin/inquiry/inquiryList.do'">
		<input type="submit" value="등록하기">
	</div>
</form>
</div>
</body>
</html>