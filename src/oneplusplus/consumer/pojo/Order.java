package oneplusplus.consumer.pojo;

import java.sql.Date;

public class Order {
	private Integer transactionNumber;
	private Integer commodityNumber;
	private Integer qurchaseQuantity;
	private Integer consumerId;
	private String paymentStatus;
	private Date transactionTime;
	public Integer getTransactionNumber() {
		return transactionNumber;
	}
	public void setTransactionNumber(Integer transactionNumber) {
		this.transactionNumber = transactionNumber;
	}
	public Integer getCommodityNumber() {
		return commodityNumber;
	}
	public void setCommodityNumber(Integer commodityNumber) {
		this.commodityNumber = commodityNumber;
	}
	public Integer getQurchaseQuantity() {
		return qurchaseQuantity;
	}
	public void setQurchaseQuantity(Integer qurchaseQuantity) {
		this.qurchaseQuantity = qurchaseQuantity;
	}
	public Integer getConsumerId() {
		return consumerId;
	}
	public void setConsumerId(Integer consumerId) {
		this.consumerId = consumerId;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public Date getTransactionTime() {
		return transactionTime;
	}
	public void setTransactionTime(Date transactionTime) {
		this.transactionTime = transactionTime;
	}
}
