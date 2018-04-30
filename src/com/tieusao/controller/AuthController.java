package  com.tieusao.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tieusao.constant.Defines;
import com.tieusao.dao.RoleDAO;
import com.tieusao.dao.UserDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.User;

@Controller
@RequestMapping("auth")
public class AuthController {

	private Flash flash;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private UserDAO userDAO;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}
	
	@RequestMapping("login")
	public String login(ModelMap modelMap) {
		return "auth.login";
	}
	
	@RequestMapping(value="/login/dang-ky", method=RequestMethod.POST)
	public String register(@Valid @ModelAttribute("user") User user, BindingResult br, ModelMap modelMap, RedirectAttributes ra) {
		if (userDAO.getItem(user.getUsername()) != null) {
			br.rejectValue("username", "Repeat.user.username");
		}
		if (br.hasErrors()) {
			modelMap.addAttribute("check" , 1);
			modelMap.addAttribute("user", user);
			return "auth.login";
		}
		user.setPassword(encoder.encode(user.getPassword()));
		user.setRole_id(roleDAO.getItem("USER").getRole_id());
		user.setEnable(1);
		if (userDAO.addItem(user) > 0) {
			flash = new Flash("success", "Bạn đã đăng ký thành công với Username: " + user.getUsername());
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/auth/login";
	}
	
}
