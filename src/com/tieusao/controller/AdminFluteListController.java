package com.tieusao.controller;

import java.io.IOException;

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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.FluteListDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.FluteList;
import com.tieusao.util.FileUtil;
import com.tieusao.util.StringUtil;

@Controller
@RequestMapping("admin/flute-list")
public class AdminFluteListController {

	private Flash flash;

	@Autowired
	private Defines defines;

	@Autowired
	private FluteListDAO fluteListDAO;

	@Autowired
	StringUtil stringUtil;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
		modelMap.addAttribute("stringUtil", stringUtil);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}
		
		int sumFl = fluteListDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumFl / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("fluteList", fluteListDAO.getItemsPagination(offset));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.flutelist.index";
	}

	@RequestMapping("add")
	public String add() {
		return "admin.flutelist.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("fluteList") FluteList fluteList, BindingResult br,
			@RequestParam("hinhanh") CommonsMultipartFile cmf, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		String fileName = "";
		if (fluteListDAO.getItem(fluteList.getName_fl()) != null) {
			br.rejectValue("name_fl", "Repeat.fluteList.name_fl");
		}
		try {
			fileName = FileUtil.upload(cmf, request, Defines.DIR_UPLOAD_FL);
		} catch (IOException e) {
		}
		if ("1".equals(fileName)) {
			br.rejectValue("picture", "Error.picture");
		}
		if (br.hasErrors()) {
			try {
				FileUtil.delete(fileName, request, Defines.DIR_UPLOAD_FL);
			} catch (IOException e) {
			}
			modelMap.addAttribute("fluteList", fluteList);
			return "admin.flutelist.add";
		}
		fluteList.setPicture(fileName);
		if (fluteListDAO.addItem(fluteList) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/flute-list";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		FluteList fl = fluteListDAO.getItem(id);
		modelMap.addAttribute("fl", fl);
		return "admin.flutelist.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String add(@PathVariable("id") int id, @Valid @ModelAttribute("fluteList") FluteList fluteList, BindingResult br,
			@RequestParam("hinhanh") CommonsMultipartFile cmf, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		String fileName = "";
		try {
			fileName = FileUtil.upload(cmf, request, Defines.DIR_UPLOAD_FL);
		} catch (IOException e) {
		}
		if ("1".equals(fileName)) {
			br.rejectValue("picture", "Error.picture");
		}
		if (br.hasErrors()) {
			try {
				FileUtil.delete(fileName, request, Defines.DIR_UPLOAD_FL);
			} catch (IOException e) {
			}
			modelMap.addAttribute("fl", fluteListDAO.getItem(id));
			return "admin.flutelist.edit";
		}
		
		if (!"".equals(fileName)) {
			try {
				FileUtil.delete(fluteList.getPicture(), request, Defines.DIR_UPLOAD_FL);
			} catch (IOException e) {
			}
			fluteList.setPicture(fileName);
		}
		fluteList.setId_fl(id);
		if (fluteListDAO.editItem(fluteList) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/flute-list/edit/" + id;
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (fluteListDAO.deleteItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/flute-list";
	}
}
