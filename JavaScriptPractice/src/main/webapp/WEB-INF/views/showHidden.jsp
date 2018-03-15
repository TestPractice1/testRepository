<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[ ShowHidden ]</title>
	
	<style>
	div {
		width: 100px;
		height : 100px;
		background-color : orange;
		position: relative;
	
	}
	
	</style>
	
	<script type="text/javascript" src=" <c:url value="/resources/js/jquery-3.2.1.js" />" > </script>
	<script type="text/javascript">
	
	$(function () {
		
		$("input").each(function(){
			
			if ($(this).is(".hide")) {
				
				$(this).on('click',function (event){
					
					$("a").hide("slow");
					event.preventDefault();
					
				});
			}
			
			if ($(this).is(".show")) {
				
				$(this).on('click',function (event) {
					
					$("a").show("slow");
					event.preventDefault();
				});
			}
					
		}); 
		
		
		$('.left').on('click',function (event) {
			
			$("div").animate({right: '+=50px'});
			event.preventDefault();				
			
		});
					
	
		
		$('.right').on('click',function (event) {
			
			$("div").animate({right: '-=50px'});
			event.preventDefault();				
			
		});
							
			
		$('.up').on('click',function (event) {
			
			$("div").animate({top: '-=50px'});
			event.preventDefault();				
			
		});	
		
		$('.down').on('click',function (event) {
			
			$("div").animate({top: '+=50px'});
			event.preventDefault();				
			
		});	
		
		$("div").ondragstart().ondragend(function(){
			
			e.originalEvent.dataTransfer.setData('text',e.target.id);
			
		});
			
		
		
		
		$('.save').on('click',function (){
			
			var div = $("div");
			var offset = div.offset();
			
			/*
			var divX = div.offset().left;
			var divY = divEl.offset().top;
			*/
			
			$(".p").html( "left: " + offset.left + ", top: " + offset.top );

			
		});
			 
			
	});

	
	
	</script>	

</head>
<body>
	<h1>[ ShowHidden ]</h1>
	
	<br><br>
	
	<h2>
	 <a id="a" href="https://www.naver.com/"> <span>네이버</span></a>
	</h2>
	
	<input class="hide" type="button" value="사라지기"> <br>
	<input class="show" type="button" value="나타나기"> <br>
	<br><br><br><br>
	<div draggable="true">
	
	</div>
	<br><br><br><br>
	<p class="p">
	<pre>
	    <input class="up" type="button" value="↑">
	<input class="left" type="button" value="←"><input class="down" type="button" value="↓"><input class="right" type="button" value="→"><br>
	<input class="save" type="button" value="save">
	</pre>
</body>
</html>