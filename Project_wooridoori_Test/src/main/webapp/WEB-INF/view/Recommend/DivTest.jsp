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

<title>관광지 추천</title>
<style type="text/css">
   div{
      border: 0.5px solid gray;
   }
   
   div>div.aTag_Controller_box{
      margin-left: 80%;            
   }
   span.span_aTag_Controller{
      cursor: pointer;
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
      z-index: 7;      
   }
   div>ul.filter_item_list_theme{
      position: absolute;
      list-style: none;
      width: 240px;
      left: 800px;
      top: 300px;
      z-index: 7;
   }
   
   div>ul,li.filter_item{      
      float: left;
      width: 40%;         
   }
   
   span.onclick_span{
      cursor: pointer;
   }
   
   div.select_box_div{
      position: absolute;      
      margin-left: 100px;
      width: 300px;
      height: 200px;
   }
   
   div>ul.select_box_ul{
      list-style: none;
   }
   
   div>ul>li.select_box{
      position: relative;   
      left: 0;
      top: 0;
      border: 0.5px solid red;
      width: 300px;
      height: 180px;                        
   }   
   
   div.select_tourbox{   
      position: absolute;      
      left: 0;
      top: 0;
      margin: 0px;
      z-index: 1;
      background-repeat: no-repeat;
      width: 100%;
      height: 100%;
   }
   div>img.select_img{
      position: relative;
      padding: 0;
      z-index: 2;
      width: 100%;
      height: 100%;
   }   
   
   div.div_hover_box{
      position: absolute;
      left: 0;
      top: 0;
      z-index: 3;
      width: 300px;
      height: 180px;
      float: left;
   }
   
   div.select_blockA{
      position: relative;
      padding: 0;
      z-index: 4;
      background: gray;
      opacity:0.7;
      width: 300px;
      height: 90px;   
   }
   div.select_blockB{
      position: relative;
      padding: 0;
      z-index: 5;
      width: 300px;
      height: 90px;      
   }
   
   span.first_trip_click{
      margin-left: 80%;
      width: 10%;
      height: 5%;
   }
   
   img.btn_first_trip{
      width: 20px;
      height: 20px;
   }
   div.select_tourbox > img.tour_image{
      width: 100%;
      height: 100%;
   }
   
   span.tour_name{
      width: 300px;
      height: 20px;
      text-align: center;
   }
   
}
</style>
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
      
      $(".select_box_div").hover(function() {
         $(".div_hover_box").slideToggle("slow");
      });

   });
   
</script>
</head>
<body>
   <div id="content">
      <form action="">
         <div class="select_box_div">
               <div class="select_tourbox">
                  <img src="image/delete.gif" class="select_img">
               </div>
               <div class="div_hover_box">            
                  <div class="select_blockA">
                     <span class="first_trip_click" name="first_trip" value="Y">
                        <img src="images/02.png" class="btn_first_trip">
                     </span>
                  </div>
                  <div class="select_blockB">
                     <ul class="select_box_ul">
                        <li><span>여행지 이름</span></li>
                        <li>
                           <div class="rateit"></div>
                        </li>
                        <li>                     
                           <span><img src="images/12.png" style="width: 20px;">추천</span>
                           <span><img src="images/11.png" style="width: 20px;">즐겨찾기</span>
                        </li>            
                     </ul>
                  </div>                         
               </div>                     
               <span class="tour_name">추천 이유</span>            
         </div>
      </form>
   </div>
</body>
</html>