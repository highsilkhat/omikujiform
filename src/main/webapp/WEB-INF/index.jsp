<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>

<h1>Send an Omikuji!</h1>

<form action='/post' method='post'>
	
	<label class="form-label">Pick any number from 5 to 25</label></br>
	<input type="number" class="form-control" name='num'></br>
	
	<label class="form-label">Enter the name of any city</label></br>
	<input type='text' class="form-control" name='city'></br>
	
	<label class="form-label">Enter the name of any real person</label></br>
	<input type='text' class="form-control" name='name'></br>
	
	<label class="form-label">Enter professional endeavor or hobby</label></br>
	<input type='text' class="form-control" name='hobby'></br>
	
	<label class="form-label">Enter any type of living thing</label></br>
	<input type='text' class="form-control" name='thing'></br>
	
	<label class="form-label">Say something nice to someone</label></br>
	<textarea name="say" class="form-control"></textarea></br>
	
	<p>Send and show a friend</p></br>
	<input type='submit'class="btn btn-primary" value='Send'>
	
</form>

</body>
</html>