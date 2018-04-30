package com.tieusao.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.RoleDAO;
import com.tieusao.dao.UserDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.User;
import com.tieusao.model.UserPassword;
import com.tieusao.model.UserProfile;
import com.tieusao.util.StringUtil;

@Controller
@RequestMapping("admin/user")
public class AdminUserController {
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	private Flash flash;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private StringUtil stringUtil;
	
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
		
		int sumUser = userDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumUser / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("users", userDAO.getItems(offset, Defines.ROW_COUNT_AMIN));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.user.index";
	}

	@RequestMapping("add")
	public String add(ModelMap modelMap) {
		modelMap.addAttribute("roles", roleDAO.getItems());
		return "admin.user.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("user") User user, BindingResult br, HttpServletRequest request, ModelMap modelMap,
			RedirectAttributes ra) {
		if (userDAO.getItem(user.getUsername()) != null) {
			br.rejectValue("username", "Repeat.user.username");
		}
		if (br.hasErrors()) {
			modelMap.addAttribute("roles", roleDAO.getItems());
			modelMap.addAttribute("user", user);
			return "admin.user.add";
		}
		user.setPassword(encoder.encode(user.getPassword()));
		if (userDAO.addItem(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("roles", roleDAO.getItems());
		modelMap.addAttribute("u", userDAO.getItem(id));
		return "admin.user.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String add(@PathVariable("id") int id, @Valid @ModelAttribute("user") UserProfile user, BindingResult br,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
		if (br.hasErrors()) {
			modelMap.addAttribute("roles", roleDAO.getItems());
			modelMap.addAttribute("u", userDAO.getItem(id));
			return "admin.user.edit";
		}
		user.setId(id);
		if (userDAO.editItem(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/user/edit/" + id;
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (userDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc category đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value = "/delete-all", method = RequestMethod.GET)
	public String delAll(@RequestParam("id[]") int[] list_id , RedirectAttributes ra) {
		for (int i : list_id) {
			if (userDAO.delItem(i) > 0) {
				// Xóa tất cả các tin thuộc category đó
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				ra.addFlashAttribute("flash", flash);
			}
		}
		return "redirect:/admin/user";
	}

	@RequestMapping(value = "/password/{id}", method = RequestMethod.GET)
	public String password(@PathVariable("id") int id, ModelMap modelMap) {
		return "admin.user.password";
	}
	
	@RequestMapping(value = "/password/{id}", method = RequestMethod.POST)
	public String add(@PathVariable("id") int id, @Valid @ModelAttribute("user") UserPassword user, BindingResult br,
			@RequestParam("oldpassword") String oldpassword,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
		
		if (!encoder.matches(user.getOldpassword(), userDAO.getItem(id).getPassword())) {
			br.rejectValue("oldpassword", "OldPassword.user.oldpassword");
		}
		if (br.hasErrors()) {
			return "admin.user.password";
		}
		user.setId(id);
		user.setPassword(encoder.encode(user.getPassword()));
		if (userDAO.editPassword(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/user/edit/" + id;
	}
	
}
