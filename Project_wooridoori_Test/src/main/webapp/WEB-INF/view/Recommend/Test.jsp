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

<title>title</title>
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
</script> 
</head>
<body>
	<div class="rateit"></div>
	<div class="rateit" data-rateit-mode="font" data-rateit-icon="★" style="font-family:fontawesome"></div>   
</body>
</html>