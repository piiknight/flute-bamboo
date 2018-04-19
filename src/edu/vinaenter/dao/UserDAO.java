package edu.vinaenter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.model.User;

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
	
	public List<User> getItems(int offset) {
		String sql = "SELECT u.*, r.* FROM users AS u INNER JOIN roles AS r ON u.role_id = r.role_id ORDER BY u.id DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<User>(User.class));
	}

	 public int addItem(User user) {
	 String sql = "INSERT INTO users(username, password, fullname, role_id) VALUES(?, ?, ?, ?)";
	 return jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getFullname(), user.getRole_id() });
	 }

	public int delItem(int id) {
		String sql = "DELETE FROM users WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public int editItem(User user) {
		String sql = "UPDATE users SET fullname = ?, password = ?, role_id = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { user.getFullname(), user.getPassword(), user.getRole_id(), user.getId() });
	}

	public User getItem(int id) {
		String sql = "SELECT * FROM users WHERE id = ?";
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
