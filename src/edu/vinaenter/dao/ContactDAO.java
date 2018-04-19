package edu.vinaenter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import edu.vinaenter.constant.Defines;
import edu.vinaenter.model.Contact;

@Repository
public class ContactDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	 public int addItem(Contact contact) {
	 String sql = "INSERT INTO vnecontact(fullname, email, subject, content) VALUES(?, ?, ?, ?)";
	 return jdbcTemplate.update(sql, new Object[] { contact.getFullname(), contact.getEmail(), contact.getSubject(), contact.getContent() });
	 }
	 
	 public int countItems() {
		String sql = "SELECT COUNT(*) AS countContact "
				+ "FROM vnecontact";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	 
	 public List<Contact> getItems(int offset) {
		String sql = "SELECT * FROM vnecontact"
				+ " ORDER BY cid DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<Contact>(Contact.class));
	}
	 
    public int delItem(int id) {
		String sql = "DELETE FROM vnecontact WHERE cid = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}
	 
}
