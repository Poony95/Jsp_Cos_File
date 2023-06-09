<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.sist.dao.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	GoodsDAO dao = new GoodsDAO();
	GoodsVO g= dao.findByNo(no);
%>

<h2>상품상세</h2>
<hr>
상품번호 : <%= g.getNo() %><br>
상품이름 : <%= g.getName() %><br>
상품수량 : <%= g.getQty() %><br>
상품가격 : <%= g.getPrice() %><br>
<img src="data/<%=g.getFname()%>">
<hr>

</body>
</html>










