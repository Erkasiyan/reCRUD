<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$('#wbtn').click(function(){
			$('#wfrm').attr('action', '/board/write');
			$('#wfrm').submit();
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
			<form id="wfrm" role="form" method="post">
				<table>
					<tbody>
						<tr>
							<td>
								<label for="title">제목</label>
								<input type="text" id="title" name="title" />
							</td>
						</tr>
						<tr>
							<td>
								<label for="content">내용</label>
								<textarea id="content" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<label for="writer">작성자</label>
								<input type="text" id="writer" name="writer" />
							</td>
						</tr>
					</tbody>
				</table>
			</form>
				<div>
					<button id="wbtn">작성</button>
				</div>
		</section>
	</div>
</body>
</html>