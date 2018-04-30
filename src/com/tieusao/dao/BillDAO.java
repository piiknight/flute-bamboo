package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Bill;

@Repository
public class BillDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Bill> getItems(int offset, int step) {
		String sql = "SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, b.uid, b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"GROUP BY d.bid " + 
				"ORDER BY d.bid DESC " +
				"LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] { offset, step }, new BeanPropertyRowMapper<Bill>(Bill.class));
	}
	
	public List<Bill> getItemsProfile(int offset, int step, int id) {
		String sql = "SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, b.uid, b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.uid = ? AND temp = 0 " + 
				"GROUP BY d.bid " + 
				"ORDER BY d.bid DESC " +
				"LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] { id, offset, step }, new BeanPropertyRowMapper<Bill>(Bill.class));
	}

	public int countItems() {
		String sql = "SELECT COUNT(*) " + 
				"FROM bills " + 
				"WHERE bid in ( SELECT d.bid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"GROUP BY d.bid " + 
				"ORDER BY d.bid DESC)";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public int countItemsProfile(int id) {
		String sql = "SELECT COUNT(*) " + 
				"FROM bills " + 
				"WHERE bid in ( SELECT d.bid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"WHERE b.uid = ? AND temp = 0 " +
				"GROUP BY d.bid " + 
				"ORDER BY d.bid DESC)";
		return jdbcTemplate.queryForObject(sql,  new Object[] { id }, Integer.class);
	}
	
	public int delItem(int id) {
		String sql = "DELETE FROM bills WHERE bid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}
	
	public int setTemp(int id) {
		String sql = "UPDATE bills SET temp = 1 WHERE bid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public Bill getItem(int bid) {
		String sql = "SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, b.uid, b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.bid = ? " +
				"GROUP BY d.bid ";
		return jdbcTemplate.queryForObject(sql, new Object[] { bid }, new BeanPropertyRowMapper<Bill>(Bill.class));
	}

	
}
