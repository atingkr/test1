<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	div{
		border: 0.5px solid gray;
	}
	div>div.aTag_Controller_box{
		margin-left: 80%;
		width: 20%;		
	}
	div>span>a.filter_aTag{
		text-decoration: none;
	}
	
	div>ul.filter_item_list_classification{
		position: absolute;
		list-style: none;
		width: 240px;
		left: 700px;
		top: 300px;
		z-index: 1;		
	}
	div>ul.filter_item_list_theme{
		position: absolute;
		list-style: none;
		width: 240px;
		left: 800px;
		top: 300px;
		z-index: 1;
	}
	
	div>ul,li.filter_item{		
		float: left;
		width: 40%;		
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#list_classification").hide();
		$("#list_theme").hide();
	});
	function filter_classification(){
		$(".filter_classification").on("click",function(){
			$("#list_classification").toggle();
		});
	}
</script>
<title>관광지 추천</title>
</head>
<body>
<div id="content">
<div id="filter_controller">
	<div id="" class="aTag_Controller_box">
		<span class="span_aTag_Controller"><a href="javascript:void(0)" onclick="function filter_classification()" class="filter_aTag">필터링1</a></span>
		<b>||</b>
		<span class="span_aTag_Controller"><a href="javascript:void(0)" class="filter_aTag">필터링 2</a></span>
		<b>||</b>
		<span class="span_aTag_Controller"><a href="preference.wd" class="filter_aTag">선호도 설문</a></span>
	</div>
	<ul id = "list_classification" class="filter_item_list_classification">
		<li class="filter_item">				
			중분류 1
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
	<div>
		<img src="" id="">
	</div>
	<div>
		<ul>
			<li id="">
				<div class="div_hover_box">
					<b>관광지 A</b>
					<br><br>
					
				</div>				
			</li>
		</ul>
	</div>
	<div>
		<img src="" id="">
	</div>
</div>
</body>
</html>