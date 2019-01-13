<%@page import="model.SignupDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="model.SignupDTO" />
<jsp:setProperty property="*" name="dto" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 정보 확인</title>
</head>
<body>
	<center>
	<h1>회원가입 정보 확인</h1>
	<h3><%=dto.getName() %>님의 회원정보 입니다.</h3>
	
	<table border="3" bordercolor="gray">
		<tr>
			<td bgcolor="gray">아이디</td>
			<td><%=dto.getId() %></td>
		</tr>
		<tr>
			<td bgcolor="gray">성별</td>
			<td><%=dto.getGender() %></td>
		</tr>
		<tr>
			<td bgcolor="gray">이메일</td>
			<td><%=dto.getMail_id() %> @ <%=dto.getMail_addr() %></td>
		</tr>
		<tr>
			<td bgcolor="gray">주소</td>
			<td><%=dto.getAddr() %></td>
		</tr>
		<tr>
			<td bgcolor="gray">휴대폰</td>
			<td>
				<%=dto.getPhone1() %> - <%=dto.getPhone2() %> - <%=dto.getPhone3() %>
			</td>
		</tr>
		<tr>
			<%-- <td bgcolor="gray">관심</td>
			<td>
				<%
					String[] fav = dto.getFavorite();
					for(int i=0; i<fav.length; i++)
					{
						out.print(fav[i] + " ");
					}
				%>
			</td> --%>
		</tr>
		<tr>
			<td bgcolor="gray">자기소개</td>
			<td><%=dto.getSelf_intro() %></td>
		</tr>
		<tr align="center">
			<td colspan="2">
				<input type="button" value="확인" onClick="main.jsp" />
				&nbsp;
				<input type="button" value="취소" onClick="Signup.jsp" />
			</td>
		</tr>
	</table>
	</center>
</body>
</html>