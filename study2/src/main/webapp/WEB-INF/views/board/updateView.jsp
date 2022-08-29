<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		// 저장
		$('#sbtn').click(function(){
			$('#ufrm').attr('action', '/board/update').submit();
		});
		
		// 취소
		$('#lbtn').click(function(){
			$(location).attr('href', '/board/list');
		});
	});
</script>
<body>
	<div id="root">
		<header>
			<h1>게시판</h1>
		</header>
		
		<nav>홈 - 글 작성</nav>
		<hr/>
		
		<section id="cotainer">
			<form id="ufrm" role="form" method="post">
				<input type="hidden" name="bno" value="${update.bno}" readonly/>
				
				<table>
					<tbody>
						<tr>
							<td>
								<label for="title">제목</label>
								<input type="text" id="title" name="title" value="${update.title}"/>
							</td>
						</tr>
						<tr>
							<td>
								<label for="content">내용</label>
								<textarea id="content" name="content"><c:out value="${update.content}"/></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<label for="writer">작성자</label>
								<input type="text" id="writer" name="writer" value="${update.writer}" readonly/>
							</td>
						</tr>
						<tr>
							<td>
								<label for="regdate">작성날짜</label>
								<input type="text" id="readate" name="readate" value="${update.regdate}" readonly/>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<div>
				<button id="sbtn">저장</button>
				<button id="lbtn">취소</button>
			</div>
		</section>
	</div>
</body>
</html>