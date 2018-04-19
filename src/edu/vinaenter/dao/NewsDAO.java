package edu.vinaenter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.model.News;

@Repository
public class NewsDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<News> getItems() {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid ORDER BY l.lid DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public List<News> getItemsSlide() {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid ORDER BY l.count_views DESC LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public List<News> getItemsByCid(int id) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid WHERE c.cid = ? "
				+ "ORDER BY l.lid DESC";
		return jdbcTemplate.query(sql, new Object[] {id}, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public List<News> getNewItems() {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid ORDER BY l.lid DESC LIMIT 5";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public List<News> getItemsInvolve(int id) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid WHERE l.lid != ?"
				+ " ORDER BY l.lid DESC LIMIT 3";
		return jdbcTemplate.query(sql, new Object[] {id}, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public List<News> getHotItems() {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid ORDER BY l.count_views DESC LIMIT 5";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public News getItem(int id) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid WHERE l.lid = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<News>(News.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public News getItemNext(int id) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid WHERE lid > ? LIMIT 1";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<News>(News.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public News getMaxItem() {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid ORDER BY l.lid DESC LIMIT 1";
		try {
			return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<News>(News.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public News getItemPrevious(int id) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid WHERE l.lid < ? ORDER BY lid DESC LIMIT 1";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<News>(News.class));
		} catch (Exception e) {
			return null;
		}
	}

	public List<News> getItems(int offset) {
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid"
				+ " ORDER BY l.lid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countItems "
				+ "FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<News> getItemsSearch(int offset, String search) {
		search = "%" + search + "%";
		String sql = "SELECT l.*, c.cname FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid"
				+ " WHERE l.lname LIKE (?) OR l.description LIKE (?)"
				+ " ORDER BY l.lid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {search, search, offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<News>(News.class));
	}
	
	public int countItemsSearch(String search) {
		search = "%" + search + "%";
		String sql = "SELECT COUNT(*) AS countItems "
				+ "FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid "
				+ "WHERE l.lname LIKE (?) OR l.description LIKE (?)";
		return jdbcTemplate.queryForObject(sql, new Object[] {search, search } ,Integer.class);
	}
	
	public int countItems(int id) {
		String sql = "SELECT COUNT(*) AS countItems "
				+ "FROM lands AS l INNER JOIN categories AS c ON l.cid = c.cid"
				+ " WHERE l.cid = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] {id }, Integer.class);
	}

	public int edit(News news) {
		String sql = "UPDATE lands SET "
				+ "lname = ?, description = ?, "
				+ "cid = ?, picture = ?, "
				+ "area = ?, address = ? "
				+ "WHERE lid = ?";
		return jdbcTemplate.update(sql, new Object[] {
				news.getLname(), news.getDescription(),
				news.getCid(), news.getPicture(),
				news.getArea(), news.getAddress(),
				news.getLid() 
				});
	}

	public int addItem(News news) {
		String sql = "INSERT INTO lands(lname, description, cid, picture, area, address) VALUES(?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, new Object[] {news.getLname(), news.getDescription(), news.getCid(),
				news.getPicture(), news.getArea(), news.getAddress() 
				});
	}

	public int delItem(int id) {
		String sql = "DELETE FROM lands WHERE lid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}
	

}
