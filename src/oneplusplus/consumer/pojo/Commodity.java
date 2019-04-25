package oneplusplus.consumer.pojo;

import java.math.BigDecimal;

public class Commodity {
	private String commodityNumber;
	private String commodityName;
	private BigDecimal commodityPrice;
	private Integer commodityQuantity;
	private String details;
	private String classification;
	private String state;
	public String getCommodityNumber() {
		return commodityNumber;
	}
	public void setCommodityNumber(String commodityNumber) {
		this.commodityNumber = commodityNumber;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public BigDecimal getCommodityPrice() {
		return commodityPrice;
	}
	public void setCommodityPrice(BigDecimal commodityPrice) {
		this.commodityPrice = commodityPrice;
	}
	public Integer getCommodityQuantity() {
		return commodityQuantity;
	}
	public void setCommodityQuantity(Integer commodityQuantity) {
		this.commodityQuantity = commodityQuantity;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
