<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>Board</title>
	</head>
	<body>
		<h3>Modify</h3>
		<form action="/board/post" method="post">
			<button type="submit" name="modify">Modify</button>
		</form>
		<a href="get?list">List</a>
	</body>
</html>