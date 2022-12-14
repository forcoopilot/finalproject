<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> :: My Academy Page ::</title>
<!-- Mobile Specific Metas
	================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Educenter HTML Template v1.0">

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
   <c:import url="/WEB-INF/views/include/header.jsp"/>
<!-- ===============================  header  =============================== -->

<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item h2 text-primary font-secondary">My page</li>
          <li class="list-inline-item text-white h3 font-secondary nasted">?????? ?????? ??????</li>
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
			<li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academypay"><h4>?????? ?????? ??????</h4></a></li>     
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/mypage_siteAcaAsk"><h4>??? ????????????</h4></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="${root}academymember/academyBlacklist"><h4>??????????????? ?????? ??????</h4></a></li>
          </ul>
        </div>
      </div>
    </div>

	<!-- academy member modify -->
	<section class="section bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="text-center">?????? ?????? ??????</h3>
					<hr>
				</div>
			</div>
			<div class="row justify-content-center">
			<div class="col-lg-8 mb-5 mb-lg-0">
					<form:form action="${root}academymember/modify_pro" method="post"
						modelAttribute="modifyAcademyMemberBean">
						<form:hidden path="a_memberNo" />
						<div>
							<form:label path="a_id"><strong>????????? :&nbsp;&nbsp;&nbsp;</strong></form:label>
							<form:input class="form-control mb-3" path="a_id" readonly="true"/><hr>
						</div>
						<%-- <div>
							<form:label path="m_pw">???????????? ??????</form:label>
							<form:input class="form-control mb-3" type="password" path="a_pw" placeholder="????????????"/>
							<form:errors path="a_pw" style="color:red" /><hr>
						</div> --%>
						<div>
							<form:label path="a_name"><strong>?????? :</strong></form:label>
							<form:input path="a_name" class="form-control mb-3" readonly="true"/><hr>
						</div>
						<div>
							<form:label path="a_pw">???????????? ??????</form:label>
							<form:input class="form-control mb-3" type="password" path="a_pw" placeholder="????????????"/>
							<form:errors path="a_pw" style="color:red" /><hr>
						</div>
							<form:label path="a_location">??????(?????????)</form:label>
     	 				<div>
      						<select tabindex="0" id="sido" name="sido"><option value="">?????? ??????</option></select>
							<select tabindex="0" id="sigugun" name="sigugun"><option value="">???-?????????</option></select>
							<select tabindex="0" id="dong" name="dong"><option value="">???-?????????</option></select>
		 					<form:input class="form-control mb-3" type="hidden" path="a_location" value=""></form:input><hr>
						</div>
						<div>
							<form:label path="a_locationDetail"><strong>????????????</strong></form:label>
							<form:input path="a_locationDetail" class="form-control mb-3"/>
							<form:errors path="a_locationDetail" style="color:red"/><hr>
						</div>
						<div>
							<form:label path="a_tele"><strong>????????????????????????</strong></form:label>
							<form:input path="a_tele" class="form-control mb-3"/>
							<form:errors path="a_tele" style="color:red"/><hr>
						</div>
						<div>
						<form:label path="a_classify">????????????</form:label> &nbsp;&nbsp;
							<form:select path="a_classify" >
								<form:option value="1" label="??????" />
								<form:option value="2" label="??????" />
								<form:option value="3" label="?????????(??????)" />
							</form:select><hr>
						</div>
						<div class="text-center">
							<form:button type="submit" class="btn btn-primary">????????????</form:button>
						</div>
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
						      <script type="application/javascript"
								src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
						      <script type="text/javascript">
						      	jQuery(document).ready(function () {
						    		//sido option ??????
						    		jQuery.each(hangjungdong.sido, function (idx, code) {
						    			//append??? ???????????? option ????????? ????????????
						    			jQuery('#sido').append(fn_option(code.sido, code.codeNm));
						    		});
						
						    		//sido ????????? ????????? option ??????
						    		jQuery('#sido').change(function () {
						    			/* //?????? ?????? ???
						    			if($('#sido option:selected').val()=="") {
						    				$('#sido_text').val("");
						    			}else {
						    				$('#sido_text').val($('#sido option:selected').text());
						    			}
						    			$('#sigugun_text').val(""); */
						    			
						    			jQuery('#sigugun').show();
						    			jQuery('#sigugun').empty();
						    			jQuery('#sigugun').append(fn_option('', '??????')); //
						    			jQuery.each(hangjungdong.sigugun, function (idx, code) {
						    				if (jQuery('#sido > option:selected').val() == code.sido)
						    					jQuery('#sigugun').append(fn_option(code.sigugun, code.codeNm));
						    			});
						
						    			//????????????????????? ????????????
						    			//???????????? ?????? ??????
						    			if (jQuery('#sido option:selected').val() == '36') {
						    				jQuery('#sigugun').hide();
						    				//index??? ???????????? selected ??????(attr)??????
						    				//?????? ?????? ????????? ???????????? index 0??? ??????
						    				jQuery('#sigugun option:eq(1)').attr('selected', 'selected');
						    				//trigger??? ????????? change ??????
						    				jQuery('#sigugun').trigger('change');
						    			}
						    		});
						
						    		//????????? ????????? ????????? ????????????
						    		jQuery('#sigugun').change(function () {
						    			/* //????????? ?????? ???
						    			if($('#sigugun option:selected').val()=="") {
						    				$('#sigugun_text').val("");
						    			}else {
						    				$('#sigugun_text').val($('#sigugun option:selected').text());
						    			} */
						    			
						    			
						    			
						    			//option ??????
						    			jQuery('#dong').empty();
						    			jQuery.each(hangjungdong.dong, function (idx, code) {
						    				if (jQuery('#sido > option:selected').val() == code.sido && jQuery('#sigugun > option:selected').val() == code.sigugun)
						    					jQuery('#dong').append(fn_option(code.dong, code.codeNm));
						    			});
						    			//option??? ????????? ??????
						    			jQuery('#dong').prepend(fn_option('', '??????'));
						    			//option??? ????????? ???????????? ??????
						    			jQuery('#dong option:eq("")').attr('selected', 'selected');
						    			
						    		});
						    		
						    		
						    		jQuery('#dong').change(function () {
						    			var sido = jQuery('#sido option:selected');
						    			var sigugun = jQuery('#sigugun option:selected');
						    			var dong = jQuery('#dong option:selected');
						
						    			var dongName = sido.text() + ' ' + sigugun.text() + ' ' + dong.text(); // ??????/?????????/????????? ??????
						    			jQuery('#a_location').val(dongName);
						
						    			/* var dongCode = sido.val() + sigugun.val() + dong.val() + '00'; // ???????????????
						    			jQuery('#dongCode').text(dongCode); */
						    			//???????????? URL
						    			//var url = 'https://www.weather.go.kr/weather/process/timeseries-dfs-body-ajax.jsp?myPointCode=' + dongCode + '&unit=K';
						    			//iframe?????? ?????? ??????
						    			//fn_iframe(url);
						    		});
						    		
						    	});
						
						    	function fn_option(code, name) {
						    		return '<option value="' + code + '">' + name + '</option>';
						    	}
						    	/* function fn_iframe(url) {
						    		jQuery('#iframe').attr('src', url);
						    	} */
						      </script>
					</form:form>
				</div>
			</div>
			</div>
	</section>

	<!-- ===============================  footer  =============================== -->
 <c:import url="/WEB-INF/views/include/footer.jsp"/>
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>

</body>
</html>