package org.hdcd.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class HomeController {
	@RequestMapping(value="/")
    public String home() {
        return "home";  // index.html or index.jsp
    }
	
	@RequestMapping(value="/formHome")
    public String fromHome() {
        return "formHome";  
    }
	
	@RequestMapping(value="/ajaxHome")
	public String ajaxHome() {
		return "ajaxHome";
	}
}
