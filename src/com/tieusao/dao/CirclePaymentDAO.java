package com.tieusao.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.CirclePayment;

@Repository
public class CirclePaymentDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<CirclePayment> getItems() {
		String sql = "SELECT bills.pid, payment.pname, COUNT(bid) AS count " + 
				"FROM bills INNER JOIN payment ON bills.pid = payment.pid " + 
				"WHERE bid in ( SELECT d.bid  " + 
				"FROM bill_detail AS d INNER JOIN flutes AS f ON f.id = d.fid  " + 
				"INNER JOIN bills AS b ON d.bid = b.bid  " + 
				"INNER JOIN users AS u ON u.id = b.uid " + 
				"INNER JOIN codes AS c ON c.cid = b.cid " + 
				"INNER JOIN payment AS p ON p.pid = b.pid " + 
				"GROUP BY d.bid  " + 
				"ORDER BY d.bid DESC) " + 
				"GROUP BY pid";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<CirclePayment>(CirclePayment.class));
	}
	
}
