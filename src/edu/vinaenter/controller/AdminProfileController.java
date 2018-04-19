package edu.vinaenter.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.RoleDAO;
import edu.vinaenter.dao.UserDAO;
import edu.vinaenter.model.Flash;
import edu.vinaenter.model.User;

@Controller
@RequestMapping("admin/profile")
public class AdminProfileController {
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	private Flash flash;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private UserDAO userDAO;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping(value="", method = RequestMethod.GET)
	public String profile(ModelMap modelMap) {
		return "admin.profile.index";
	}
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public String profile(@ModelAttribute("password") String password, @ModelAttribute("fullname") String fullname ,
			RedirectAttributes ra, Principal principal, HttpSession session) {
		User user = userDAO.getItem(principal.getName());
		if ("".equals(fullname)) {
			flash = new Flash("danger", "Sai định dạng fullname");
			ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/profile";
		}
		user.setFullname(fullname);
		if ("".equals(password)) {
			user.setPassword(userDAO.getItem(principal.getName()).getPassword());
		} else if (password.length() < 5) {
			flash = new Flash("danger", "Sai định dạng Password");
			ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/profile";
		} else {
			user.setPassword(encoder.encode(password));
		}
		if (userDAO.editItem(user) > 0) {
			// Thành công thì thay đổi thuộc tính session
			session.setAttribute("userInfo", user);
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/profile";
	}
	
}
