package com.tieusao.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tieusao.constant.Defines;
import com.tieusao.dao.UserDAO;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private Defines defines;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap, Principal principal, HttpSession session) {
		session.setAttribute("userInfo", userDAO.getItem(principal.getName()));
		modelMap.addAttribute("defines", defines);
	} 
	
	@RequestMapping("")
	public String index() {
		return "admin.index.index";
	}
}
