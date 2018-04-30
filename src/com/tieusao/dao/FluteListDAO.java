package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.constant.Defines;
import com.tieusao.model.FluteList;

@Repository
public class FluteListDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<FluteList> getItems(){
		String sql = "SELECT * FROM flute_list ORDER BY id_fl DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<FluteList>(FluteList.class));
	}
	
	public FluteList getItem(String name_fl){
		String sql = "SELECT * FROM flute_list WHERE name_fl = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {name_fl } ,new BeanPropertyRowMapper<FluteList>(FluteList.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public FluteList getItem(int id){
		String sql = "SELECT * FROM flute_list WHERE id_fl = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {id } ,new BeanPropertyRowMapper<FluteList>(FluteList.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public int addItem(FluteList fluteList) {
		String sql = "INSERT INTO flute_list(name_fl, preview_text, detail_text, picture) VALUES(?, ?, ?, ?)";
		return jdbcTemplate.update(sql, new Object[] {fluteList.getName_fl(), fluteList.getPreview_text(), fluteList.getDetail_text(), fluteList.getPicture()});
	}
	
	public int deleteItem(int id ) {
		String sql = "DELETE FROM flute_list WHERE id_fl = ?";
		return jdbcTemplate.update(sql, new Object[] {id });
	}
	
	public int editItem(FluteList fluteList) {
		String sql = "UPDATE flute_list SET "
				+ "name_fl = ?, preview_text = ?, "
				+ "detail_text = ?, picture = ? "
				+ "WHERE id_fl = ?";
		return jdbcTemplate.update(sql, new Object[] {
				fluteList.getName_fl(), fluteList.getPreview_text(),
				fluteList.getDetail_text(), fluteList.getPicture(),
				fluteList.getId_fl()
				});
	}
	
	public List<FluteList> getItemsPagination(int offset) {
		String sql = "SELECT * FROM flute_list"
				+ " ORDER BY id_fl DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, Defines.ROW_COUNT_AMIN }, new BeanPropertyRowMapper<FluteList>(FluteList.class));
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countItems "
				+ "FROM flute_list ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
}
