<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>


<h1> Here's Your Omikuji!</h1>
<div class="box">

<div class="card">

<h3>In <span><c:out value="${ num }"></c:out></span> years you will live in <span><c:out value="${ city }"></c:out></span> with <span><c:out value="${ name }"></c:out></span> as your roommate, selling <span><c:out value="${ hobby }"></c:out></span> for a living. The next time you see a <span><c:out value="${ thing }"></c:out></span>, you will have good luck. Also, <span><c:out value="${ say }"></c:out></span>.</h3>

</div>

</div>

<a href="/">Go Back</a>

</body>
</html>