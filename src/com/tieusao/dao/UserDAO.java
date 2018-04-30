package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.User;
import com.tieusao.model.UserPassword;
import com.tieusao.model.UserProfile;

@Repository
public class UserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countUsers "
				+ "FROM users";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public List<User> getItems() {
		String sql = "SELECT u.*, r.* FROM users AS u INNER JOIN roles AS r ON u.role_id = r.role_id";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
	}
	
	public List<User> getItems(int offset, int step) {
		String sql = "SELECT u.*, r.* FROM users AS u INNER JOIN roles AS r ON u.role_id = r.role_id ORDER BY u.id DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, step }, new BeanPropertyRowMapper<User>(User.class));
	}

	 public int addItem(User user) {
	 String sql = "INSERT INTO users(username, password, fullname, phone, email, address, role_id, enable) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	 return jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getFullname(),user.getPhone(), user.getEmail() , user.getAddress(), user.getRole_id(), 1 });
	 }

	public int delItem(int id) {
		String sql = "DELETE FROM users WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public int editItem(User user) {
		String sql = "UPDATE users SET fullname = ?, password = ?, phone = ?, email = ?,  role_id = ?, address = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { user.getFullname(), user.getPassword(), user.getPhone(), user.getEmail(), user.getRole_id(), user.getAddress(), user.getId() });
	}
	
	public int editItem(UserProfile user) {
		String sql = "UPDATE users SET fullname = ?, phone = ?, email = ?,  role_id = ?, address = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { user.getFullname(), user.getPhone(), user.getEmail(), user.getRole_id(), user.getAddress(), user.getId() });
	}

	public int editPassword(UserPassword user) {
		String sql = "UPDATE users SET password = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { user.getPassword(), user.getId() });
	}
	
	public User getItem(int id) {
		String sql = "SELECT u.*, r.* FROM users AS u INNER JOIN roles AS r ON u.role_id = r.role_id WHERE  u.id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<User>(User.class));
	}
	
	public User getItem(String username) {
		try {
			String sql = "SELECT u.*, r.* FROM users AS u INNER JOIN roles AS r ON u.role_id = r.role_id WHERE u.username = ?";
			return jdbcTemplate.queryForObject(sql, new Object[] { username }, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			return null;
		}
	}

}
