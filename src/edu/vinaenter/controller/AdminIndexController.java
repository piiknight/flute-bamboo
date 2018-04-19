package edu.vinaenter.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.CategoryDAO;
import edu.vinaenter.dao.NewsDAO;
import edu.vinaenter.dao.UserDAO;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private NewsDAO newsDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Defines defines;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}
	
	@RequestMapping("")
	public String index(ModelMap modelMap, Principal principal, HttpSession session){
		session.setAttribute("userInfo", userDAO.getItem(principal.getName()));
		modelMap.addAttribute("countNews", newsDAO.countItems());
		modelMap.addAttribute("countUsers", userDAO.countItems());
		modelMap.addAttribute("countCats", categoryDAO.countItems());
		return "admin.index.index";
	}
}
