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
public class RegisterDao implements RegisterDaoInterface{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int register(Consumer c) {
		return jdbcTemplate.update("insert into consumer (username,password) values (?,?)",c.getUsername(),c.getPassword());
	}

	@Override
	public List<Consumer> get(Consumer c) {
		return jdbcTemplate.query("SELECT * FROM `consumer` WHERE username =?", new RowMapper<Consumer>() {
			@Override
			public Consumer mapRow(ResultSet rs, int row) throws SQLException {
				Consumer consumer = new Consumer();
				consumer.setId(rs.getInt("id"));
				consumer.setUsername(rs.getString("username"));
				consumer.setPassword(rs.getString("password"));
				consumer.setAddress(rs.getString("address"));
				return consumer;
			}
		},c.getUsername());
	}
}
