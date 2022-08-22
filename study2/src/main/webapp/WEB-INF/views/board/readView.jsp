<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<header>
			<h1>게시판</h1>
		</header>
		<hr/>
		
		<nav>홈 - 글작성</nav>
		<hr/>
		
		<section id="container">
			<form id="rfrm" role="form" method="post">
				<table>
					<tbody>
						<tr>
							<td>
								<label for="bno">글번호</label>
								<input type="text" id="bno" name="bno" value="${read.bno}"/>
							</td>
						</tr>
						<tr>	
							<td>
								<label for="title">제목</label>
								<input type="text" id="title" name="title" value="${read.title}"/>
							</td>
						</tr>
						<tr>
							<td>
								<label for="content">내용</label>
								<input type="text" id="content" name="content" value="${read.content}"/>
							</td>
						</tr>	
						<tr>
							<td>
								<label for="writer">작성자</label>
								<input type="text" id="writer" name="writer" value="${read.writer}"/>
							</td>
						</tr>
						<tr>	
							<td>
								<label for="regdate">작성날짜</label>
								<input type="text" name="read.regdate" value="${read.regdate}"/>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</section>
	</div>
</body>
</html>