package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Code;

@Repository
public class CodeDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Code getItem(String cname) {
		try {
			String sql = "SELECT * FROM codes WHERE cname = ?";
			return jdbcTemplate.queryForObject(sql, new Object[] { cname }, new BeanPropertyRowMapper<Code>(Code.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public Code getItem(int cid) {
		try {
			String sql = "SELECT * FROM codes WHERE cid = ?";
			return jdbcTemplate.queryForObject(sql, new Object[] { cid }, new BeanPropertyRowMapper<Code>(Code.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<Code> getItems() {
		String sql = "SELECT * FROM codes ORDER BY cid DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Code>(Code.class));
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countCodes "
				+ "FROM codes";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<Code> getItems(int offset, int step) {
		String sql = "SELECT * FROM codes ORDER BY cid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, step }, new BeanPropertyRowMapper<Code>(Code.class));
	}

	public int addItem(Code code) {
		String sql = "INSERT INTO codes(cname, quantity, percent) VALUES(?, ?, ?)";
		return jdbcTemplate.update(sql, new Object[] { code.getCname(), code.getQuantity(), code.getPercent() });
	}
	
	public int delItem(int id) {
		String sql = "DELETE FROM codes WHERE cid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public int editItem(Code code) {
		String sql = "UPDATE codes SET cname = ?, quantity = ?, percent = ? WHERE cid = ?";
		return jdbcTemplate.update(sql, new Object[] { code.getCname(), code.getQuantity(), code.getPercent(), code.getCid()});
	}
	
}
