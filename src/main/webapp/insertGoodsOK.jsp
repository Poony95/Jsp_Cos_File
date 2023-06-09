<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	request.setCharacterEncoding("utf-8");
	
	//파일을 업로드 하기 위한 폴더(data)의 실제경로를 
	//알아옵니다.
	String path = request.getRealPath("data");
	System.out.println(path);
	
	MultipartRequest multi 
	= new MultipartRequest(request,
			path, 
			1024*1024*5,
			"UTF-8",
			null);
	
	String name = multi.getParameter("name");
	String fname = multi.getFilesystemName("fname");
	int no = Integer.parseInt(multi.getParameter("no"));
	int qty = Integer.parseInt(multi.getParameter("qty"));
	int price = Integer.parseInt(multi.getParameter("price"));
	
	GoodsVO g = new GoodsVO();
	g.setNo(no);
	g.setName(name);
	g.setPrice(price);
	g.setQty(qty);
	g.setFname(fname);
	
	GoodsDAO dao = new GoodsDAO();
	int re = dao.insert(g);
	if (re == 1){
		out.print("상품등록 성공");
	}else{
		out.print("상품등록 실패");
	}
%>

<a href="insertGoods.jsp">상품등록</a><br>
<a href="listGoods.jsp">상품목록</a><br>
</body>
</html>









