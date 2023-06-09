<%@page import="com.sist.dao.BoardDAO"%>
<%@page import="com.sist.vo.BoardVO"%>
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
	String path = request.getRealPath("board");
	System.out.println(path);
	MultipartRequest multi 
	= new MultipartRequest(request, path, 1024*1024*5, "utf-8");
	
	String title =multi.getParameter("title");
	String writer =multi.getParameter("writer");
	String pwd =multi.getParameter("pwd");
	String content =multi.getParameter("content");
	String fname =multi.getFilesystemName("fname");
	
	BoardVO b = new BoardVO();
	b.setTitle(title);
	b.setWriter(writer);
	b.setPwd(pwd);
	b.setContent(content);
	b.setFname(fname);
	
	BoardDAO dao = new BoardDAO();
	int re = dao.insertBoard(b);
	if(re == 1){
		out.print("게시물 등록 성공!");
	}else{
		out.print("게시물 등록 실패!");
	}
%>
<a href="insertBoard.jsp">게시물 등록</a><br>
<a href="listBoard.jsp">게시물 목록</a><br>
</body>
</html>























