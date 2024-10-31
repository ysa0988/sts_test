<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>BOARD</title>
</head>
<body>
	<h3>Form Home</h3>
	<form action="/board/register">
		<input type="submit" value="register (Get)">
	</form>
	<form action="/board/register" method="post">
		<input type="submit" value="register (Post)">
	</form>
	<form action="/board/modify">
		<input type="submit" value="modify (Get)">
	</form>
	<form action="/board/modify" method="post">
		<input type="submit" value="modify (POST)">
	</form>
	<form action="board/remove" method="post">
		<input type="submit" value="remove (POST)">
	</form>
	<form action="board/get?list">
		<input type="submit" name="list" value="list (GET)">
	</form>
</body>
</html>