package oneplusplus.administrator.pojo;

import java.math.BigDecimal;
import java.sql.Date;

public class Warehouse {
	private Integer warehouse_number;
	private String warehouse_type;
	private Integer commodity_number;
	private BigDecimal commodity_price;
	private Integer commodity_quantity;
	private String supplier;
	private String state;
	private Integer administrator_id;
	private Date creation_time;
	public Integer getWarehouse_number() {
		return warehouse_number;
	}
	public void setWarehouse_number(Integer warehouse_number) {
		this.warehouse_number = warehouse_number;
	}
	public String getWarehouse_type() {
		return warehouse_type;
	}
	public void setWarehouse_type(String warehouse_type) {
		this.warehouse_type = warehouse_type;
	}
	public Integer getCommodity_number() {
		return commodity_number;
	}
	public void setCommodity_number(Integer commodity_number) {
		this.commodity_number = commodity_number;
	}
	public BigDecimal getCommodity_price() {
		return commodity_price;
	}
	public void setCommodity_price(BigDecimal commodity_price) {
		this.commodity_price = commodity_price;
	}
	public Integer getCommodity_quantity() {
		return commodity_quantity;
	}
	public void setCommodity_quantity(Integer commodity_quantity) {
		this.commodity_quantity = commodity_quantity;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getAdministrator_id() {
		return administrator_id;
	}
	public void setAdministrator_id(Integer administrator_id) {
		this.administrator_id = administrator_id;
	}
	public Date getCreation_time() {
		return creation_time;
	}
	public void setCreation_time(Date creation_time) {
		this.creation_time = creation_time;
	}
}
