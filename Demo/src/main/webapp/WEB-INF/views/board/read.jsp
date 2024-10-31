<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>Board</title>
	</head>
	<body>
		<h3>Read</h3>
		<form action="/board/get" method="get">
			<button type="submit" name="modify">Modify</button>
			<button type="submit" name="remove">Remove</button>
		</form>
		<a href="get?list">List</a>
	</body>
</html>