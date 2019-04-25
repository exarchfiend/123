package oneplusplus.consumer.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.pojo.Cart;

@Component
public class CartDao implements CartDaoInterface{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Cart> get(Cart cart) {
		return jdbcTemplate.query("SELECT * FROM `cart`", new RowMapper<Cart>() {
			@Override
			public Cart mapRow(ResultSet rs, int row) throws SQLException {
				Cart cart = new Cart();
				cart.setCommodityNumber(rs.getInt("commodity_number"));
				cart.setConsumerId(rs.getInt("consumer_id"));
				cart.setSelectNumber(rs.getInt("selected_number"));
				return cart;
			}
			
		});
	}

}
