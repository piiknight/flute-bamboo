package edu.vinaenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.CategoryDAO;
import edu.vinaenter.model.Category;
import edu.vinaenter.model.Flash;

@Controller
@RequestMapping("admin/cat")
public class AdminCatController {

	@Autowired
	private Defines defines;
	
	private Flash flash;

	@Autowired
	private CategoryDAO categoryDAO;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
		page = 1;
	}

	int sumCats = categoryDAO.countItems();
	int sumPages = (int) Math.ceil((float) sumCats / Defines.ROW_COUNT_AMIN);
	int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
	int pageStart, pageEnd;
	int pageNum = Defines.GROUP_PAGE_AMIN;
	int linkPage = (int) Math.floor((float) page / 2);

	modelMap.addAttribute("categories", categoryDAO.getItems(offset));

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
		return "admin.cat.index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "admin.cat.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("category") Category category, BindingResult br, RedirectAttributes ra) {
		if (br.hasErrors()) {
			return "admin.cat.add";
		}
		if (categoryDAO.addItem(category) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/cat";
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (categoryDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/cat";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit() {
		return "admin.cat.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("category", categoryDAO.getItem(id));
		return "admin.cat.edit";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") int id, RedirectAttributes ra, @Valid @ModelAttribute("category") Category category, BindingResult br) {
		if (br.hasErrors()) {
			return "admin.cat.add";
		}
		category.setCid(id);
		if (categoryDAO.editItem(category) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/cat";
	}
}
