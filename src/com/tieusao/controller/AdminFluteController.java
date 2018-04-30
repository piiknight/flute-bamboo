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
import com.tieusao.dao.FluteDAO;
import com.tieusao.dao.FluteListDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.Flute;
import com.tieusao.util.FileUtil;
import com.tieusao.util.StringUtil;
import com.tieusao.util.SupportUtil;

@Controller
@RequestMapping("admin/flute")
public class AdminFluteController {

	private Flash flash;

	@Autowired
	private Defines defines;

	@Autowired
	private FluteListDAO fluteListDAO;
	
	@Autowired
	private FluteDAO fluteDAO;

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
		
		int sumFlute = fluteDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumFlute / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("flutes", fluteDAO.getItemsPagination(offset, Defines.ROW_COUNT_AMIN));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.flute.index";
	}

	@RequestMapping("add")
	public String add(ModelMap modelMap) {
		modelMap.addAttribute("fluteList", fluteListDAO.getItems());
		return "admin.flute.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("flute") Flute flute, BindingResult br,
			@RequestParam("hinhanh") CommonsMultipartFile cmf, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		String fileName = "";
		try {
			fileName = FileUtil.upload(cmf, request, Defines.DIR_UPLOAD_FLUTE);
		} catch (IOException e) {
		}
		if ("1".equals(fileName)) {
			br.rejectValue("picture", "Error.picture");
		}
		if (br.hasErrors()) {
			try {
				FileUtil.delete(fileName, request, Defines.DIR_UPLOAD_FLUTE);
			} catch (IOException e) {
			}
			modelMap.addAttribute("fluteList", fluteListDAO.getItems());
			modelMap.addAttribute("flute", flute);
			return "admin.flute.add";
		}
		flute.setPicture(fileName);
		if (fluteDAO.addItem(flute) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/flute";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("fluteList", fluteListDAO.getItems());
		modelMap.addAttribute("f", fluteDAO.getItem(id));
		return "admin.flute.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String add(@PathVariable("id") int id, @Valid @ModelAttribute("flute") Flute flute, BindingResult br,
			@RequestParam("hinhanh") CommonsMultipartFile cmf, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		String fileName = "";
		try {
			fileName = FileUtil.upload(cmf, request, Defines.DIR_UPLOAD_FLUTE);
		} catch (IOException e) {
		}
		if ("1".equals(fileName)) {
			br.rejectValue("picture", "Error.picture");
		}
		if (br.hasErrors()) {
			try {
				FileUtil.delete(fileName, request, Defines.DIR_UPLOAD_FLUTE);
			} catch (IOException e) {
			}
			modelMap.addAttribute("fluteList", fluteListDAO.getItems());
			modelMap.addAttribute("f", fluteDAO.getItem(id));
			return "admin.flute.edit";
		}
		
		if (!"".equals(fileName)) {
			try {
				FileUtil.delete(flute.getPicture(), request, Defines.DIR_UPLOAD_FLUTE);
			} catch (IOException e) {
			}
			flute.setPicture(fileName);
			
		}
		
		flute.setId_fl(id);
		if (fluteDAO.editItem(flute) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/flute/edit/" + id;
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (fluteDAO.deleteItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/flute";
	}
	
	@RequestMapping(value = "/delete-all", method = RequestMethod.GET)
	public String delAll(@RequestParam("id[]") int[] list_id , RedirectAttributes ra) {
		for (int i : list_id) {
			if (fluteDAO.deleteItem(i) > 0) {
				// Xóa tất cả các tin thuộc category đó
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				ra.addFlashAttribute("flash", flash);
			}
		}
		return "redirect:/admin/flute";
	}
}
