package edu.vinaenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.vinaenter.constant.Defines;

@Controller
@RequestMapping("error")
public class ErrorController {
	
	@Autowired
	Defines defines;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}
	
	@RequestMapping("403")
	public String error403(ModelMap modelMap) {
		modelMap.addAttribute("msg", "403");
		return "error.index";
	}
	
	@RequestMapping("500")
	public String error500(ModelMap modelMap) {
		modelMap.addAttribute("msg", "500");
		return "error.index";
	}
	
	@RequestMapping("400")
	public String error400(ModelMap modelMap) {
		modelMap.addAttribute("msg", "400");
		return "error.index";
	}
	
	@RequestMapping("404")
	public String error404(ModelMap modelMap) {
		modelMap.addAttribute("msg", "404");
		return "error.index";
	}
	
}
