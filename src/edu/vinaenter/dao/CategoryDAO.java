package edu.vinaenter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.model.Category;
import edu.vinaenter.model.News;

@Repository
public class CategoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Category> getItems(int offset) {
		String sql = "SELECT * FROM categories"
				+ " ORDER BY cid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<Category>(Category.class));
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countCats "
				+ "FROM categories";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public List<Category> getItems() {
		String sql = "SELECT * FROM categories ORDER BY cid DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}
	
	public List<Category> getHotItems() {
		String sql = "SELECT c.*, sum(count_views) AS countGroup FROM lands AS l "
				+ "INNER JOIN categories AS c ON l.cid = c.cid "
				+ "GROUP BY l.cid "
				+ "ORDER BY countGroup DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}		
			
	public int addItem(Category category) {
		String sql = "INSERT INTO categories(cname) VALUES(?)";
		return jdbcTemplate.update(sql, new Object[] { category.getCname() });
	}

	public int delItem(int id) {
		String sql = "DELETE FROM categories WHERE cid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}
	
	public int editItem(Category category) {
		String sql = "UPDATE categories SET cname = ? WHERE cid = ?";
		return jdbcTemplate.update(sql, new Object[] { category.getCname(), category.getCid() });
	}

	public Category getItem(int id) {
		String sql = "SELECT * FROM categories WHERE cid = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper<Category>(Category.class));
	}

}
