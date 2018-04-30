package com.tieusao.controller;

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

import com.tieusao.constant.Defines;
import com.tieusao.dao.PaymentDAO;
import com.tieusao.model.Flash;
import com.tieusao.model.Payment;

@Controller
@RequestMapping("admin/payment")
public class AdminPaymentController {
	
	private Flash flash;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private PaymentDAO paymentDAO ;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}
		
		int sumPayment = paymentDAO.countItems();
		int sumPage = (int) Math.ceil((float) sumPayment / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int groupPage = Defines.GROUP_PAGE_AMIN;
		
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("payments", paymentDAO.getItems(offset, Defines.ROW_COUNT_AMIN));
		modelMap.addAttribute("groupPage", groupPage);
		
		return "admin.payment.index";
	}

	@RequestMapping("add")
	public String add(ModelMap modelMap) {
		return "admin.payment.add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("payment") Payment payment, BindingResult br, ModelMap modelMap,
			RedirectAttributes ra) {
		if (paymentDAO.getItem(payment.getPname()) != null) {
			System.out.println(1);
			br.rejectValue("pname", "Repeat.payment.pname");
		}
		if (br.hasErrors()) {
			modelMap.addAttribute("payment", payment);
			return "admin.payment.add";
		}
		if (paymentDAO.addItem(payment) > 0) {
			flash = new Flash("success", Defines.SUCCSESS);
		} else {
			flash = new Flash("danger", Defines.ERROR);
		}
		ra.addFlashAttribute("flash", flash);
		return "redirect:/admin/payment/";
	}
	
}
