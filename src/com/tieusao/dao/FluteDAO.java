package com.tieusao.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tieusao.model.Flute;

@Repository
public class FluteDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Flute> getItemsPagination(int offset, int step) {
		String sql = "SELECT f.*, fl.name_fl FROM flute_list AS fl INNER JOIN flutes AS f ON fl.id_fl = f.id_fl "
				+ "ORDER BY f.id DESC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[] {offset, step }, new BeanPropertyRowMapper<Flute>(Flute.class));
	}
	
	public int countItems() {
		String sql = "SELECT COUNT(*) AS countItems FROM flute_list AS fl INNER JOIN flutes AS f ON fl.id_fl = f.id_fl ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<Flute> getItems(){
		String sql = "SELECT f.*, fl.name_fl FROM flute_list AS fl INNER JOIN flutes AS f ON fl.id_fl = f.id_fl ORDER BY f.id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Flute>(Flute.class));
	}
	
	public Flute getItem(String name_fl){
		String sql = "SELECT f.*, fl.name_fl FROM flute_list AS fl INNER JOIN flutes AS f ON fl.id_fl = f.id_fl WHERE name = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {name_fl } ,new BeanPropertyRowMapper<Flute>(Flute.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public Flute getItem(int id){
		String sql = "SELECT f.*, fl.name_fl FROM flute_list AS fl INNER JOIN flutes AS f ON fl.id_fl = f.id_fl WHERE id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] {id } ,new BeanPropertyRowMapper<Flute>(Flute.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public int addItem(Flute Flute) {
		String sql = "INSERT INTO flutes("
				+ "name, preview,"
				+ " detail, price,"
				+ " saleoff, picture,"
				+ " id_fl) VALUES(?, ?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, new Object[] {
				Flute.getName(), Flute.getPreview(),
				Flute.getDetail(), Flute.getPrice(),
				Flute.getSaleoff(), Flute.getPicture(),
				Flute.getId_fl()
				});
	}
	
	public int deleteItem(int id ) {
		String sql = "DELETE FROM flutes WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] {id });
	}
	
	public int editItem(Flute Flute) {
		String sql = "UPDATE flutes SET "
				+ "name = ?, preview = ?, "
				+ "detail = ?, price = ?,"
				+ "saleoff = ?, picture =? "
				+ "WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] {
				Flute.getName(), Flute.getPreview(),
				Flute.getDetail(), Flute.getPrice(),
				Flute.getSaleoff(), Flute.getPicture(),
				Flute.getId()
				});
	}
	
}
