package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Payment;

@Repository
public class PaymentDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Payment getItem(int pid) {
		try {
			String sql = "SELECT * FROM payment WHERE pid = ?";
			return jdbcTemplate.queryForObject(sql, new Object[] { pid }, new BeanPropertyRowMapper<Payment>(Payment.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public Payment getItem(String pname) {
		try {
			String sql = "SELECT * FROM payment WHERE pname = ?";
			return jdbcTemplate.queryForObject(sql, new Object[] { pname }, new BeanPropertyRowMapper<Payment>(Payment.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countPayments FROM payment";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<Payment> getItems(int offset, int step) {
		String sql = "SELECT * FROM payment ORDER BY pid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] { offset, step }, new BeanPropertyRowMapper<Payment>(Payment.class));
	}
	
	public int addItem(Payment payment) {
		String sql = "INSERT INTO payment(pname) VALUES(?)";
		return jdbcTemplate.update(sql, new Object[] { payment.getPname() });
	}
	
	public int delItem(int id) {
		String sql = "DELETE FROM payment WHERE pid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public int editItem(Payment payment) {
		String sql = "UPDATE codes SET pname = ? WHERE pid = ?";
		return jdbcTemplate.update(sql, new Object[] { payment.getPname(), payment.getPid() });
	}
	
}
