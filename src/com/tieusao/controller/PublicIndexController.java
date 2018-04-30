package com.tieusao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tieusao.constant.Defines;
import com.tieusao.dao.FluteListDAO;

@Controller
@RequestMapping("")
public class PublicIndexController {
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private FluteListDAO fluteListDAO;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("fluteList", fluteListDAO.getItems());
		modelMap.addAttribute("defines", defines);
	} 
	
	@RequestMapping("")
	public String index() {
		return "public.index.index";
	}
}
