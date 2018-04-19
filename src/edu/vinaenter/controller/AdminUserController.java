package edu.vinaenter.controller;

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
import edu.vinaenter.dao.RoleDAO;
import edu.vinaenter.dao.UserDAO;
import edu.vinaenter.model.Flash;
import edu.vinaenter.model.User;

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

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
		page = 1;
	}

	int sumUser = userDAO.countItems();
	int sumPages = (int) Math.ceil((float) sumUser / Defines.ROW_COUNT_AMIN);
	int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
	int pageStart, pageEnd;
	int pageNum = Defines.GROUP_PAGE_AMIN;
	int linkPage = (int) Math.floor((float) page / 2);

	modelMap.addAttribute("users", userDAO.getItems(offset));

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
		
		return "admin.user.index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.addAttribute("roles", roleDAO.getItems());
		return "admin.user.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("user") User user, BindingResult br, ModelMap modelMap, RedirectAttributes ra) {
		if (br.hasErrors()) {
			modelMap.addAttribute("roles", roleDAO.getItems());
			modelMap.addAttribute("user", user);
			return "admin.user.add";
		}
		if (userDAO.getItem(user.getUsername()) != null) {
			flash = new Flash("danger", Defines.ERROR);
			 ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/user/add";
		} else {
			user.setPassword(encoder.encode(user.getPassword()));
			if (userDAO.addItem(user) > 0) {
				flash = new Flash("success", Defines.SUCCSESS);
				ra.addFlashAttribute("flash", flash);
			} else {
				flash = new Flash("danger", Defines.ERROR);
				 ra.addFlashAttribute("flash", flash);
			}
			return "redirect:/admin/user";
		}
	}

	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra) {
		if (defines.getSuperAdmin().equals(userDAO.getItem(id).getUsername())) {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/user";
		}
		if (userDAO.delItem(id) > 0) {
			// Xóa tất cả các tin thuộc user đó
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(ModelMap modelMap) {
		modelMap.addAttribute("roles", roleDAO.getItems());
		return "admin.user.edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("user", userDAO.getItem(id));
		modelMap.addAttribute("roles", roleDAO.getItems());
		return "admin.user.edit";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") int id, RedirectAttributes ra,@ModelAttribute("user") User user) {
		user.setId(id);
		if ("".equals(user.getFullname())) {
			flash = new Flash("danger", "Sai định dạng fullname");
			ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/user/edit/" + id;
		}
		if ("".equals(user.getPassword())) {
			user.setPassword(userDAO.getItem(id).getPassword());
		} else if (user.getPassword().length() < 5) {
			flash = new Flash("danger", "Sai định dạng Password");
			ra.addFlashAttribute("flash", flash);
			return "redirect:/admin/user/edit/" + id;
		} else {
			user.setPassword(encoder.encode(user.getPassword()));
		}
		if (userDAO.editItem(user) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
			ra.addFlashAttribute("flash", flash);
		} else {
			flash = new Flash("danger", Defines.ERROR);
			ra.addFlashAttribute("flash", flash);
		}
		return "redirect:/admin/user";
	}
}
