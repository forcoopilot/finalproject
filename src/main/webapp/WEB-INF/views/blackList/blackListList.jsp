<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <c:url var='root' value='/'/>   
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<title>noticeRead</title>

  <!-- Mobile Specific Metas
	================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Educenter HTML Template v1.0">

  <!-- ** Plugins Needed for the Project ** -->
  <!-- serachbar -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
          <li class="list-inline-item h2 text-primary font-secondary">Home</li>
          <li class="list-inline-item text-white h3 font-secondary nasted">고객센터</li>
          <li class="list-inline-item text-white h3 font-secondary nasted">블랙리스트</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->



<!-- Board -->    
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
       <div class="section-title text-center">
          <h2>블랙리스트</h2>
          </div>
      </div>
    </div>
    
     
		           <!-- search box -->
	          
    <div> 
    <form:form align="right" action="${root}blackList/blackSearchList_pro?page2=${requestScope.page }&searchKeyword=${requestScope.searchKeyword}" modelAttribute="blSearchBean" method="get">
	<form:input class="search-txt btn-round btn-color"  path="searchKeyword" placeholder="   회원 이름을 입력해 주세요" value = "" />
    <form:button class="search-btn btn-round btn-color" type="submit"><i class="fas fa-search"></i></form:button>
    </form:form>
    </div>
	<br>
    
    
<!-- /search box -->
    
<table id = "btable">
    <thead>
    <tr>
		
       <th>고객 이름</th>
       <th>학원 이름</th>
       <th>사유</th>
       <th>작성일자</th>
       <c:if test="${sessionScope.loginMemberBean.m_classify == 999 }">
       <th>상세보기</th>
       </c:if>
    </tr>
    </thead>
    <tbody>
<c:forEach var="st" items="${bllist }">
    <tr>
		<td>${st.m_name}</td>
        <td>${st.a_name}</td>
        <td>${st.black_contents}</td>
<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${st.black_time}" /></td>
<c:if test="${sessionScope.loginMemberBean.m_classify == 999 }">	
         <td><a href="${root }blackList/blackListRead?m_memberNo=${st.m_memberNo}&a_memberNo=${st.a_memberNo}">상세보기</a></td>
         </c:if>
  </tr>
</c:forEach>

</table>
<c:if test="${sessionScope.loginMemberBean.m_classify == 999 }">

<br>
<div align="right">

<button class="search-btn btn-color" onclick="location.href='${root }blackList/blackListWrite'">글쓰기</button>

</div>
</c:if>

  	<div class="d-none d-md-block">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageCountBean.prevPage <= 0 }">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
							</li>
						</c:when>
					<c:otherwise>
						<li class="page-item">
						<a href="${root}blackList/blackListList?page=${pageCountBean.prevPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
						</li>					
					</c:otherwise>					
					</c:choose>
														
					<c:forEach var="idx" begin="${pageCountBean.min }" end="${pageCountBean.max }">
						<c:choose>
							<c:when test="${ idx == pageCountBean.currentPage}">
							<li class="page-item active">
								<a href="${root}blackList/blackListList?page=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>		
						</c:when>
						
						<c:otherwise>
							<li class="page-item">
								<a href="${root}blackList/blackListList?page=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>						
						</c:otherwise>						
						</c:choose>									
					</c:forEach>					
					
					<c:choose>
						<c:when test="${pageCountBean.max >= pageCountBean.pageCnt}">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
							</li>
						</c:when>
					
					<c:otherwise>
						<li class="page-item">
							<a href="${root}blackList/blackListList?page=${pageCountBean.nextPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
						</li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
  
  
  
<%-- <c:forEach var="st" items="${bllist }">
    <tr>
        <td><a href="${root }blackList/blackListRead?m_memberNo=${st.m_memberNo}&a_memberNo=${st.a_memberNo}&page=${page}">${st.m_memberNo}</a></td>
        <td>${st.a_memberNo} &nbsp;&nbsp;</td>
        
<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${st.black_time}" /></td>
    </tr>
</c:forEach> --%>
		
		  
		</div>
	

</section>
<!-- /Board -->


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