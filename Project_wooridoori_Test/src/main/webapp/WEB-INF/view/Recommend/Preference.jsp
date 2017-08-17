<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>title</title>
<script type="text/javascript">
	this.categoyButtons=this.el.find(".filter-category")
	this.itemButtons=this.el.find(".filter-item-list .filter-item")
	this.sortingTextEl=this.el.find(".filter-category-wrapper .filter-category.sorting .text")
	this.render()}return e.prototype.render=function(){return this.categoyButtons.on("click",
			function(e){var t,n,i,s;return i=$(e.currentTarget),
	t=i.data("category"),
	e.stopPropagation(),
	$(".filter-item-list").hide(),
	s=$(".filter-item-list."+t+"-list"),
	s.show(),ga("send","event","Some Actions","Movie Filter","show"),
	n=i.position().left,n=n+i.outerWidth()/2-s.outerWidth()/2,s.css("left",n)}),
		this.itemButtons.on("click",function(e){return function(t){var n,
		i;return i=$(t.target),
	n=i.parents(".filter-item-list").data("category"),
	i.hasClass("on")?e.unsetFilter(n,i.data("filter-value")):(e.setFilter(n,i.data("filter-value")),
			ga("send","event","Some Actions","Movie Filter","apply"))}}(this)),
		this.el.on("update-filter-view",
			function(e){return function(t,n){var i;return i={},$.extend(i,n),
	e.updateView(i)}}(this)),
		$(document).on("click",$.proxy(this.hideSelectBox,this))},
	e.prototype.hideSelectBox=function(){return $(".filter-item-list").hide()},
	e.prototype.updateView=function(e){var t,
		n;return delete e.watch,delete e.watch_price,
	delete e.vendor,n=$(".filter-item-list");
	}
</script>
</head>
<body>
	
</body>
</html>