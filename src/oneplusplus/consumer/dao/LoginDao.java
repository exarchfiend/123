package oneplusplus.consumer.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.pojo.Consumer;

@Component
public class LoginDao implements LoginDaoInterface{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Consumer> get(Consumer c) {
		return jdbcTemplate.query("SELECT * FROM `consumer` WHERE username =? AND password=?", new RowMapper<Consumer>() {
			@Override
			public Consumer mapRow(ResultSet rs, int row) throws SQLException {
				Consumer consumer = new Consumer();
				consumer.setId(rs.getInt("id"));
				consumer.setUsername(rs.getString("username"));
				consumer.setAddress(rs.getString("address"));
				return consumer;
			}
		},c.getUsername(),c.getPassword());
	}
	
}
