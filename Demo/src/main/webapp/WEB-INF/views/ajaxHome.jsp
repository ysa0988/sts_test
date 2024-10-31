<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>Home</title>
	</head>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script> 
	<script type="text/javascript">
		$(document).ready(function() {
			$("#postBtn").on("click", function() {
				
				var boardNo = $("#boardNo");
				var title = $("#title");
				var content = $("#content");
				var writer = $("#writer");
				
				var boardNoVal = boardNo.val();
				var titleVal = title.val();
				var contentVal = content.val();
				var writerVal = writer.val();
				
				var boardObject = {
					boardNo : boardNoVal,
					title : titleVal,
					content : contentVal,
					writer : writerVal
				};
				
				$.ajax({
					type: "POST",
					url: "/board/"+boardNoVal,
					data: JSON.stringify(boardObject),
					contentType: "application/json; charset=UTF-8",
					success: function(result) {
						console.log("result"+result);
						alert(result);
					}
				});
			});
			
			$("#putJsonBtn").on("click", function() {
				var boardNo = $("#boardNo");
				var title = $("#title");
				var content = $("#content");
				var writer = $("#writer");
				
				var boardNoVal = boardNo.val();
				var titleVal = title.val();
				var contentVal = content.val();
				var writerVal = writer.val();
				
				var boardObject = {
					boardNo : boardNoVal,
					title : titleVal,
					content : contentVal,
					writer : writerVal
				};
				
				$.ajax({
					type: "PUT",
					url: "/board/"+boardNoVal,
					data: JSON.stringify(boardObject),
					contentType: "application/json; charset=UTF-8",
					success: function(result) {
						console.log("result"+result);
						alert(result);
					}
				});
			});
			
			$("#putXmlBtn").on("click", function() {
				var boardNo = $("#boardNo");
				var title = $("#title");
				var content = $("#content");
				var writer = $("#writer");
				
				var boardNoVal = boardNo.val();
				var titleVal = title.val();
				var contentVal = content.val();
				var writerVal = writer.val();
				
				var xmlData = "<Board>";
					xmlData += "<boardNo>0</boardNo>";
					xmlData += "<title>title</title>";
					xmlData += "<content>content</content>";
					xmlData += "<writer>writer</writer>";
					xmlData += "</Board>";
					
				console.log(xmlData)
				$.ajax({
					type: "PUT",
					url: "/board/"+boardNoVal,
					data: xmlData,
					contentType: "application/xml; charset=UTF-8",
					success: function(result) {
						console.log(result);
						alert(result);
					}
				});
			});
		});
		

	</script>
	<body>
		<h1>Ajax Home</h1>
		<form>
			boardNo : <input type="text" name="boardNo" value="" id="boardNo"><br>
			title : <input type="text" name="title" value="" id="title"><br>
			content : <input type="text" name="content" value="" id="content"><br>
			writer : <input type="text" name="writer" value="" id="writer"><br>
		</form>
		<div>
			<button id="postBtn">MODIFY(put)</button>
			<button id="putJsonBtn">MODIFY(put json)</button>
			<button id="putXmlBtn">MODIFY(put xml)</button>
		</div>
	</body>
</html>
