<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Board</title>
<link href="style.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="script.js"></script>
</head>

<body bgcolor="blanchedalmond">

	<center>
		<b>Visitors book</b>
	</center>
	<br>
	<br>
	<form  action="/VisitInsert" method="post">
<!-- 	<form action="vb-write-process.jsp" name="writeForm" method="post"
		onsubmit="return writeSave()"> -->

		<table width="400" border="1" cellpadding="0" cellspacing="0"
			align="center" bgcolor="coral">

			<%-- <tr>
    <td align="right" colspan="2" bgcolor="<%=value_c %>">
         <a href="list.jsp">글목록</a>
    </td>
</tr> --%>
	<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
			<tr>
				<td width="70" bgcolor="aqua" align="center">이름</td>
				<td width="330"><input type="text" size="12" maxlength="12"
					name="visitor"></td>
			</tr>


			<%-- <tr>
     <td width="70" bgcolor="<%=value_c %>" align="center">제목</td>
     <td width="330">
     <% if(request.getParameter("num")==null){ %>
          <input type="text" size="50" maxlength="50" name="subject">
      <%}else { %>
      <input type="text" size="50" maxlength="50" name="subject" value="[답변]">
      <%} %>
     </td>
</tr>
 --%>
			<tr>
				<td width="70" bgcolor="darkgrey" align="center">내 용</td>
				<td width="330"><textarea rows="13" cols="50" name="comment"></textarea>
				</td>
			</tr>
			<%--
<tr>
     <td width="70" bgcolor="<%=value_c %>" align="center">비밀번호</td>
     <td width="330">
          <input type="password" size="10" maxlength="10" name="pass">
     </td>
</tr>

 --%>
			<tr>
				<td colspan="2" bgcolor="orange" align="center"><input
					type="submit" value="글쓰기"> <input type="reset" value="다시작성">
					<input type="button" value="목록"
					onClick="window.location='/VisitList'"></td>
			</tr>
		</table>
	</form>
</body>
</html>
