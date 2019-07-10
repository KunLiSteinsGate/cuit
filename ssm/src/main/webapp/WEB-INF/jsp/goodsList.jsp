<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<table class="table table-bordered table-sm">
					<thead>
						<tr>
							<th>#</th>
							<th>名字</th>
							<th>价格</th>
							<th>数量</th>
							<th>图片</th>
							<th>类型</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${goodsList}" var="goods">
						<tr>
							<td>${goods.id}</td>
							<td>${goods.name}</td>
							<td>${goods.price}</td>
							<td>${goods.num}</td>
							<td>
								<img alt="" src="static/images/${goods.img}">
							</td>
							<td>${goods.type}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
	</div>
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS-->
	<script src="static/jquery/jquery-3.4.1.slim.min.js"></script>
	<script src="static/popper/popper.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>