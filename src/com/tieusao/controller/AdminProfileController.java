package com.tieusao.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.BillDAO;
import com.tieusao.dao.BillDetailDAO;
import com.tieusao.dao.CodeDAO;
import com.tieusao.dao.RoleDAO;
import com.tieusao.dao.UserDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.User;
import com.tieusao.model.UserPassword;
import com.tieusao.model.UserProfile;

@Controller
@RequestMapping("admin/profile")
public class AdminProfileController {
	
	private Flash flash;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private BillDAO billDAO ;
	
	@Autowired
	private BillDetailDAO billDetailDAO ;
	
	@Autowired
	private CodeDAO codeDAO ;
	
	@Autowired
	private UserDAO userDAO ;
	
	@Autowired
	private RoleDAO roleDAO ;
	

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "bill/{page}", "bill" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap, HttpSession session) {
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo == null) {
			return "redirect:/auth/login";
		}
		int id = userInfo.getId();
		if (page == null) {
			page = 1;
		}
		
		int sumBill = billDAO.countItemsProfile(id);
		int sumPage = (int) Math.ceil((float) sumBill / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("bills", billDAO.getItemsProfile(offset, Defines.ROW_COUNT_AMIN , id));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.profile.index";
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String edit(ModelMap modelMap, HttpSession session) {
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo == null) {
			return "redirect:/auth/login";
		}
		int id = userInfo.getId();
		modelMap.addAttribute("roles", roleDAO.getItems());
		modelMap.addAttribute("u", userDAO.getItem(id));
		return "admin.profile.edit";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String edit(@Valid @ModelAttribute("user") UserProfile user, BindingResult br,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra, HttpSession session) {
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo == null) {
			return "redirect:/auth/login";
		}
		int id = userInfo.getId();
		if (br.hasErrors()) {
			modelMap.addAttribute("roles", roleDAO.getItems());
			modelMap.addAttribute("u", userDAO.getItem(id));
			return "admin.profile.edit";
		}
		user.setId(id);
		if (userDAO.editItem(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/profile";
	}

//	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
//	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
//		if (userDAO.delItem(id) > 0) {
//			// Xóa tất cả các tin thuộc category đó
//			flash = new Flash("success", Defines.SUCCSESS);
//			ra.addFlashAttribute("flash", flash);
//		} else {
//			flash = new Flash("danger", Defines.ERROR);
//			ra.addFlashAttribute("flash", flash);
//		}
//		return "redirect:/admin/user";
//	}
	
	@RequestMapping(value = "/password", method = RequestMethod.GET)
	public String password(ModelMap modelMap, HttpSession session) {
		return "admin.profile.password";
	}
	
	@RequestMapping(value = "/password", method = RequestMethod.POST)
	public String password(@Valid @ModelAttribute("user") UserPassword user, BindingResult br,
			@RequestParam("oldpassword") String oldpassword, HttpSession session,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo == null) {
			return "redirect:/auth/login";
		}
		int id = userInfo.getId();
		if (!encoder.matches(user.getOldpassword(), userDAO.getItem(id).getPassword())) {
			br.rejectValue("oldpassword", "OldPassword.user.oldpassword");
		}
		if (br.hasErrors()) {
			return "admin.profile.password";
		}
		user.setId(id);
		user.setPassword(encoder.encode(user.getPassword()));
		if (userDAO.editPassword(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/profile/";
	}

	@RequestMapping(value = "/bill/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("bill", billDAO.getItem(id));
		modelMap.addAttribute("code", codeDAO.getItem(billDAO.getItem(id).getCid()));
		modelMap.addAttribute("user", userDAO.getItem(billDAO.getItem(id).getUid()));
		modelMap.addAttribute("details", billDetailDAO.getItems(id));
		return "admin.profile.detail";
	}

	@RequestMapping(value = "/bill/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra, HttpSession session) {
		if (billDAO.setTemp(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/profile/bill";
	}
	
	@RequestMapping(value = "bill/delete-all", method = RequestMethod.GET)
	public String delAll(@RequestParam("id[]") int[] list_id , RedirectAttributes ra) {
		for (int i : list_id) {
			if (billDAO.setTemp(i) > 0) {
				// Xóa tất cả các tin thuộc category đó
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				ra.addFlashAttribute("flash", flash);
			}
		}
		return "redirect:/admin/profile/bill";
	}
	
}
