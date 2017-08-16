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
		$(".div_hover_box").slideDown();
		
		$(".select_img").hover(function(){		
			$(".div_hover_box").slideUp("slow");			
		});
	});
	
	function filter_aera(e){		
		$(e).click(function(){
			$("#list_classification").toggle();
		});
	}
	
	function filter_classification(e){		
		$(e).click(function(){
			$("#filter_item_list_theme").toggle();
		});
	}