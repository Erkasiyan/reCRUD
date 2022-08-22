<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<style type="text/css">
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('.title').click(function(){
			var bno = $(this).parent().find('input').val();
			$('#bno').val(bno);
			$('#lfrm').attr('action', '/board/read').submit();
		});
	});
</script>
<body>
	<div id="root">
		<header>
			<h1>게시판</h1>
		</header>
		<hr/>
		
		<nav>홈 - 글 작성</nav>
		<hr/>
		
		<section id="container">
			<form id="lfrm" role="form" method="post">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
				<c:forEach items="${list}" var="list">
					<tr style="text-align: center;">
						<td><input type="hidden" id="bno" name="bno" value="${list.bno}"><c:out value="${list.bno}"/></td>
						<td class="title"><c:out value="${list.title}"/></td>
						<td><c:out value="${list.writer}"/></td>
						<td><c:out value="${list.regdate}"/></td>
					</tr>
				</c:forEach>	
				</table>
			</form>
			<div>
			</div>
		</section>
	</div>
</body>
</html>