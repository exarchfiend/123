package oneplusplus.consumer.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.pojo.Commodity;

@Component
public class CommodityDao implements CommodityDaoInterface{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Commodity> get(Commodity m) {
		return jdbcTemplate.query("SELECT * FROM `commodity`", new RowMapper<Commodity>() {
            public Commodity mapRow(ResultSet rs, int row) throws SQLException {
            	Commodity stu = new Commodity();
            	stu.setCommodityNumber(rs.getString("commodity_number"));
            	stu.setCommodityName(rs.getString("commodity_name"));
            	stu.setCommodityPrice(rs.getBigDecimal("commodity_price"));
            	stu.setCommodityQuantity(rs.getInt("commodity_quantity"));
            	stu.setDetails(rs.getString("details"));
            	stu.setClassification(rs.getString("classification"));
            	stu.setState(rs.getString("state"));
                return stu;
            }
        });
	}
}