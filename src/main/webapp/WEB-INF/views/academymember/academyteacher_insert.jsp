<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html lang="ko">
<head>

<!-- Basic Page Needs
   ================================================== -->
<meta charset="utf-8">
<title>SKYCASTLE</title>

<!-- Mobile Specific Metas
   ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator"
	content="Themefisher Educenter HTML Template v1.0">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
<!-- slick slider -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<!-- themefy-icon -->
<link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
<!-- animation css -->
<link rel="stylesheet" href="plugins/animate/animate.css">
<!-- aos -->
<link rel="stylesheet" href="plugins/aos/aos.css">
<!-- venobox popup -->
<link rel="stylesheet" href="plugins/venobox/venobox.css">

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">

</head>

<body>

	<!-- ===============================  header  =============================== -->
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<!-- ===============================  header  =============================== -->

	<!-- page title -->
	<section class="page-title-section overlay"
		data-background="images/backgrounds/bg_pagetitle1.png">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<ul class="list-inline custom-breadcrumb mb-2">
						<li class="list-inline-item h2 text-primary font-secondary">My page</li>
						<li class="list-inline-item text-white h3 font-secondary nasted">?????? ?????? ?????? ??????</li>

					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- /page title -->

	<!-- side menu nav -->
<div class="container">
      <div class="row">
        <div class="col-sm-12 text-center">
          <ul class="list-inline text-center">
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/my_academypage"><h4>?????? ??????</h4></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academyinfo"><h4>?????? ??????</h4></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academyteacher"><h4>?????? ?????? ??????</h4></a></li>
			<li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academypay?a_memberno=${sessionScope.loginAcademyMemberBean.a_memberNo}"><h4>?????? ?????? ??????</h4></a></li>     
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/mypage_siteAcaAsk?a_memberNo=${sessionScope.loginAcademyMemberBean.a_memberNo}"><h4>??? ????????????</h4></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academyBlacklist"><h4>??? ??????????????? ??????</h4></a></li>
          </ul>
        </div>
      </div>
    </div>
	<!--  -->

	<!--  -->
	<section class="section bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="text-center">?????? ?????? ?????? ??????</h3>
					<hr>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-8 mb-5 mb-lg-0">
					<form:form action="${root}academymember/academyteacher_insertPro"
						method="post" modelAttribute="teacherInsertBean"
						enctype="multipart/form-data">
						<form:hidden path="a_memberNo" value="${sessionScope.loginAcademyMemberBean.a_memberNo}"/>
						<div>
							<form:label path="t_name">?????????</form:label>
							<form:input class="form-control mb-3" path="t_name"/>
							<form:errors path="t_name" style="color:red" />
						</div>
						<hr>
						<div>
							<form:label path="t_subject">??????</form:label>
							<form:input class="form-control mb-3" path="t_subject"/>
							<form:errors path="t_subject" style="color:red" />
						</div>
						<hr>
						<div>
							<form:label path="t_contents">??????</form:label>
							<form:textarea path="t_contents" class="form-control mb-3"
								placeholder="?????? ??????" style="resize:none"></form:textarea>
								<form:errors path="t_contents" style="color:red" />
						</div>
						<br>
						<br>
						<div>
							<form:label path="upload_file"><strong>?????? ?????????</strong></form:label>
							<form:input type="file" path="upload_file" accept="image/*" />
						</div>
						<br>
						<br>
						<div class="text-center">
							<form:button type="submit" class="btn btn-primary">????????????</form:button>
						</div>
					</form:form>

				</div>
			</div>
		</div>
	</section>

	<!-- ===============================  footer  =============================== -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- ===============================  footer  =============================== -->


	<!-- jQuery -->
	<script src="plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- slick slider -->
	<script src="plugins/slick/slick.min.js"></script>
	<!-- aos -->
	<script src="plugins/aos/aos.js"></script>
	<!-- venobox popup -->
	<script src="plugins/venobox/venobox.min.js"></script>
	<!-- filter -->
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<!-- Main Script -->
	<script src="js/script.js"></script>

</body>
</html>