<%@page import="com.sist.vo.BoardVO"%>
<%@page import="com.sist.dao.BoardDAO"%>
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
	BoardDAO dao = new BoardDAO();
	BoardVO b=  dao.findByNo(no);
%>
<h2>게시물 상세</h2>
글번호 : <%=b.getNo() %><br>
글제목 : <%=b.getTitle() %><br>
작성자 : <%=b.getWriter() %><br>
글내용 : <br>
<textarea rows="10" cols="80" readonly="readonly"><%=b.getContent() %></textarea>
<br>
조회수 : <%=b.getHit() %><br>
등록일 : <%=b.getRegdate() %><br>
<img  src="board/<%=b.getFname()%>" width="200" height="200">
<hr>
<a href="insertBoard.jsp">게시물 등록</a>
<a href="listBoard.jsp">게시물 목록</a>
</body>
</html>


















