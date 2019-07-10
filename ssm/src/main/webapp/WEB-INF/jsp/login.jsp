<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
${error}
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<form role="form" action="login" method="post">
				
					<div class="form-group">
						<label for="InputName" class="col-sm-2col-form-label">
							用户名: 
						</label> 
						<input type="name" class="form-control" placeholder="name" id="InputName" name="name"/>
					</div>
					
					<div class="form-group" >
						<label for="InputPass" class="col-sm-2col-form-label"> 
							密码: 
						</label> 
						<input type="pass" class="form-control" placeholder="pass" id="InputPass" name="pass"/>
					</div>

					<div class="form-group row">
						<div class="col-sm-10">

							<button type="submit" class="btn btn-primary">登录</button>
						</div>
					</div>
				</form>
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