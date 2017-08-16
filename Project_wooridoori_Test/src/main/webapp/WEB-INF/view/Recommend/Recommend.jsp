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
<title>관광지 추천</title>
</head>
<body>
<div id="content">
<div id="filter_controller">
	<div id="" class="aTag_Controller_box">
		<span class="span_aTag_Controller" onclick="filter_aera(this)">필터링1</span>
		//
		<span class="span_aTag_Controller" onclick="filter_classification(this)">필터링 2</span>
		//
		<span class="span_aTag_Controller">선호도 설문</span>
	</div>
	<ul id = "list_classification" class="filter_item_list_classification">
		<li class="filter_item">				
			중분류 1
			<span class="onclick_span"/>
		</li>
		<li class="filter_item">				
			중분류 2
		</li>
		<li class="filter_item">				
			중분류 3
		</li>
		<li class="filter_item">				
			중분류 4
		</li>
		<li class="filter_item">				
			소분류 1
		</li>
		<li class="filter_item">				
			소분류 2
		</li>
		<li class="filter_item">				
			소분류 3
		</li>
		<li class="filter_item">				
			소분류 4
		</li>
	</ul>
	<ul id="list_theme" class="filter_item_list_theme">
		<li class="filter_item">				
			테마1
		</li>
		<li class="filter_item">				
			테마2
		</li>
		<li class="filter_item">				
			테마3
		</li>
		<li class="filter_item">				
			테마4
		</li>
		<li class="filter_item">				
			테마5
		</li>
		<li class="filter_item">				
			테마6
		</li>
	</ul>
</div>
<form action="">
<div class="select_box_div">
	<ul class="select_box_ul">
		<li id="" class="select_box">			
			<div class="select_tourbox">
				<img src="image/Gyeongbokgung Palace.jpg" class="select_img">
			</div>
			<div class="div_hover_box">				
				<div class="select_blockA">
					<span class="first_trip_click" name="first_trip" value="Y">
						<img src="image/delete.gif" class="btn_first_trip">
					</span>
				</div>
				<div class="select_blockB">
					<ul class="select_box_ul">
						<li><span>여행지 이름</span></li>
						<li>
							<div class="rateit"></div>
						</li>
						<li>							
							<span><img src="image/like2.png" style="width: 20px;">추천</span>
							<span><img src="image/like3.png" style="width: 20px;">즐겨찾기</span>
						</li>				
					</ul>
				</div>								 
			</div>							
		</li>
		<li>
			<span class="tour_name">추천 이유</span>				
		</li>
	</ul>		
</div>
</form>
</div>
</body>
</html>