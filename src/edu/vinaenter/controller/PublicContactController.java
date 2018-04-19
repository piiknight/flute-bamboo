package edu.vinaenter.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.CategoryDAO;
import edu.vinaenter.dao.ContactDAO;
import edu.vinaenter.dao.NewsDAO;
import edu.vinaenter.model.Category;
import edu.vinaenter.model.Contact;

@Controller
public class PublicContactController {
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	NewsDAO newsDAO;
	
	@Autowired
	ContactDAO contactDAO;

	@Autowired
	Defines defines;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		LinkedHashMap<Category, Integer> itemsCat = new LinkedHashMap<>();
		List<Category> cats = categoryDAO.getItems();
		for (Category category : cats) {
			itemsCat.put(category, newsDAO.countItems(category.getCid()));
		}

		LinkedHashMap<Category, Integer> hotItemsCat = new LinkedHashMap<>();
		List<Category> hotCats = categoryDAO.getHotItems();
		for (Category category : hotCats) {
			hotItemsCat.put(category, newsDAO.countItems(category.getCid()));
		}

		modelMap.addAttribute("itemsCat", itemsCat);
		modelMap.addAttribute("hotItemsCat", hotItemsCat);
		modelMap.addAttribute("hotItemsNews", newsDAO.getHotItems());
		modelMap.addAttribute("newItemsNews", newsDAO.getNewItems());
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping("contact")
	public String index() {
		return "public.contact.index";
	}

	@RequestMapping(value = "contact", method = RequestMethod.POST)
	public String index(@Valid @ModelAttribute("contact") Contact contact, BindingResult br, RedirectAttributes ra) {
		if (br.hasErrors()) {
			return "public.contact.index";
		}
		if (contactDAO.addItem(contact) > 0) {
			ra.addFlashAttribute("success", Defines.SUCCSESS);
			return "redirect:/contact";
		} else {
			ra.addFlashAttribute("danger", Defines.ERROR);
			return "redirect:/contact";
		}
	}
}
