package com.tieusao.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Revenue;

@Repository
public class RevenueDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Revenue getItem() {
		String sql = "SELECT SUM(d.quantity*f.price*(1-f.saleoff/100))* (1-c.percent/100) AS revenue, DATEDIFF(CURDATE(), MAX(b.date_create)) AS upload " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"WHERE b.status = 1 " + 
				"ORDER BY d.bid DESC";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Revenue>(Revenue.class));
	}
	
}
