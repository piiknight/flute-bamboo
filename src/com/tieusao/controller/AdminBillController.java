package com.tieusao.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.BillDAO;
import com.tieusao.dao.BillDetailDAO;
import com.tieusao.dao.CodeDAO;
import com.tieusao.dao.UserDAO;
import com.tieusao.model.Flash;

@Controller
@RequestMapping("admin/bill")
public class AdminBillController {
	
	private Flash flash;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private BillDAO billDAO ;
	
	@Autowired
	private CodeDAO codeDAO ;
	
	@Autowired
	private UserDAO userDAO ;
	
	@Autowired
	private BillDetailDAO billDetailDAO ;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}
		
		int sumBill = billDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumBill / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("bills", billDAO.getItems(offset, Defines.ROW_COUNT_AMIN));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.bill.index";
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("bill", billDAO.getItem(id));
		modelMap.addAttribute("code", codeDAO.getItem(billDAO.getItem(id).getCid()));
		modelMap.addAttribute("user", userDAO.getItem(billDAO.getItem(id).getUid()));
		modelMap.addAttribute("details", billDetailDAO.getItems(id));
		return "admin.bill.detail";
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (billDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/bill";
	}
	
	@RequestMapping(value = "/delete-all", method = RequestMethod.GET)
	public String delAll(@RequestParam("id[]") int[] list_id , RedirectAttributes ra) {
		for (int i : list_id) {
			if (billDAO.delItem(i) > 0) {
				// Xóa tất cả các tin thuộc category đó
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				ra.addFlashAttribute("flash", flash);
			}
		}
		return "redirect:/admin/bill";
	}
	
}
