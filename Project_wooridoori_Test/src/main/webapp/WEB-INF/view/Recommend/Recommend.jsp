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
<link rel="stylesheet" type="text/css" href="startStyle/scripts/rateit.css">
<link rel="stylesheet" type="text/css" href="recommendCss/recommend.css">
<title>관광지 추천</title>

<script type="text/javascript">
var configFontAwesome = {
		custom: {
		    families: ['fontawesome'],
		    urls: ['https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css']
		    },
		    fontactive: function () {
		        $('.rateit-fa').rateit();
		    }
		};
		WebFont.load(configFontAwesome);
		
		$(function(){		
			$("#list_classification").hide();
			$("#list_theme").hide();
			$(".div_hover_box").hide();
			
			$(".select_box_div").hover(function(){
				var inx = $(this).index();
				$(".div_hover_box").eq(inx).slideToggle();							
			});			
			
			
			$(".span_aTag_Controller").click(function(){
				var n = $(this).attr("name");
				if(n=="_1")
				{
					$("#list_theme").hide();
					$("#list_classification").toggle();	
				}else if(n=="_2")
					{
						$("#list_classification").hide();
						$("#list_theme").toggle();
					}				
			});
				
			$(".filter_item").hover(function(){
				var idx_filter = $(this).index();
				
				var _f = $("._filter_tag").attr("name");
				if(_f!="_tag")
				{
					$(this).append($("<span class='_tag'> ◁</span>"));	
				}						
				$(this).unbind("click").bind("click",function(){					
					var v = $(this).attr("val");
					alert(v);
					var n = $(this).attr("name");
					if(v == 'n')
					{
						$("#View").append($("<span class='_filter_tag' name='_tag'>#"+n+"</span>"));
						$(this).append($("<span class='_tag_a'> ◀</span>"));
						$(this).attr("val","y");
					}
					if(v == "y")
					{
						$("#View").find("._filter_tag").remove();
						$(this).find("._tag_a").remove();
						$(this).attr("val","n");
					}
				});				
			},function(){
				$(this).find("._tag").remove();
			});	
			$(".rateit").click(function(){
				var re = $(this).rateit('value');
				alert(re);
			});
			
			$("._cc_img").click(function(){
				var na = $(this).attr("neme");
				
			});
		});
</script>
</head>
<body>
<div id="content">
<div id="filter_controller">
	<div id="" class="aTag_Controller_box">
		<span class="span_aTag_Controller" name="_1" >필터링1</span>
		//
		<span class="span_aTag_Controller" name="_2" >필터링 2</span>
		//
		<span class="span_aTag_Controller" name="_3">선호도 설문</span>
	</div>
	<ul id = "list_classification" class="filter_item_list_classification">
		<c:forEach var="area" begin="1" end="17" varStatus="a">
		<li class="filter_item" name="${a.count}" val="n">			
			지역${a.count}			
		</li>
		</c:forEach>
	</ul>
	<ul id="list_theme" class="filter_item_list_theme">
		<c:forEach var="theme" begin="1" end="10" varStatus="t">
		<li class="filter_item" name="${t.count}" val="n">				
			테마${t.count}
		</li>
		</c:forEach>
	</ul>
</div>
<form action="">
<c:forEach var="and" begin="1" end="3">
<div class="select_box_div">	
	<div class="select_tourbox">
		<img src="image/Gyeongbokgung Palace.jpg" class="select_img">
	</div>
	<div class="div_hover_box">				
		<div class="select_blockA" onclick="_info_btn(this)">
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
					<span class="_cc_img" name="n"><img class="_ccimg" src="image/like2.png" >추천</span>
					<span class="_jc_img" name="n"><img class="_jcimg" src="image/like3.png" >즐겨찾기</span>
				</li>				
			</ul>
		</div>								 
	</div>
	<span class="tour_name">추천 이유</span>			
</div>
</c:forEach>
</form>
</div>
<div id="View"></div>

</body>
</html>