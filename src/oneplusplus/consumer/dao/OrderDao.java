package oneplusplus.consumer.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.pojo.Order;

@Component
public class OrderDao implements OrderDaoInterface{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Order> get(Order order) {
		return jdbcTemplate.query("", new RowMapper<Order>() {

			@Override
			public Order mapRow(ResultSet rs, int row) throws SQLException {
				Order order = new Order();
				return order;
			}
			
		});
	}

}
