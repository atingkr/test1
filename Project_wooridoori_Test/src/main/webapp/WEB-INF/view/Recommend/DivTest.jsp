<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<script src="startStyle/scripts/jquery.rateit.js" type="text/javascript" charset="UTF-8"></script>
<script src="recommendCss/recommend.js" type="text/javascript" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="startStyle/scripts/rateit.css">
<link rel="stylesheet" type="text/css" href="recommendCss/recommend.css">
<title>title</title>
<style type="text/css">
	div._tour_box{
		position: relative;
		width: 400px;
		height: 250px;
		padding:0;
		margin:0;
		line-height:1
	}
	
	img._tour_img{
		padding:0;
		margin: 0;
	}
	
	div._box_blockA{
		z-index: 1;		
	}
	img._himg,img._jimg,img._zimg{
		width: 20px;
		height: 15px;
		z-index: 2;	
	}
		
</style>
</head>
<body>
<div class="_tour_box">
	<img src="image/Gyeongbokgung Palace.jpg" class="_tour_img">
</div>
<div class="_tour_box">
	<div class="_box_blockA">
		<img src="image/delete.gif" class="_himg">
	</div>
	<div class="_box_blockB">
		<div class="rateit"></div>
		<div>
			<img src="image/like2.png" class="_jimg">
			<img src="image/like3.png" class="_zimg">
		</div>		
	</div>
</div>
</body>
</html>