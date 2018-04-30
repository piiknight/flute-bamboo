package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Role;

@Repository
public class RoleDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Role> getItems() {
		String sql = "SELECT * FROM roles ORDER BY role_id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Role>(Role.class));
	}
	
	public Role getItem(String name) {
		String sql = "SELECT * FROM roles WHERE name = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { name}, new BeanPropertyRowMapper<Role>(Role.class));
	}
	
	
}
