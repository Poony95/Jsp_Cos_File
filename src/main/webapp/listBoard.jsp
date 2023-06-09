<%@page import="com.sist.vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
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
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> list = dao.findAll();
	%>
	<a href="insertBoard.jsp">등록</a><br>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>
		<%
			for(BoardVO b :list){
				%>
					<tr>
						<td><%=b.getNo() %> </td>
						<td>
							<a href="detailBoard.jsp?no=<%=b.getNo()%>"><%=b.getTitle() %></a> 
						</td>
						<td><%=b.getWriter() %> </td>
					</tr>
				<%
			}
		%>
	</table>
</body>
</html>

















