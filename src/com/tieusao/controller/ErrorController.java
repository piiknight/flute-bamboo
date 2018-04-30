package com.tieusao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;

@Controller
@RequestMapping("error")
public class ErrorController {
	
	@Autowired
	Defines defines;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}
	
	@RequestMapping("")
	public String error() {
		return "error.index";
	}
	
	@RequestMapping("403")
	public String error403(RedirectAttributes ra) {
		ra.addFlashAttribute("danger", "403");
		return "redirect:/error";
	}
	
	@RequestMapping("500")
	public String error500(RedirectAttributes ra) {
		ra.addFlashAttribute("danger", "500");
		return "redirect:/error";
	}
	
	@RequestMapping("400")
	public String error400(RedirectAttributes ra) {
		ra.addFlashAttribute("danger", "400");
		return "redirect:/error";
	}
	
	@RequestMapping("404")
	public String error404(RedirectAttributes ra) {
		ra.addFlashAttribute("danger", "404");
		return "redirect:/error";
	}
	
}
