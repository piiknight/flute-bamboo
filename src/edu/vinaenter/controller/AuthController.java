package edu.vinaenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.vinaenter.constant.Defines;

@Controller
@RequestMapping("auth")
public class AuthController {
	
	@Autowired
	private Defines defines;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}
	
	@RequestMapping("login")
	public String login() {
		return "auth.login";
	}
	
}
