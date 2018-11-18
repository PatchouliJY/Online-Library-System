<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Librarian Search Book</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/vendor/linearicons/style.css">
<link rel="stylesheet"
	href="../assets/vendor/chartist/css/chartist-custom.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="../assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="../assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="../assets/img/favicon.png">
</head>
<body>
	<div id="wrapper">
		<%@ include file="navbar.jsp"%>
		<%@ include file="sidebar.jsp" %>
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Search a book</h3>
					<div class="row">
						<div class="col-md-12">

							<!-- INPUTS -->
							<form method="post" action="LibrarianSearchBook">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Search By:</h3>
										<select name="searchBy" size="1">
												<option>Book Name</option>
												<option>Author</option>
												<option>ISBN</option>
										</select>
									</div>
									<div class="panel-body">
										<div class="col-md-12">
											<div class="input-group">
												<input class="form-control" type="text" name="keyword" placeholder="Input Keywords:中文 Book Name, Author or ISBN">
												<span class="input-group-btn">
												<button class="btn btn-primary" type="submit">Search!</button></span>
											</div>
										</div>
									</div>
								</div>
							</form>

							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Result Of Search</h3>
								</div>
								<div class="panel-body no-padding">
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>ISBN</th>
												<th>Book Name</th>
												<th>Publisher</th>
												<th>Author(s)</th>
												<th>Price</th>
												<th>Location</th>
												<th>Book ID</th>
												<th>Operate</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty bookList }">
											<c:forEach var="item" items="${bookList }" varStatus="i">
												<tr>
													<td>1</td>
													<td>${item.ISBN }</td>
													<td>${item.name }</td>
													<td>${item.publisher.name }</td>
													<td>${item.authors }</td>
													<td>${item.price }</td>
													<td>${item.location }</td>
													<td>${item.id }</td>
													<th>
														<a href="Details">
														<button type="button" class="btn btn-primary">
															<i class="fa fa-refresh"></i> Details
														</button>
														</a>
													</th>
												</tr>
											</c:forEach>
											</c:if>
											<c:if test="${not empty bookEntity }">
												<tr>
													<td>1</td>
													<td>${bookEntity.ISBN }</td>
													<td>${bookEntity.name }</td>
													<td>${bookEntity.publisher.name }</td>
													<td>${bookEntity.authors }</td>
													<td>${bookEntity.price }</td>
													<td>${bookEntity.location }</td>
													<td>${bookEntity.id }</td>
													<th>
														<a href="Details">
														<button type="button" class="btn btn-primary" onclick="update()">
															<i class="fa fa-refresh"></i> Details
														</button>
														</a>
													</th>
												</tr>
											</c:if>
										</tbody>
									</table>
								</div>
							</div>

                           
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END MAIN CONTENT -->

		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
		<div class="container-fluid">
			<p class="copyright">
				Copyright &copy; 2018.Company name All rights reserved. <a
					target="_blank" title="BiblioSoft">BiblioSoft</a> - Collect from <a
					title="BiblioSoft" target="_blank">Software</a>
			</p>

		</div>
		</footer>
	<!-- Javascript -->
	<script src="../assets/vendor/jquery/jquery.min.js"></script>
	<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="../assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="../assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="../assets/scripts/klorofil-common.js"></script>
	



</body>
</html>