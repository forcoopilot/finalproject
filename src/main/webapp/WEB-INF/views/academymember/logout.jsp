<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

var send = confirm("로그아웃하시겠습니까?");


if(send == true) {
   location.href="${root}academymember/logout_pro"
}
else {
   history.back(-1);
}
</script>
</body>
</html>