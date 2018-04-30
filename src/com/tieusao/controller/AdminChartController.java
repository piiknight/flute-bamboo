package com.tieusao.controller;

import java.security.Principal;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tieusao.constant.Defines;
import com.tieusao.dao.CirclePaymentDAO;
import com.tieusao.dao.FluteDAO;
import com.tieusao.dao.MonthlyRevenueDAO;
import com.tieusao.dao.RevenueDAO;
import com.tieusao.dao.UserDAO;
import com.tieusao.model.CirclePayment;
import com.tieusao.model.MonthlyRevenue;

@Controller
@RequestMapping("admin/chart")
public class AdminChartController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private MonthlyRevenueDAO monthlyRevenueDAO;
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private FluteDAO fluteDAO;
	
	@Autowired
	private CirclePaymentDAO circlePaymentDAO;
	
	@Autowired
	private RevenueDAO revenueDAO ;
	
	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap, Principal principal, HttpSession session) {
		session.setAttribute("userInfo", userDAO.getItem(principal.getName()));
		modelMap.addAttribute("defines", defines);
		modelMap.addAttribute("totalProduct", fluteDAO.countItems());
		modelMap.addAttribute("totalRevenue", revenueDAO.getItem());
		modelMap.addAttribute("totalUser", userDAO.countItems());
		modelMap.addAttribute("monthMax", monthlyRevenueDAO.countMax());
		
		int countMaxRun = monthlyRevenueDAO.countMaxRun();
		int selectMonth = countMaxRun;
		String msg = monthlyRevenueDAO.monthYear(selectMonth - 1);
		List<MonthlyRevenue> listNot = monthlyRevenueDAO.getItems( 0, selectMonth, msg);
		List<MonthlyRevenue> listHaving = monthlyRevenueDAO.getItems( 1, selectMonth, msg);
		String label = "[";
		String data1 = "[";
		String data2 = "[";
		int j = 0, k = 0;
		for (int i = 0; i < countMaxRun; i++) {
			String check = monthlyRevenueDAO.monthYear(selectMonth - i - 1);
			label += "'" + check + "',";
			if (j != listHaving.size()) {
				if (check.equals(listHaving.get(j).getMonth())) {
					data1 += listHaving.get(j).getTotal() + ",";
					j++;
				} else {
					data1 += 0 + ",";
				}
			} else {
				data1 += 0 + ",";
			}
			
			if (k != listNot.size()) {
				if (check.equals(listNot.get(k).getMonth())) {
					data2 += listNot.get(k).getTotal() + ",";
					k++;
				} else {
					data2 += 0 + ",";
				}
			} else {
				data2 += 0 + ",";
			}
		}

		if(label.endsWith(",") && data1.endsWith(",") && data2.endsWith(",") )
		{
			label = label.substring(0,label.length() - 1) + "]";
			data1 = data1.substring(0,data1.length() - 1) + "]";
			data2 = data2.substring(0,data2.length() - 1) + "]";
			modelMap.addAttribute("label", label);
			modelMap.addAttribute("data1", data1);
			modelMap.addAttribute("data2", data2);
		} else {
			modelMap.addAttribute("label", "");
			modelMap.addAttribute("data1", "");
			modelMap.addAttribute("data2", "");
		}
		
		List<CirclePayment> circles = circlePaymentDAO.getItems();
		int size =  circles.size();
		int[] count = new int[size];
		for (int i = 0; i < circles.size(); i++) {
			count[i] = circles.get(i).getCount();
		}
		
		modelMap.addAttribute("circleCount", Arrays.toString(count));
		modelMap.addAttribute("circles", circles);
		
	} 
	
	@RequestMapping("")
	public String index(ModelMap modelMap) {
		int countMax = monthlyRevenueDAO.countMax();
		int selectMonthQuantity = countMax;
 		
		List<MonthlyRevenue> list = monthlyRevenueDAO.getQuantity(selectMonthQuantity, countMax);
		String labels = "[";
		String data = "[";
		for (MonthlyRevenue monthlyRevenue : list) {
			labels += "'" + monthlyRevenue.getMonth() + "',";
			data += monthlyRevenue.getTotal() + ",";
		}
		if(labels.endsWith(",") && data.endsWith(",") )
		{
			labels = labels.substring(0,labels.length() - 1) + "]";
			data = data.substring(0,data.length() - 1) + "]";
			modelMap.addAttribute("labels", labels);
			modelMap.addAttribute("data", data);
		} else {
			modelMap.addAttribute("labels", "");
			modelMap.addAttribute("data", "");
		}
		return "admin.chart.index";
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String index(@RequestParam("selectMonth") int selectMonth , ModelMap modelMap) {
		int countMaxRun = monthlyRevenueDAO.countMaxRun();
		String msg = monthlyRevenueDAO.monthYear(selectMonth - 1);
		List<MonthlyRevenue> listNot = monthlyRevenueDAO.getItems( 0, selectMonth, msg);
		List<MonthlyRevenue> listHaving = monthlyRevenueDAO.getItems( 1, selectMonth, msg);
		String label = "[";
		String data1 = "[";
		String data2 = "[";
		int j = 0, k = 0;
		System.out.println("size: " + listHaving.size() + listNot.size());
		for (int i = 0; i < countMaxRun; i++) {
			String check = monthlyRevenueDAO.monthYear(selectMonth - i - 1);
			label += "'" + check + "',";
			if (j != listHaving.size()) {
				if (check.equals(listHaving.get(j).getMonth())) {
					data1 += listHaving.get(j).getTotal() + ",";
					j++;
				} else {
					data1 += 0 + ",";
				}
			} else {
				data1 += 0 + ",";
			}
			
			if (k != listNot.size()) {
				if (check.equals(listNot.get(k).getMonth())) {
					data2 += listNot.get(k).getTotal() + ",";
					k++;
				} else {
					data2 += 0 + ",";
				}
			} else {
				data2 += 0 + ",";
			}
		}

		if(label.endsWith(",") && data1.endsWith(",") && data2.endsWith(",") )
		{
			label = label.substring(0,label.length() - 1) + "]";
			data1 = data1.substring(0,data1.length() - 1) + "]";
			data2 = data2.substring(0,data2.length() - 1) + "]";
			modelMap.addAttribute("label", label);
			modelMap.addAttribute("data1", data1);
			modelMap.addAttribute("data2", data2);
		} else {
			modelMap.addAttribute("label", "");
			modelMap.addAttribute("data1", "");
			modelMap.addAttribute("data2", "");
		}
		return "admin.chart.revenue";
	}
	
	@RequestMapping(value="/quantity", method=RequestMethod.POST)
	public String quantity(@RequestParam("selectMonthQuantity") int selectMonthQuantity , ModelMap modelMap) {
		int countMax = monthlyRevenueDAO.countMax();
		List<MonthlyRevenue> list = monthlyRevenueDAO.getQuantity(selectMonthQuantity, countMax);
		String labels = "[";
		String data = "[";
		for (MonthlyRevenue monthlyRevenue : list) {
			labels += "'" + monthlyRevenue.getMonth() + "',";
			data += monthlyRevenue.getTotal() + ",";
		}
		if(labels.endsWith(",") && data.endsWith(",") )
		{
			labels = labels.substring(0,labels.length() - 1) + "]";
			data = data.substring(0,data.length() - 1) + "]";
			modelMap.addAttribute("labels", labels);
			modelMap.addAttribute("data", data);
		} else {
			modelMap.addAttribute("labels", "");
			modelMap.addAttribute("data", "");
		}
		return "admin.chart.quantity";
		
	}
}
