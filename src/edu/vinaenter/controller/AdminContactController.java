package edu.vinaenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.ContactDAO;
import edu.vinaenter.model.User;

@Controller
@RequestMapping("admin/contact")
public class AdminContactController {
	
	@Autowired
	private Defines defines;

	@Autowired
	private ContactDAO contactDAO;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
		page = 1;
	}

	int sumContact = contactDAO.countItems();
	int sumPages = (int) Math.ceil((float) sumContact / Defines.ROW_COUNT_AMIN);
	int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
	int pageStart, pageEnd;
	int pageNum = Defines.GROUP_PAGE_AMIN;
	int linkPage = (int) Math.floor((float) page / 2);

	modelMap.addAttribute("contacts", contactDAO.getItems(offset));

	if ((page > 1) && (sumPages > 0)) {
		modelMap.addAttribute("previous", (page - 1));
	}

	if (page > pageNum) {
		pageStart = page - linkPage;
		if (sumPages > page + linkPage) {
			pageEnd = sumPages + linkPage;
		} else if (page <= sumPages && page > sumPages - (pageNum - 1)) {
			pageStart = sumPages - (pageNum - 1);
			pageEnd = sumPages;
		} else {
			pageEnd = sumPages;
		}
	} else {
		pageStart = 1;
		if (pageNum < sumPages) {
			pageEnd = pageNum;
		} else {
			pageEnd = sumPages;
		}
	}
	modelMap.addAttribute("pageStart", pageStart);
	modelMap.addAttribute("pageEnd", pageEnd);
	modelMap.addAttribute("page", page);

	if (page < sumPages && sumPages > 1) {
		// Button trang sau
		modelMap.addAttribute("next", (page + 1));
	}
		
		return "admin.contact.index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		return "admin.contact.index";
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (contactDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc user đó
			ra.addFlashAttribute("msg", Defines.SUCCSESS);
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "redirect:/admin/contact";
	}

}
