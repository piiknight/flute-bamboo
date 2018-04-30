package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.MonthlyRevenue;

@Repository
public class MonthlyRevenueDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<MonthlyRevenue> getItems(int status) {
		String sql = "SELECT DATE_FORMAT(date_create, '%m-%Y') AS month, SUM(money) AS total FROM (  " + 
				"SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, uid , b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.status = ? " + 
				"GROUP BY d.bid " + 
				"ORDER BY d.bid DESC " + 
				") a  " + 
				"GROUP BY YEAR(date_create),  MONTH(date_create)   " + 
				"ORDER BY `a`.`date_create` ASC "; 
		return jdbcTemplate.query(sql, new Object[] { status}, new BeanPropertyRowMapper<MonthlyRevenue>(MonthlyRevenue.class));
	}
	
	public List<MonthlyRevenue> getItems(int status, int limit, String msg) {
		String sql = "SELECT DATE_FORMAT(date_create, '%Y-%m') AS month, SUM(money) AS total FROM (  " + 
				"SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, uid , b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.status = ? " + 
				"GROUP BY d.bid  " + 
				"ORDER BY d.bid DESC " + 
				") a " + 
				"WHERE DATE_FORMAT(date_create, '%Y-%m') >= ?  " + 
				"GROUP BY YEAR(date_create),  MONTH(date_create)   " + 
				"ORDER BY month ASC " + 
				"LIMIT ?";
		return jdbcTemplate.query(sql, new Object[] { status, msg, limit }, new BeanPropertyRowMapper<MonthlyRevenue>(MonthlyRevenue.class));
	}
	
	public int countMax() {
		String sql = "SELECT COUNT(*) FROM ( " + 
				"SELECT date_create FROM (  " + 
				"SELECT d.bid , SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS money,u.fullname,u.address, p.pname,b.status, b.date_create, uid , b.cid " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.status = 1 " + 
				"GROUP BY d.bid " +
				"ORDER BY d.bid DESC " + 
				") a " + 
				"GROUP BY YEAR(date_create),  MONTH(date_create) " + 
				"ORDER BY `a`.`date_create` ASC" + 
				") m ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	
	public int countMaxRun() {
		String sql = "SELECT TIMESTAMPDIFF(month, MIN(date_create), CURDATE()) + 1 AS count " + 
				"FROM bills " + 
				"WHERE bid in ( SELECT d.bid  " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"GROUP BY d.bid  " + 
				"ORDER BY d.bid DESC)";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public String monthYear(int step) {
		String sql = "SELECT DATE_FORMAT((DATE_SUB(now(), INTERVAL ? MONTH)), '%Y-%m') AS month FROM roles WHERE role_id = 1";
		return jdbcTemplate.queryForObject(sql, new Object[] { step }, String.class);
	}

	public List<MonthlyRevenue> getQuantity(int select, int max) {
		String sql = "SELECT DATE_FORMAT(b.date_create, '%m-%Y') AS month, SUM(d.quantity) AS total " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"GROUP BY YEAR(b.date_create),  MONTH(b.date_create) " + 
				"ORDER BY b.date_create ASC LIMIT ?, ?"; 
		return jdbcTemplate.query(sql, new Object[] { max - select, select }, new BeanPropertyRowMapper<MonthlyRevenue>(MonthlyRevenue.class));
	}
	
}
