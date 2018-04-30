package com.tieusao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tieusao.constant.Defines;
import com.tieusao.dao.FluteListDAO;
import com.tieusao.model.Contact;

@Controller
@RequestMapping("contact")
public class PublicContactController {
	
	@Autowired
	private Defines defines;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	} 
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public void index(@ModelAttribute("contact") Contact contact) {
		contact.toString();
	}
}
