package oneplusplus.consumer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.dao.OrderDaoInterface;
import oneplusplus.consumer.pojo.Order;

@Component
public class OrderService implements OrderServiceInterface{
	
	@Autowired
	OrderDaoInterface orderDaoInterface;

	@Override
	public List<Order> get(Order order) {
		return orderDaoInterface.get(order);
	}
	
}
