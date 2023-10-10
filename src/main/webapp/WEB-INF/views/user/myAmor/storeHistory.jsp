<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아모르 : 스토어 구매내역</title>
<link rel="stylesheet" href="/amor/resources/css/user/storePaymentList.css" />
</head>
<style>
.body-inner{
  width: 1100px;
  margin: 0 auto;
  position: relative;
  padding-top: 200px;
}
.gray-section{
   width: 100%;
   height: 350px;
   background: #F8F8F8;

}
.mypagetitle .title1{
	color: #000;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
}  
.mypagetitle .title2{
	color:#979797;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
} 
.mypageContent{
	padding-top: 150px;
	margin: 0 auto;
	width: 1000px;
	margin-bottom: 50px;
}
.nullcontent{
	margin-left:50px;
	margin-top:50px;
}
#btn2{
    background: #1A2C82;
    color: #FFF;
    border: 1px solid #1A2C82;
    cursor: pointer;
}
</style>
<body>
<%@include file="../header.jsp" %>
<div class="gray-section">
	<div class="body-inner">
<%@include file="../mypageHeader.jsp" %>
<div class="mypagetitle"><a href = "storeHistory.do"><label class="title1">상품 내역</label></a> <a href="storeCancelList.do"><label class="title2">취소 내역</label></a></div>
</div></div>
<div class="mypageContent">
<c:if test="${!empty list}">
<c:forEach var="temp" items="${list}" >
<div class="contentbox">
  <img class="movieimg" src="/amor/resources/upload/product/${temp.productimg}"/>
  <div class="contentbox2">
    <div class="contentbox3">
      <div class="content-container">
        <span>
          <span class="span">
          ${temp.productname}<br/>
          </span>
          <span class="span2">
          <br/></span>
          <span class="span3">
            결제 날짜
          </span>
          <span class="span4">
            ${temp.changePaymentDate}<br/>
          </span>
          <span class="span5">
          결제 방법
          </span>
          <span class="span6">
            카카오페이<br/>
          </span>
          <span class="span7">
          수량
          </span>
          <span class="span8">
            ${temp.amount}개<br/>
          </span>
           <span class="span9">
           금액     
          </span>
          <span class="span10">
              ${temp.changePrice} <br/>
          </span>
          </span>
      </div>
    </div>
    <c:if test="${temp.status == '미승인'}">
    	<c:url var="storeCancell" value="/myAmor/storeCancellation.do" >
			<c:param name="paymentidx">${temp.paymentidx}</c:param>    
		</c:url>
   			<a href = "${storeCancell}"><input type = "button" value = "구매 취소" class = "button"></a>
   	</c:if>
  	<c:if test="${temp.status == 'y'}">
  		<span class = "cancelmsg">구매 완료</span>
  	</c:if>
  </div>
</div>
</c:forEach>
</c:if>
<c:if test="${empty list}">
<div class = "nullcontent">구매 내역이 없습니다.</div>
</c:if>
<c:if test="${!empty page}">
<div class = "paging">${page}</div>
</c:if>
</div>
</body>
<%@include file = "../footer.jsp" %>
</html>