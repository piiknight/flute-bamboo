package edu.vinaenter.controller;

import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.dao.CategoryDAO;
import edu.vinaenter.dao.NewsDAO;
import edu.vinaenter.model.Category;
import edu.vinaenter.model.News;
import edu.vinaenter.util.SlugUtil;
import edu.vinaenter.util.StringUtil;

@Controller
public class PublicLandController {

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	NewsDAO newsDAO;
	
	@Autowired
	Defines defines;
	
	@Autowired
	StringUtil stringUtil;
	
	@Autowired
	SlugUtil slugUtil;

	@ModelAttribute
	public void addCommonsObject(ModelMap modelMap) {
		LinkedHashMap<Category, Integer> itemsCat = new LinkedHashMap<>();
		List<Category> cats = categoryDAO.getItems();
		for (Category category : cats) {
			itemsCat.put(category, newsDAO.countItems(category.getCid()));
		}

		LinkedHashMap<Category, Integer> hotItemsCat = new LinkedHashMap<>();
		List<Category> hotCats = categoryDAO.getHotItems();
		for (Category category : hotCats) {
			hotItemsCat.put(category, newsDAO.countItems(category.getCid()));
		}

		modelMap.addAttribute("itemsCat", itemsCat);
		modelMap.addAttribute("hotItemsCat", hotItemsCat);
		modelMap.addAttribute("hotItemsNews", newsDAO.getHotItems());
		modelMap.addAttribute("newItemsNews", newsDAO.getNewItems());
		modelMap.addAttribute("stringUtil", stringUtil);
		modelMap.addAttribute("slugUtil", slugUtil);
		modelMap.addAttribute("defines", defines);
	}

	@RequestMapping(value = { "", "page/{page}" })
	public String index(@PathVariable(required = false) Integer page, ModelMap modelMap) {
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
		modelMap.addAttribute("listSlide", newsDAO.getItemsSlide());
		return "public.land.index";
	}

	//cland/the-gioi-1.html
	@RequestMapping("/{slug}-{id}.htm")
	public String cat(@PathVariable("id") int id, ModelMap modelMap) {
		List<News> listNews = newsDAO.getItemsByCid(id);
		modelMap.addAttribute("listNews", listNews);
		modelMap.addAttribute("titleCat", categoryDAO.getItem(id).getCname());
		
		Category categoryNext = categoryDAO.getItemNext(id);
		if (categoryNext == null) {
			categoryNext = categoryDAO.getItemNext(0);
		}
		Category categoryPrevious = categoryDAO.getItemPrevious(id);
		if (categoryPrevious == null) {
			categoryPrevious = categoryDAO.getMaxItem();
		}
		modelMap.addAttribute("categoryNext", categoryNext);
		modelMap.addAttribute("categoryPrevious", categoryPrevious);
		return "public.land.cat";
	}

	@RequestMapping("/{category}/{slug}-{id}.htm")
	public String detail(@PathVariable int id, ModelMap modelMap) {
		News newsNext = newsDAO.getItemNext(id);
		if (newsNext == null) {
			newsNext = newsDAO.getItemNext(0);
		}
		News newsPrevious = newsDAO.getItemPrevious(id);
		if (newsPrevious == null) {
			newsPrevious = newsDAO.getMaxItem();
		}
		modelMap.addAttribute("newsNext", newsNext);
		modelMap.addAttribute("newsPrevious", newsPrevious);
		modelMap.addAttribute("news", newsDAO.getItem(id));
		modelMap.addAttribute("newsInvolve", newsDAO.getItemsInvolve(id));
		return "public.land.detail";
	}
	
	@RequestMapping(value = { "/search", "/search/page/{page}" }, method=RequestMethod.GET)
	public String search(@ModelAttribute("search") String search, @PathVariable(value="page", required = false) Integer page, 
			ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}
		int totalNews = newsDAO.countItemsSearch(search);
		int sumPages = (int) Math.ceil((float) totalNews / Defines.ROW_COUNT_AMIN);
		int offset = (page - 1) * Defines.ROW_COUNT_AMIN;
		List<News> listNews = newsDAO.getItemsSearch(offset, search);
		int pageStart, pageEnd;
		int pageNum = Defines.GROUP_PAGE_AMIN;
		int linkPage = (int) Math.floor((float) page / 2);

		modelMap.addAttribute("listNews", listNews);

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
		modelMap.addAttribute("listSlide", newsDAO.getItemsSlide());
		return "public.land.search";
	}
	
}
