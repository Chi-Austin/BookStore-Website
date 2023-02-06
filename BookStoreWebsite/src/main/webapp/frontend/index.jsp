<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Austin Books - Online Books Store</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
</head>
<body>

	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<br>
		<h2>New Books:</h2>
		<div align="center" style="width: 100%; margin: 0 auto;">

			<c:forEach items="${listNewBooks}" var="book">



				<div style="display: inline-block; margin: 20px">



					<div>
						<a href="view_book?id=${book.bookId}"> <img
							src="data:image/jpg;base64,${book.base64Image}" width="100"
							height="150">
						</a>
					</div>
					<div>
						By <i>${book.author}</i>
					</div>
					<div>
					
						<c:forTokens items="${book.ratingStars}" delims="," var="star">
						
							<c:if test="${star eq 'on'}">
							
								<img alt="" src="images/rating_on.png">
							
							</c:if>
							
							<c:if test="${star eq 'off'}">
							
								<img alt="" src="images/rating_off.png">
							
							</c:if>
							
							<c:if test="${star eq 'half'}">
							
								<img alt="" src="images/rating_half.png">
							
							</c:if>
						
						</c:forTokens>
					
					</div>
					<div>
						<b>${book.title}</b>
					</div>
					<div>
						<b>$${book.price}</b>
					</div>



				</div>
			</c:forEach>

		</div>
		<h2>Best-Selling Books:</h2>
		<h2>Most-favoured Books:</h2>
		<br>
		<br>
	</div>
	<footer><jsp:directive.include file="footer.jsp" /></footer>

</body>
</html>
