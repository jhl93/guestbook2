<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GuestBookVo> list = (List<GuestBookVo>) request.getAttribute("guestList");
	System.out.println("addList.jsp");
	System.out.println(list.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="./gb" id="add">
		<input type="hidden" name="action" value="add">
		<table border="1" width="510">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea form="add" rows="10" cols="65"
						name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		for (GuestBookVo vo : list) {
	%>
	<table border="1" width="510">
		<tr>
			<td>[<%=vo.getNo()%>]
			</td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getRegDate()%></td>
			<td><a
				href="http://localhost:8088/guestbook2/gb?action=dform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=vo.getContent()%></td>
		</tr>
	</table>
	<br>
	<%
		}
	%>

</body>
</html>