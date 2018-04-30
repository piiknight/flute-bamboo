package com.tieusao.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.CodeDAO;
import com.tieusao.model.Code;
import com.tieusao.model.Flash;
import com.tieusao.util.StringUtil;
import com.tieusao.util.SupportUtil;

@Controller
@RequestMapping("admin/code")
public class AdminCodeController {
	
	private Flash flash;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private CodeDAO codeDAO ;

	@Autowired
	private StringUtil stringUtil;
	
	@Autowired
	private SupportUtil supportUtil;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
		modelMap.addAttribute("stringUtil", stringUtil);
		modelMap.addAttribute("supportUtil", supportUtil);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}
		
		int sumCode = codeDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumCode / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("codes", codeDAO.getItems(offset, Defines.ROW_COUNT_AMIN));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.code.index";
	}

	@RequestMapping("add")
	public String add(ModelMap modelMap) {
		return "admin.code.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("code") Code code, BindingResult br, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		if (br.hasErrors()) {
			modelMap.addAttribute("code", code);
			return "admin.code.add";
		}
		Code oldCode = codeDAO.getItem(code.getCname());
		if (oldCode != null) {
			oldCode.setQuantity(code.getQuantity() + oldCode.getQuantity());
			if (codeDAO.editItem(oldCode) > 0) {
				flash = new Flash("success", Defines.SUCCSESS);
			} else {
				flash = new Flash("danger", Defines.ERROR);
			}
			return "redirect:/admin/code/";
		}
		if (codeDAO.addItem(code) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/code/";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("c", codeDAO.getItem(id));
		return "admin.code.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String add(@PathVariable("id") int id, @Valid @ModelAttribute("code") Code code, BindingResult br,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
		if (br.hasErrors()) {
			modelMap.addAttribute("c", codeDAO.getItem(id));
			return "admin.code.edit";
		}
		code.setCid(id);
		if (codeDAO.editItem(code) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/code/edit/" + id;
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (codeDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/code";
	}
	
	@RequestMapping(value = "/delete-all", method = RequestMethod.GET)
	public String delAll(@RequestParam("id[]") int[] list_id , RedirectAttributes ra) {
		for (int i : list_id) {
			if (codeDAO.delItem(i) > 0) {
				// Xóa tất cả các tin thuộc category đó
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				ra.addFlashAttribute("flash", flash);
			}
		}
		return "redirect:/admin/code";
	}
	
}
