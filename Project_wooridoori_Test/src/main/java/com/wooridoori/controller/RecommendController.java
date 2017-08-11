package com.wooridoori.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecommendController {

	@RequestMapping("/recommend.wd")
	public String recommendTest(){
		return "Recommend/Recommend";
	}
	
	@RequestMapping("/preference.wd")
	public String preferenceTest(){
		return "Recommend/Preference.wd";
	}
	
	@RequestMapping("/startTest.wd")
	public String startTest(){
		return "Recommend/Test";
	}
	
}
