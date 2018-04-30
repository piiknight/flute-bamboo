package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.BillDetail;

@Repository
public class BillDetailDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<BillDetail> getItems(int bid) {
		String sql = "SELECT d.did, f.id, f.name, d.quantity, f.price, f.saleoff, d.quantity*f.price*(1-f.saleoff/100) AS total " + 
				"FROM flutes AS f INNER JOIN bill_detail AS d ON f.id = d.fid " + 
				"WHERE d.bid = ?";
		return jdbcTemplate.query(sql, new Object[] { bid }, new BeanPropertyRowMapper<BillDetail>(BillDetail.class));
	}
	
}
