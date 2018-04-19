package edu.vinaenter.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Time;

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

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.CategoryDAO;
import edu.vinaenter.dao.NewsDAO;
import edu.vinaenter.model.Flash;
import edu.vinaenter.model.News;

@Controller
@RequestMapping("admin/news")
public class AdminNewsController {

	@Autowired
	private Defines defines;
	
	private Flash flash;

	@Autowired
	private NewsDAO newsDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping({ "{page}", "" })
	public String index(@PathVariable(required=false) Integer page, ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}

		int sumNews = newsDAO.countItems();
		int sumPages = (int) Math.ceil((float) sumNews / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		int pageStart, pageEnd;
		int pageNum = Defines.GROUP_PAGE_AMIN;
		int linkPage = (int) Math.floor((float) page / 2);

		modelMap.addAttribute("listNews", newsDAO.getItems(offset));

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
		return "admin.news.index";
	}

	 @RequestMapping(value = "/add", method = RequestMethod.GET)
	 public String add(ModelMap modelMap) {
		 modelMap.addAttribute("categories", categoryDAO.getItems());
		 return "admin.news.add";
	 }
	 
	 @RequestMapping(value = "/add", method = RequestMethod.POST)
	 public String add(@Valid @ModelAttribute("news") News news, BindingResult br, @RequestParam("hinhanh") CommonsMultipartFile cmf,
			 HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
		 if (br.hasErrors()) {
			 modelMap.addAttribute("news", news);
			 modelMap.addAttribute("categories", categoryDAO.getItems());
			 return "admin.news.add";
		 }
		 String fileName = cmf.getOriginalFilename();
		 if (!"".equals(fileName)) {
			 
			 // Xử lý upload file
			 String appPath = request.getServletContext().getRealPath("");
			 String dirPath = appPath + Defines.DIR_UPLOAD;
			 File dirFile = new File(dirPath);
			 if (!dirFile.exists()) {
				 dirFile.mkdirs();
			 }
			 String img[] = cmf.getContentType().split("/");
			 if (!"image".equals(img[0])) {
				 flash = new Flash("success", Defines.SUCCSESS);
				 ra.addFlashAttribute("flash", flash);
				 return "redirect:/admin/news";
			 }
			 fileName = "files_" + System.currentTimeMillis() + "." + img[1];
			 String filePath = dirPath + File.separator + fileName;
			 
			 try {
				System.out.println(filePath);
				cmf.transferTo(new File(filePath));
			 } catch (IOException e) {
				 return "redirect:/admin/news";
			 }
		 } else {
			 flash = new Flash("danger", Defines.ERROR);
			 ra.addFlashAttribute("flash", flash);
			 return "redirect:/admin/news/add";
		 }
		 news.setPicture(fileName);
		 if (newsDAO.addItem(news) > 0) {
			 flash = new Flash("success", Defines.SUCCSESS);
			 ra.addFlashAttribute("flash", flash);
		 } else {
			 flash = new Flash("danger", Defines.ERROR);
			 ra.addFlashAttribute("flash", flash);
		 }
		 return "redirect:/admin/news";
	 }
	
	
	 @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	 public String del(@PathVariable("id") int id, RedirectAttributes ra) {
	 if (newsDAO.delItem(id) > 0) {
	 // Xóa tất cả các tin thuộc category đó
		 flash = new Flash("success", Defines.SUCCSESS);
		 ra.addFlashAttribute("flash", flash);
		 } else {
			 flash = new Flash("danger", Defines.ERROR);
			 ra.addFlashAttribute("flash", flash);
		 }
	 return "redirect:/admin/news";
	 }
	
	 @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	 public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		 News news = newsDAO.getItem(id);
		 modelMap.addAttribute("news", newsDAO.getItem(id));
		 modelMap.addAttribute("categories", categoryDAO.getItems());
		 return "admin.news.edit";
	 }
	 
	 @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	 public String edit(@PathVariable int id, @ModelAttribute("news") News news, @RequestParam("hinhanh") CommonsMultipartFile cmf,
			 HttpServletRequest request, RedirectAttributes ra) {
		 News newsOld = newsDAO.getItem(id);
		 String fileNameOld = newsOld.getPicture();
		 String fileNameNew = cmf.getOriginalFilename();
		 if (!"".equals(fileNameNew)) {
			 
			 // Xử lý upload file
			 String appPath = request.getServletContext().getRealPath("");
			 String dirPath = appPath + Defines.DIR_UPLOAD;
			 File dirFile = new File(dirPath);
			 if (!dirFile.exists()) {
				 dirFile.mkdirs();
			 }
			 String img[] = cmf.getContentType().split("/");
			 fileNameNew = "files_" + System.currentTimeMillis() + "." + img[1];
			 String filePath = dirPath + File.separator + fileNameNew;
			 
			 try {
				// Xóa hình ảnh cũ
				if (!"".equals(fileNameOld)) {
					File fileDel = new File(dirPath + File.separator + fileNameOld);
					fileDel.delete();
				}
				
				System.out.println(filePath);
				cmf.transferTo(new File(filePath));
			 } catch (IOException e) {
				 return "redirect:/admin/news";
			 }
		 } else {
			 fileNameNew = fileNameOld;
		 }
		 news.setPicture(fileNameNew);
		 news.setLid(id);
		 if (newsDAO.edit(news) > 0) {
			 flash = new Flash("success", Defines.SUCCSESS);
			 ra.addFlashAttribute("flash", flash);
		 } else {
			 flash = new Flash("danger", Defines.ERROR);
			 ra.addFlashAttribute("flash", flash);
		 }
		 return "redirect:/admin/news";
	 }
}
